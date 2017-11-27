using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string display = "Active Session Count is " + Application["count"].ToString();
        Label1.Text = display;
    }
    
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("MemberRegistration.aspx");
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {

        if (Session["email"] == null)
        {
            Response.Redirect("MemberLogin.aspx");
        }
        else
        {
            Response.Redirect("MemberHome.aspx");
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("StaffLogin.aspx");
        }
        else
        {
            Response.Redirect("StaffHome.aspx");
        }
    }
}