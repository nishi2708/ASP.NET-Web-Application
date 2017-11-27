using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LyricsServicePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string title = TextBox2.Text;
        string ans = "";
        StringBuilder sb = new StringBuilder();
        sb.Append("http://webstrar7.fulton.asu.edu/page7/service1.svc/GetLyrics?title=");
        sb.Append(title);
        WebRequest req = WebRequest.Create(sb.ToString());
        req.Method = "GET";
        HttpWebResponse resp = req.GetResponse() as HttpWebResponse;
        if (resp.StatusCode == HttpStatusCode.OK)
        {
            using (Stream respStream = resp.GetResponseStream())
            {
                StreamReader reader = new StreamReader(respStream);
                ans = reader.ReadToEnd();
            }
        }
        else
        {
            Label3.Text = "No Lyrics Found. Try Something else";
        }
        Label3.Text = ans.Replace("\n", "<br />").Replace("\t", "&nbsp;");

    }
}