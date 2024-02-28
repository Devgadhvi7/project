using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class login_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void btn1_Click1(object sender, EventArgs e)
    {
        string conn = WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection con = new SqlConnection(conn);
        SqlCommand cmd = new SqlCommand("select * from registration where username= '" + txt1.Text + "' and password='" + txt2.Text + "'", con);
        //cmd.Parameters.AddWithValue("@username", txt1.Text);
        //cmd.Parameters.AddWithValue("@password", txt2.Text);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();

        if (dt.Rows.Count > 0)
        {
            //if (username == txt1.Text && password == txt2.Text)
            Session["userid"] = dt.Rows[0]["id"].ToString();
            Session["username"] = txt1.Text;
            Response.Redirect("home.aspx");
        }
        else
        {



        }
    }
}