using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class PlaceSuggestionPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string place = TextBox1.Text;
        StringBuilder ans = new StringBuilder();
        StringBuilder sb = new StringBuilder();
        sb.Append("http://webstrar7.fulton.asu.edu/page7/service1.svc/GetPlace?place=");
        sb.Append(place);
        WebRequest req = WebRequest.Create(sb.ToString());
        req.Method = "GET";
        HttpWebResponse resp = req.GetResponse() as HttpWebResponse;
        if (resp.StatusCode == HttpStatusCode.OK)
        {
            using (Stream respStream = resp.GetResponseStream())
            {
                XmlDocument document = new XmlDocument();
                using (XmlReader reader2 = XmlReader.Create(respStream))
                {
                    document.Load(reader2);
                    XmlNodeList placesList = document.GetElementsByTagName("string");
                    System.Diagnostics.Debug.Print(placesList.Count.ToString());
                    int count = 1;
                    for (int i = 0; i < placesList.Count; i++)
                    {
                        if (count % 4 == 2 || count % 4 == 0)
                        {
                            ans.Append(placesList.Item(i).InnerText);
                            ans.Append("\t");
                        }
                        if (count % 4 == 0)
                        {
                            ans.Append("\r\n");
                        }
                        count++;
                    }
                }
            }
        }
        else
        {
            Label2.Text = "No Places Found. Try Something else";
        }

        Label2.Text = ans.ToString().Replace(Environment.NewLine, "<br />");
    }
}