using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class MemberLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
     }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            var path = Server.MapPath(@"Member.xml");
            XmlDocument doc1 = new XmlDocument();
            doc1.Load(path);

            XmlNodeList nodelist = doc1.SelectNodes("/Members/Member");
            Boolean found = false;

            foreach (XmlNode node in nodelist) // for each <testcase> node
            {
                
                if ((node.SelectSingleNode("Email").InnerText).Trim().Equals((TextBox1.Text).Trim()))
                {
                    //Label1.Text = " Record is found" + " for " + TextBox1.Text + ":" + node.SelectSingleNode("Password").InnerText;
                    found = true;
                    string password = Password1.Text;
                    string decrypt = EncryptionDecryption.Class1.decrypt((node.SelectSingleNode("Password").InnerText).Trim());
                    if (decrypt.Equals(password)){
                        Session["email"] = TextBox1.Text;
                        Session["name"] = node.SelectSingleNode("Name").FirstChild.InnerText;
                        Session["username"] = null;
                        Response.Redirect("MemberHome.aspx");
                    }else
                    {
                        Label1.Text = "Credentials are not matching, Please re-enter password";
                    }
                    
                   

                }



            }
            if (!found)
            {
                Label1.Text = "Record is not found, Please signup first";
            }
        }

        catch
        {
            Label1.Text = "Error in Parsing";
        }
    }

   
}