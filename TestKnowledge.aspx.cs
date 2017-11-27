using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class TestKnowledge : System.Web.UI.Page
{
    static Boolean isGK = false;
    static string[] quiz_Q = new string[2];
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    WebClient channel = new WebClient();

    protected void Button1_Click(object sender, EventArgs e)
    {
        isGK = false;
        try
        {
            Uri baseUri = new Uri("http://webstrar7.fulton.asu.edu/page10/Service1.svc/generateEquation");
            byte[] abc = channel.DownloadData(baseUri);
            Stream strm = new MemoryStream(abc);
            DataContractSerializer obj = new DataContractSerializer(typeof(string));
            string equation = obj.ReadObject(strm).ToString();
            //ServiceReference1.Service1Client quiz = new ServiceReference1.Service1Client();
            Label4.Text = "Find the value of x for :";

            Label1.Text = equation;
        }
        catch
        {
            Label1.Text = "Not able to reach service. Please provide correct input";
        }
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        if (isGK)
        {
            if (TextBox1.Text.Equals(quiz_Q))
                Label2.Text = "Your answer is correct";
            else
                Label2.Text = "INCORRECT -> Correct answer is:" + quiz_Q[1];
        }
        else
        {

            Uri baseUri = new Uri("http://webstrar7.fulton.asu.edu/page10/Service1.svc/SolveEquation?value=" + Label1.Text);
            byte[] abc = channel.DownloadData(baseUri);
            Stream strm = new MemoryStream(abc);
            DataContractSerializer obj = new DataContractSerializer(typeof(string));
            string x_value = obj.ReadObject(strm).ToString();

            //ServiceReference1.Service1Client quiz = new ServiceReference1.Service1Client();
            string ans = x_value;
            Label2.Text = "Correct answer is :" + ans;
        }




    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        isGK = true;
        string ans = "";
        HttpWebRequest request = (HttpWebRequest)WebRequest.Create("http://webstrar7.fulton.asu.edu/page10/Service1.svc/getGKQuestion");
        try
        {
            using (HttpWebResponse respone = (HttpWebResponse)request.GetResponse())
            {
                if (respone.StatusCode != HttpStatusCode.OK)
                {
                    Label4.Text = "";
                    Label1.Text = "";
                    return;

                }
                using (Stream resp = respone.GetResponseStream())
                {
                    XmlDocument document = new XmlDocument();
                    using (XmlReader reader2 = XmlReader.Create(resp))
                    {
                        document.Load(reader2);
                        XmlNodeList placesList = document.GetElementsByTagName("string");
                        ans = placesList[0].InnerText;
                        quiz_Q[1] = placesList[1].InnerText;
                    }
                }
                Label1.Text = ans;
                Label4.Text = "";
            }
        }
        catch
        {
            Label1.Text = "Please enter valid input";
        }
    }


}