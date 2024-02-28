using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class registration_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_btn_Click(object sender, EventArgs e)
    {
        string conn = WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        //SqlCommand cmd = new SqlCommand("insert into registration(name,username,password,city,address,mobile_no) values(@name,@username,@password,@city,@address,@mobile_no)",con);
        //cmd.Parameters.AddWithValue("@name", nm_txt1.Text);
        //cmd.Parameters.AddWithValue("@username", uname_txt2.Text);
        //cmd.Parameters.AddWithValue("@password", password_txt3.Text);
        //cmd.Parameters.AddWithValue("@city", city_txt4.Text);
        //cmd.Parameters.AddWithValue("@address", add_txt5.Text);
        //cmd.Parameters.AddWithValue("@mobile_no", mobile_txt6.Text);

        SqlCommand cmd = new SqlCommand("insert into registration(name,username,password,city,address,mobile_no) values ('" + nm_txt1.Text + "','" + uname_txt2.Text + "','" + password_txt3.Text + "','" + city_txt4.Text + "','" + add_txt5.Text + "','" + mobile_txt6.Text + "')", con);


        cmd.ExecuteNonQuery();
        Response.Write("<script language='javascript'>alert('successfull registration');</script>");

        nm_txt1.Text = "";
        uname_txt2.Text = "";
        password_txt3.Text = "";
        city_txt4.Text = "";
        add_txt5.Text = "";
        mobile_txt6.Text = "";

       // Response.Write("registration Successfully!!!thank you");
        con.Close();
    }
}