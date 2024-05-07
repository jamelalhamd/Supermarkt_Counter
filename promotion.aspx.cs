using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

public partial class promotion : System.Web.UI.Page
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

        TextBoxID.Visible = false;
        Label6.Visible = false;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBoxID.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBoxname.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBoxstart.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBoxexpire.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBoxprecentage.Text = GridView1.SelectedRow.Cells[5].Text;
        DropDownListcategory.SelectedValue = GridView1.SelectedRow.Cells[6].Text;
        TextBoxID.Visible = true;
        Label6.Visible = true;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(str);
        string sql = "insert into PROMOTION (promotionname,promotionstart,promotionexpire,precentage,categoryid) values(@name,@start,@ex,@pre,@cat)";
        SqlCommand com = new SqlCommand(sql, cn);

        string name = TextBoxname.Text;
        DateTime start = Convert.ToDateTime(TextBoxstart.Text);
        DateTime exire = Convert.ToDateTime(TextBoxexpire.Text);
        double precentage = Convert.ToDouble(TextBoxprecentage.Text);
        int category = Convert.ToInt32(DropDownListcategory.SelectedValue);

        com.Parameters.AddWithValue("name", name);
        com.Parameters.AddWithValue("start", start);
        com.Parameters.AddWithValue("ex", exire);
        com.Parameters.AddWithValue("pre", precentage);
        com.Parameters.AddWithValue("cat", category);

        cn.Open();
        com.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        TextBoxID.Text = string.Empty;
        TextBoxname.Text = string.Empty;
        TextBoxstart.Text = string.Empty;
        TextBoxexpire.Text = string.Empty;
        TextBoxprecentage.Text = string.Empty;

        Label7.Text = "One Promotion has been  created";

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (GridView1.SelectedValue != null)
        {
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "delete PROMOTION  where promotionid=@id";
            SqlCommand com = new SqlCommand(sql, cn);

            int id = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);



            com.Parameters.AddWithValue("id", id);

            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            TextBoxID.Text = string.Empty;
            TextBoxname.Text = string.Empty;
            TextBoxstart.Text = string.Empty;
            TextBoxexpire.Text = string.Empty;
            TextBoxprecentage.Text = string.Empty;
            Label7.Text = "Promotion ID = " + id + " has been  Deleted";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (GridView1.SelectedValue != null)
        {
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "update PROMOTION set  promotionname=@name,promotionstart=@start,promotionexpire=@expire,precentage=@precentage,categoryid=@cat where promotionid=@id";
            SqlCommand com = new SqlCommand(sql, cn);

            int id = Convert.ToInt32(TextBoxID.Text);
            string name = TextBoxname.Text;
            DateTime start = Convert.ToDateTime(TextBoxstart.Text);
            DateTime exire = Convert.ToDateTime(TextBoxexpire.Text);
            double precentage = Convert.ToDouble(TextBoxprecentage.Text);
            int category = Convert.ToInt32(DropDownListcategory.SelectedValue);
            com.Parameters.AddWithValue("name", name);
            com.Parameters.AddWithValue("start", start);
            com.Parameters.AddWithValue("expire", exire);
            com.Parameters.AddWithValue("precentage", precentage);
            com.Parameters.AddWithValue("cat", category);
            com.Parameters.AddWithValue("id", id);

            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            TextBoxID.Text = string.Empty;
            TextBoxname.Text = string.Empty;
            TextBoxstart.Text = string.Empty;
            TextBoxexpire.Text = string.Empty;
            TextBoxprecentage.Text = string.Empty;
            Label7.Text = " Promotion ID = " + id + " has been  Updated";
        }
    }
}