using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class nearByStore : System.Web.UI.Page
{
    public class History
    {
        public string Time;
        public string Zipcode;
        public string Store;


        public History(string time, string zipcode, string store)
        {
            Time = time;
            Zipcode = zipcode;
            Store = store;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        History ahist1;
        HttpCookie myCookies = Request.Cookies["myCookieId"];
        if ((myCookies == null) || (myCookies["Name"] == ""))
        {
            Label5.Text = "Welcome, new user";
        }
        else
        {
            Label5.Text = "Welcome " + myCookies["Name"] + ", ";
            Label5.Text += "\nLast time you had searched for zipcode:" + myCookies["Zipcode"] + " and store:" + myCookies["Store"];
        }
        int num = Session.Count;
        System.Diagnostics.Debug.Print(num.ToString());
        if ((Session.Count != 0) && (ListBox1.Items.Count == 0))
        {

            while (num > 0)
            {
                string catalogKey = "sHist" + num;
                History ahist2 = (History)Session[catalogKey];
                ListBox1.Items.Add(ahist2.Store + " " + ahist2.Time);
                num--;
            }


        }


    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            HttpCookie myCookies = new HttpCookie("myCookieId");
            myCookies["Zipcode"] = TextBox2.Text;
            myCookies["Store"] = TextBox3.Text;
            myCookies["Name"] = TextBox4.Text;
            myCookies.Expires = DateTime.Now.AddMonths(6);
            Response.Cookies.Add(myCookies);
            ServiceReference3.Service1Client store = new ServiceReference3.Service1Client();
            Label4.Text = store.findStore(TextBox2.Text, TextBox3.Text);

            string time = DateTime.Now.ToString("HH:mm:ss tt").ToString();
            string zipcode = TextBox2.Text;
            string storeHistory = TextBox3.Text;

            History hist = new History(time, zipcode, storeHistory);
            string num = Convert.ToString(Session.Count + 1); // Find the next free spot
            string catalogKey = "sHist" + num;  // Form the index key for next session spot
            System.Diagnostics.Debug.Print(catalogKey);
            Session[catalogKey] = hist; // Add an object into session state 
            

        }
        catch
        {
            Label4.Text = "Please enter valid input";
        }

    }
}