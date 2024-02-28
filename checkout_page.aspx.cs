using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class checkout_page : System.Web.UI.Page
{
    string prod_name;
    string prd_names;
    string prod_qty;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rbl1.SelectedItem.Text == "Cash on Delivery")
        {
            lbl1.Enabled = false;
            lbl2.Enabled = false;
            img.Enabled = false;
            cardnm_lbl.Enabled = false;
            cardno_lbl.Enabled = false;
            cardmn_lbl.Enabled = false;
            cardyr_lbl.Enabled = false;
            cvv_lbl.Enabled = false;
            card_nm.Enabled = false;
            card_no.Enabled = false;
            card_month.Enabled = false;
            card_year.Enabled = false;
            card_cvv.Enabled = false;
            rf5.Enabled = false;
            rf6.Enabled = false;
            rf7.Enabled = false;
            rf8.Enabled = false;
            rf9.Enabled = false;
        }
        else
        {
            lbl1.Enabled = true;
            lbl2.Enabled = true;
            img.Enabled = true;
            cardnm_lbl.Enabled = true;
            cardno_lbl.Enabled = true;
            cardmn_lbl.Enabled = true;
            cardyr_lbl.Enabled = true;
            cvv_lbl.Enabled = true;
            card_nm.Enabled = true;
            card_no.Enabled = true;
            card_month.Enabled = true;
            card_year.Enabled = true;
            card_cvv.Enabled = true;
        }
        
    }
    protected void proceed_Click(object sender, EventArgs e)
    {
       
        string userid = Session["userid"].ToString();
        int total = Convert.ToInt32(Session["total"].ToString()); 
        string conn = WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand select = new SqlCommand("select * from user_cart where userid = " + userid ,con);
        select.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter ad = new SqlDataAdapter(select);
        ad.Fill(dt);
        SqlDataReader dr2 = select.ExecuteReader();
        foreach (DataRow dr in dt.Rows)
        {
            prod_name = dr["p_name"].ToString();
            prod_qty = dr["p_qty"].ToString();
            if (dr2.HasRows == true)
            {
                prd_names += prod_name + "(" + prod_qty + "),";
            }
        }
        //SqlDataReader dr2 = select.ExecuteReader();
        //while (dr2.HasRows == true)
        //{
            
            
        //}
        dr2.Close();
  
        if (rbl1.SelectedItem.Text == "Cash on Delivery")
        {
            
            SqlCommand cmd = new SqlCommand("insert into orders(userid,name,email,address,mobile_no,state,zipcode,payment_mode,total_prod,total,order_status) values ("+ userid +",'" + name_txt.Text + "','" + email_txt.Text + "','" + addr_txt.Text + "','" + mobile_txt.Text + "','" + state_txt.Text + "','" + code_txt.Text + "','" + rbl1.SelectedItem.Text + "','" + prd_names +"'," + total.ToString() + ",'Pending')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("thanks.aspx");
        }
        else
        {

            SqlCommand cmd = new SqlCommand("insert into orders(userid,name,email,address,mobile_no,state,zipcode,payment_mode,total_prod,total) values (" + userid + ",'" + name_txt.Text + "','" + email_txt.Text + "','" + addr_txt.Text + "','" + mobile_txt.Text + "','" + state_txt.Text + "','" + code_txt.Text + "','" + rbl1.SelectedItem.Text + "','" + prd_names + "'," + total.ToString() + ",'Pending')", con);
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = new SqlCommand("insert into payment_card(card_nm,card_cc,card_mon,card_year,card_cvv,payment) values('"+ card_nm.Text +"',"+ card_no.Text +","+ card_month.Text +","+ card_year.Text +","+ card_cvv.Text +",'Done')",con);
            cmd1.ExecuteNonQuery();
            Response.Redirect("thanks_card.aspx");
        }
    }
}