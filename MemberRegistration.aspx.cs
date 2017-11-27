using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class MemberRegistration : System.Web.UI.Page
{
    string imageString;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
            System.Diagnostics.Debug.Print("nahi horaha");
            ServiceReference1.ServiceClient fromService = new ServiceReference1.ServiceClient();
            String userLen = "5";
            imageString = fromService.GetVerifierString(userLen);
            var img = System.Drawing.Image.FromStream(fromService.GetImage(imageString));
            var path = Server.MapPath("/images/verifier.jpg");
            img.Save(path);
            Image1.ImageUrl = "/images/verifier.jpg";
            //pictureBox1.SizeMode = PictureBoxSizeMode.AutoSize;
        

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string firstName = TextBox1.Text;
        string lastName = TextBox2.Text;
        string city = TextBox3.Text;
        string state = TextBox4.Text;
        string zipcode = TextBox5.Text;
        string emailId = TextBox6.Text;
        string password = Password1.Text;
        string cpassword = Password2.Text;

        string imgstr = imageString;

        if (string.IsNullOrEmpty(firstName))
        {
            Label11.Text = "First Name Cannot be Empty!";
            return;
        }
        if (string.IsNullOrEmpty(lastName))
        {
            Label11.Text = "Last Name Cannot be Empty!";
            return;
        }
        if (string.IsNullOrEmpty(emailId))
        {
            Label11.Text = "Email Address Cannot be Empty!";
            return;
        }
        else if (!Regex.IsMatch(emailId, @"[A-Za-z][A-Za-z]*[A-Za-z0-9]*@[A-Za-z]*.com"))
        {
            Label11.Text = "Enter Correct Email Address!";
            return;
        }
        if (string.IsNullOrEmpty(password))
        {
            Label11.Text = "Password Cannot be Empty!";
            return;
        }
        if (password.Length < 6)
        {
            Label11.Text = "Length of Password should be greater than 6 characters!";
            return;
        }
        if (!password.Equals(cpassword))
        {
            Label11.Text = "Password does not match. Please confirm correct password!";
            return;
        }
        System.Diagnostics.Debug.Print(imageString);
        /*if (!imageString.Equals(TextBox9.Text))
        {
            Label11.Text = imageString + " " + TextBox9.Text;
            //Label11.Text = "String you entered does not match with string in captcha!";
            return;
        }*/
        try
        {
            System.Diagnostics.Debug.Print("hereeeee");
            var path = Server.MapPath(@"Member.xml");
            XmlDocument doc1 = new XmlDocument();
            doc1.Load(path);

            XmlNodeList nodelist = doc1.SelectNodes("/Members/Member");
            Boolean found = false;
            foreach (XmlNode node in nodelist) // for each <testcase> node
            {
                if ((node.SelectSingleNode("Email").InnerText).Trim().Equals((TextBox1.Text).Trim()))
                {
                    Label11.Text = " Record is found" + " for " + emailId;
                    found = true;
                }
            }
            if (!found)
            {
                XmlDocument xd = new XmlDocument();
                var memberPath = Server.MapPath(@"Member.xml");
                xd.Load(memberPath);

                XmlNode rootNode = xd.DocumentElement;
                XmlNode MemberPathNode = xd.CreateElement("Member");
                rootNode.AppendChild(MemberPathNode);
                XmlNode NameNode = xd.CreateElement("Name");
                XmlNode serverPathNode = xd.CreateElement("Firstname");
                serverPathNode.InnerText = firstName; // Your first name

                NameNode.AppendChild(serverPathNode);
                serverPathNode = xd.CreateElement("Lastname");
                serverPathNode.InnerText = lastName; // Your last namme

                NameNode.AppendChild(serverPathNode);
                MemberPathNode.AppendChild(NameNode);
                XmlNode serverPathNode2 = xd.CreateElement("Email");
                serverPathNode2.InnerText = emailId; // Your value

                MemberPathNode.AppendChild(serverPathNode2);
                serverPathNode2 = xd.CreateElement("Password");
                string encrypt = EncryptionDecryption.Class1.encrypt(password);
                serverPathNode2.InnerText = encrypt; // Your value
                MemberPathNode.AppendChild(serverPathNode2);

                XmlNode AddressNode = xd.CreateElement("Address");
                XmlNode CityPathNode = xd.CreateElement("City");
                CityPathNode.InnerText = city; // Your first name
                AddressNode.AppendChild(CityPathNode);

                XmlNode StatePathNode = xd.CreateElement("State");
                StatePathNode.InnerText = state; // Your first name
                AddressNode.AppendChild(StatePathNode);

                XmlNode ZipcodePathNode = xd.CreateElement("Zipcode");
                ZipcodePathNode.InnerText = zipcode; // Your first name
                AddressNode.AppendChild(ZipcodePathNode);
                MemberPathNode.AppendChild(AddressNode);
                xd.Save(memberPath);
                Label11.Text = "Successfully registered";
                Response.Redirect("MemberLogin.aspx");
            }
        }
        catch
        {
            Label11.Text = "Error in Parsing";
        }
}

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}