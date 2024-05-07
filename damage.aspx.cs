using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class damage : System.Web.UI.Page
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

        Label4.Text = Convert.ToString(Session["id"]);
        Label3.Text = Convert.ToString(Session["name"]);
        for (int i = 0; i < GridView1.Rows.Count; ++i) {
                string sco = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection cn = new SqlConnection(sco);
                string sql = "delete damage where damage_date<DATEADD(m, -3, GETDATE())";

                SqlCommand com = new SqlCommand(sql, cn);

                DateTime date_damage = Convert.ToDateTime(GridView1.Rows[i].Cells[9].Text);
                cn.Open();
                com.ExecuteNonQuery();
                cn.Close();
                GridView1.DataBind();
                            

            
        } }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}