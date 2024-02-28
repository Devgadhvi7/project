using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class prod_details : System.Web.UI.Page
{
    string  p_name, p_qty, p_rate, p_img;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    

    protected void cartbtn_Click(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            string userid = Session["userid"].ToString();
            string p_id = Request.QueryString["id"];
            string conn = WebConfigurationManager.ConnectionStrings["constring"].ToString();
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM product WHERE id = " + p_id + "",con);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                
                p_name = dr["p_name"].ToString();
                p_qty = dr["p_qty"].ToString();
                p_rate = dr["p_rate"].ToString();
                p_img = dr["p_image"].ToString();
            }
            SqlCommand cmd1 = new SqlCommand("select * from user_cart where user_id="+ userid + " ",con);
            
            SqlDataReader dr2 = cmd1.ExecuteReader();                                                                                                                                                                                                                        
            //DataTable dt2 = new DataTable();
            //SqlDataAdapter ad2 = new SqlDataAdapter(cmd1);
            //ad.Fill(dt2);
            //int i  = cmd1.ExecuteNonQuery();
            
            if (dr2.HasRows == true)
            {
                Response.Write("<script language='javascript'>alert('Product Already Added To Cart');</script>");
                
            }
            else
            {
                dr2.Close();
                TextBox p_qtytxt = (TextBox)DataList2.Items[0].FindControl("p_qty");
                SqlCommand cmd2 = new SqlCommand("insert into user_cart(userid,p_id,p_name,p_qty,p_rate,p_img) values('" + userid + "','" + p_id + "','" + p_name + "', '" + p_qtytxt.Text + "','" + p_rate + "','" + p_img + "')", con);
                cmd2.ExecuteNonQuery();
               
                Response.Write("<script language='javascript'>alert('Product Added To Cart Successfully');</script>");
            }
            con.Close();

            //if (Request.Cookies["cart"] == null)
            //{
            //    Response.Cookies["cart"].Value = p_name.ToString() + "," + p_qty.ToString() + "," + p_rate.ToString() + "," + p_img.ToString();
            //    Response.Cookies["cart"].Expires = DateTime.Now.AddDays(1);
            //}
            
        }
        else
        {
            Response.Redirect("login_page.aspx");
        }
    }
}