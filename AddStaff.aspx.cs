using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class AddStaff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string password = TextBox3.Text;
            string cpassword = TextBox4.Text;
            if (string.IsNullOrEmpty(TextBox2.Text))
            {
                Label1.Text = "Username Cannot be Empty!";
                return;
            }
            if (string.IsNullOrEmpty(TextBox3.Text))
            {
                Label1.Text = "Password Cannot be Empty!";
                return;
            }
            if (password.Length < 6)
            {
                Label1.Text = "Length of Password should be greater than 6 characters!";
                return;
            }
            if (!password.Equals(cpassword))
            {
                Label1.Text = "Password does not match. Please confirm correct password!";
                return;
            }
            System.Diagnostics.Debug.Print("hereeeee");
            var path = Server.MapPath(@"Staff.xml");
            XmlDocument doc1 = new XmlDocument();
            doc1.Load(path);

            XmlNodeList nodelist = doc1.SelectNodes("/Staff/Person");
            Boolean found = false;
            foreach (XmlNode node in nodelist) // for each <testcase> node
            {
                if ((node.SelectSingleNode("Username").InnerText).Trim().Equals((TextBox2.Text).Trim()))
                {
                    Label1.Text = " This Username Already Exists!";
                    found = true;
                    return;
                }
            }
            if (!found)
            {
                XmlDocument xd = new XmlDocument();
                var memberPath = Server.MapPath(@"Staff.xml");
                xd.Load(memberPath);

                XmlNode rootNode = xd.DocumentElement;
                XmlNode MemberPathNode = xd.CreateElement("Person");
                rootNode.AppendChild(MemberPathNode);
                XmlNode NameNode = xd.CreateElement("Username");
                NameNode.InnerText = TextBox2.Text; // email ids

                MemberPathNode.AppendChild(NameNode);
                XmlNode PassNode = xd.CreateElement("Password");
                string encrypt = EncryptionDecryption.Class1.encrypt(TextBox3.Text);
                PassNode.InnerText = encrypt; // password
                MemberPathNode.AppendChild(PassNode);


                xd.Save(memberPath);
                Label1.Text = "Successfully entered";
            }
        }
        catch
        {
            Label1.Text = "Error in parsing";
        }
    }
}