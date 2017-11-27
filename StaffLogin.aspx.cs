using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class StaffLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            var path = Server.MapPath(@"Staff.xml");
            XmlDocument doc1 = new XmlDocument();
            doc1.Load(path);

            XmlNodeList nodelist = doc1.SelectNodes("/Staff/Person");
            Boolean found = false;

            foreach (XmlNode node in nodelist) // for each <testcase> node
            {

                if ((node.SelectSingleNode("Username").InnerText).Trim().Equals((TextBox1.Text).Trim()))
                {
                    //Label1.Text = " Record is found" + " for " + TextBox1.Text + ":" + node.SelectSingleNode("Password").InnerText;
                    found = true;
                    string password = Password1.Text;
                    if ((node.SelectSingleNode("Password").InnerText).Trim().Equals(EncryptionDecryption.Class1.encrypt(password)))
                    {
                        Session["username"] = TextBox1.Text;
                        Session["email"] = null;
                        Response.Redirect("StaffHome.aspx");
                    }
                    else
                    {
                        Label1.Text = "Credentials are not matching, Please re-enter password";
                    }



                }



            }
            if (!found)
            {
                Label1.Text = "Record is not found, Please contact Admin to add the username";
            }
        }

        catch
        {
            Label1.Text = "Error in Parsing";
        }
    }
}