using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WeatherServicePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String zipcode = TextBox1.Text;
        ServiceReference2.Service1Client myClient = new ServiceReference2.Service1Client();
        ArrayList weatherReport = new ArrayList(myClient.Weather5day(zipcode));
        string report = "";
        string report2 = "";
        int i = 0;
        //System.Diagnostics.Debug.WriteLine("hereeeeeeeeeeeeee");
        if (weatherReport[i].Equals("Point is not on NDFD grid"))
        {
            Label1.Text = (string)weatherReport[0];
            Label14.Text = "Enter a Valid Zipcode of USA";
        }
        else
        {
            while (i < weatherReport.Count && !weatherReport[i].Equals("Daily Minimum Temperature"))
            {
                report = report + " " + weatherReport[i];
                System.Diagnostics.Debug.WriteLine(report);
                i++;
            }
            while (i < weatherReport.Count)
            {
                report2 = report2 + " " + weatherReport[i];
                i++;
            }
            Label1.Text = report;
            Label14.Text = report2;
        }
    }
}