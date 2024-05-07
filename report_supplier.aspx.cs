using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
public partial class supplier_bill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {


            Session.Abandon();
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("~/default.aspx");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
     
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(str);
        string sql3 = "TRUNCATE TABLE buy_bill";
        SqlCommand com3 = new SqlCommand(sql3, cn);
        cn.Open();

        com3.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("product_store.aspx");
    }
}