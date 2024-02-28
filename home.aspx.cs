using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void send_btn_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            string conn = WebConfigurationManager.ConnectionStrings["constring"].ToString();
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into feedback(name,email,mobile_no,message) values(@name,@email,@mobile_no,@message)", con);
            cmd.Parameters.AddWithValue("@name", name_txt.Text);
            cmd.Parameters.AddWithValue("@email", email_txt.Text);
            cmd.Parameters.AddWithValue("@mobile_no", mobile_no_txt.Text);
            cmd.Parameters.AddWithValue("@message", message_txt.Text);
            cmd.ExecuteNonQuery();

            Response.Write("feedback given Successfully!!!thank you");

            con.Close();
        }
        else
        {
            Response.Redirect("login_page.aspx");
        }



    }
}