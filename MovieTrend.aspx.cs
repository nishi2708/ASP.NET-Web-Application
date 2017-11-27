using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class MovieTrend : System.Web.UI.Page
{
    static string[] quiz_Q = new string[2];
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        try
        {
            string[] details = new string[5];
            string ans = "";
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://webstrar7.fulton.asu.edu/page10/Service1.svc/GetMoreDetails?name=" + TextBox2.Text);
            using (HttpWebResponse respone = (HttpWebResponse)request.GetResponse())
            {
                using (Stream resp = respone.GetResponseStream())
                {
                    XmlDocument document = new XmlDocument();
                    using (XmlReader reader2 = XmlReader.Create(resp))
                    {
                        document.Load(reader2);
                        XmlNodeList placesList = document.GetElementsByTagName("string");
                        ans = placesList[0].InnerText;
                        quiz_Q[1] = placesList[1].InnerText;
                        for (int i = 0; i < placesList.Count; i++)
                        {
                            details[i] = placesList[i].InnerText;
                        }
                    }
                }
            }
            Label6.Text = "";
            //ServiceReference2.Service1Client movies = new ServiceReference2.Service1Client();
            //string[] details = movies.GetMoreDetails(TextBox2.Text);
            if (details[0] == null)
            {
                Label6.Text = "Please enter correct name for movie";
            }
            else
            {
                Label6.Text = "Popularity: " + details[0] + "</br>Original Language: " + details[1] + "</br>Overview: " + details[3] + "</br>Release Date :" + details[4];
            }


        }
        catch
        {
            Label3.Text = "Please enter valid input";
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        try
        {
            string ans = "";
            Label3.Text = "";
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://webstrar7.fulton.asu.edu/page10/Service1.svc/GetData?genre=" + DropDownList1.SelectedValue);
            using (HttpWebResponse respone = (HttpWebResponse)request.GetResponse())
            {
                using (Stream resp = respone.GetResponseStream())
                {
                    XmlDocument document = new XmlDocument();
                    using (XmlReader reader2 = XmlReader.Create(resp))
                    {
                        document.Load(reader2);
                        XmlNodeList placesList = document.GetElementsByTagName("string");
                        ans = placesList[0].InnerText;
                        quiz_Q[1] = placesList[1].InnerText;
                        for (int i = 0; i < placesList.Count; i++)
                        {
                            Label3.Text += placesList[i].InnerText + "</br>";
                        }
                    }
                }
            }
            //ServiceReference2.Service1Client movies = new ServiceReference2.Service1Client();


        }
        catch
        {
            Label3.Text = "Please enter valid input";
        }

    }
}