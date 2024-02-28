using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null && Session["username"] != null)
        {
            label1.Text = "You are login successfully " + Session["username"].ToString();
            login.Visible = false;
        }
        else
        {
            label1.Text = "Hello visitor , welcome!";
            login.Visible = true;
            logout.Visible = false;
        }
    }
    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("login_page.aspx");
       
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session["userid"] = null;
        Session.Clear();
        Session.Remove("username");
        Response.Redirect("home.aspx");
    }
}
