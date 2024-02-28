using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class samrtwatch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string conn = WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from product where category_name = 'SmartWatch'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }


    //protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    //{
    //    if (e.CommandName == "viewmore")
    //    {
    //        Response.Redirect("prod_details.aspx?id=" + e.CommandArgument.ToString());
    //    }

    //}
    protected void btn1_Click(object sender, EventArgs e)
    {

    }
}