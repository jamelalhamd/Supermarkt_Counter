﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

public partial class filter_emp : System.Web.UI.Page
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

        if (GridView1.Rows.Count > 0)
        {
            Label5.Text = GridView1.Rows[0].Cells[4].Text;
        }
        GridView1.Visible = true;
        GridView3.Visible = false;
        GridView4.Visible = false;
        GridView2.Visible = false;
    }

    protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {


        GridView2.Visible = true;


        if (GridView1.Rows.Count > 0 && GridView1.SelectedValue != null && GridView1.Visible == true)
        {
            Label5.Text = GridView1.SelectedRow.Cells[4].Text;
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        Label3.Text = Convert.ToString(Session["name"]);
        Label4.Text = Convert.ToString(Session["id"]);

        GridView1.Visible = false;
        GridView3.Visible = true;
        GridView4.Visible = false;

        GridView2.Visible = false;


        if (RadioButtonList1.SelectedItem.ToString() == "Bill No")
        {

            int employeeid = Convert.ToInt32(Label4.Text);
            string no = TextBox3.Text;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "select * from  Filter_Buy where employeeID=@id and bill_number=@no";
            //string sql = "select * from  FilterSale where employeeID=@id";
            SqlCommand com = new SqlCommand(sql, cn);
            com.Parameters.AddWithValue("id", employeeid);
            com.Parameters.AddWithValue("no", no);

            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ///date
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        else if (RadioButtonList1.SelectedItem.ToString() == "Date")
        {

            int employeeid = Convert.ToInt32(Label4.Text);
            string no = TextBox3.Text;
            DateTime date1 = DateTime.ParseExact(TextBox1.Text, "dd/MM/yyyy", null);
            DateTime date2 = DateTime.ParseExact(TextBox2.Text, "dd/MM/yyyy", null);
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "select * from  Filter_Buy where employeeID=@id and Buydate between @date1 And @date2";

            SqlCommand com = new SqlCommand(sql, cn);
            com.Parameters.AddWithValue("date1", date1);
            com.Parameters.AddWithValue("daTe2", date2);
            com.Parameters.AddWithValue("id", employeeid);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);

            GridView3.DataSource = dt;
            GridView3.DataBind();
        }





        if (GridView3.Rows.Count == 0)
        {
            GridView4.Visible = false;
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView3.Visible = false;
        GridView4.Visible = false;
        GridView2.Visible = false;
    }

    protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
    {

        // if (GridView3.Rows.Count > 0 && GridView3.SelectedValue != null && GridView3.Visible == true)
        {
            Label5.Text = GridView3.SelectedRow.Cells[4].Text;
            GridView4.Visible = true;
        }

    }

}

