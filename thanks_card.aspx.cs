using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class thanks_card : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userid = Session["userid"].ToString();
        int total = Convert.ToInt32(Session["total"].ToString());
        string conn = WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from orders where userid = " + userid, con);
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Session["userid"] = null;
        Session.Clear();
        Session.Remove("username");
        Session.Abandon();
        Response.Redirect("home.aspx");
    }
}