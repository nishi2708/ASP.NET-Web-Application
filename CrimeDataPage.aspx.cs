using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CrimeDataPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        String latLon = TextBox2.Text;
        String[] arr = latLon.Split(',');
        decimal lat, lon;
        Decimal.TryParse(arr[0], out lat);
        Decimal.TryParse(arr[1], out lon);
        ServiceReference2.Service1Client myClient = new ServiceReference2.Service1Client();
        //bool b = true;
        int no = 0;
        try
        {
            no = myClient.Crimedata(lat, lon);
        }
        catch (FaultException msg)
        {
            Label4.Text = msg.Message;
        }

        if (no == -1)
        {
            Label4.Text = "Please Enter Latitude and Longitude for Valid Place in USA. Data for this latitude and longitude does not exists.";
        }
        else
        {
            String num = no.ToString();
            Label4.Text = num;
        }
    }
}