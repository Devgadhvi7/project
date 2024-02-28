using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class airbud : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string conn = WebConfigurationManager.ConnectionStrings["constring"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from product where category_name = 'Earbud'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
   
}