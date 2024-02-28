﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class feedback : System.Web.UI.Page
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

            Response.Write("<script language='javascript'>alert('feedback was sent successfully..!!!');</script>");

            con.Close();
        }
        else
        {
            Response.Redirect("login_page.aspx");
        }

        
        
    }
}