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
using System.Drawing;

public partial class bill : System.Web.UI.Page
{
    double amount = 0; int qua = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {


            Session.Abandon();
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("~/default.aspx");
        }

        Label1.Text = "";
        Label12.Text = Convert.ToString(Session["id"]);
        Label10.Text = Convert.ToString(Session["name"]);

        //string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        //SqlConnection cn = new SqlConnection(str);
        //string sql = "TRUNCATE TABLE bill";

        //SqlCommand com = new SqlCommand(sql, cn);

        //cn.Open();
        //com.ExecuteNonQuery();
        //cn.Close();
       


        string today1 = DateTime.Today.ToString("dd/mm/yyyy");
        DateTime today = DateTime.ParseExact(today1, "dd/mm/yyyy", null);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


        string bar = TextBox1.Text;
        string sql = "select * from  item where itembaracode='" + bar + "'";
        SqlConnection cn = new SqlConnection(str);
        SqlCommand com = new SqlCommand(sql, cn);

        SqlDataAdapter da = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        da.Fill(dt);

        
        cn.Open();
        com.ExecuteNonQuery();
        cn.Close();






        if (dt.Rows.Count == 0)
        {
            Label1.Text = "this item not available";
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
        if (GridView1.Rows.Count > 0)
        {
            int categoryid = Convert.ToInt32(dt.Rows[0][7].ToString());

            string sqlc = "select * from PROMOTION where categoryid=@cat";
            SqlCommand comc = new SqlCommand(sqlc, cn);
            comc.Parameters.AddWithValue("cat", categoryid);
            SqlDataAdapter dad = new SqlDataAdapter(comc);
            DataTable dta = new DataTable();
            dad.Fill(dta);

            double pro = 1;
            string today1 = DateTime.Today.ToString("dd/mm/yyyy");
            DateTime today = DateTime.ParseExact(today1, "dd/mm/yyyy", null);
            if (dta.Rows.Count > 0)
            {
                pro = Convert.ToDouble(dta.Rows[0][4].ToString());
                DateTime start = Convert.ToDateTime(dta.Rows[0][2].ToString());
                DateTime exp = Convert.ToDateTime(dta.Rows[0][3].ToString());
                if (today >= start && today <= exp)
                {
                    Label13.Text = "promotion is :" + pro + "%";
                }
                else Label13.Text = " promotion is : 0  % ";
            }
           
        }
        else Label13.Text = " promotion is : ---  % ";

    }





    protected void Button3_Click(object sender, EventArgs e)


    {

        if (GridView1.Rows.Count == 1)
        {


            int current_quantaty = 0;
            if (GridView1.Rows.Count > 0)
            {
                current_quantaty = Convert.ToInt32(GridView1.Rows[0].Cells[3].Text);
            }
            int requir_quantaty = Convert.ToInt32(TextBox2.Text);
            int result = current_quantaty - requir_quantaty;
            if (result < 0) { Label1.Text = "the required item :" + requir_quantaty + "  more the available  :" + current_quantaty + " only"; }

            else if (GridView1.Rows.Count > 0 && result >= 0)
            {
                string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                int categoryid = Convert.ToInt32(GridView1.Rows[0].Cells[8].Text);
                string sqlc = "select * from PROMOTION where categoryid=@cat";

                string sql = "insert into bill(name,baracode,unit,quantaty,price,item_unit) values (@name,@baracode,@unit,@quantaty,@price,@itemunit)";
                SqlConnection cn = new SqlConnection(str);
                SqlCommand comc = new SqlCommand(sqlc, cn);
                comc.Parameters.AddWithValue("cat", categoryid);
                SqlDataAdapter dad = new SqlDataAdapter(comc);
                DataTable dta = new DataTable();
                dad.Fill(dta);


                SqlCommand com = new SqlCommand(sql, cn);
                //  int itemid=Convert.ToInt32( GridView1.Rows[0].Cells[0].Text);
                string name = GridView1.Rows[0].Cells[7].Text;
                string itemunit = GridView1.Rows[0].Cells[9].Text;
                string bar = GridView1.Rows[0].Cells[1].Text;
                string price = (GridView1.Rows[0].Cells[2].Text);
                int quan = Convert.ToInt32(TextBox2.Text);
                Double unitprice = Convert.ToDouble(price);

                double tot = quan * unitprice;
                double pro;
                string today1 = DateTime.Today.ToString("dd/mm/yyyy");
                DateTime today = DateTime.ParseExact(today1, "dd/mm/yyyy", null);
                if (dta.Rows.Count > 0)
                {
                    pro = Convert.ToDouble(dta.Rows[0][4].ToString());
                    DateTime start = Convert.ToDateTime(dta.Rows[0][2].ToString());
                    DateTime exp = Convert.ToDateTime(dta.Rows[0][3].ToString());
                    if (today >= start && today <= exp)
                    {
                        tot = quan * unitprice * (1 - (pro / 100));
                        Label13.Text = "promotion is :" + pro + "%";
                    }
                    else { Label13.Text = " promotion is : 0  % "; }


                }



                double total = tot;


                // com.Parameters.AddWithValue("itemid", itemid);

                com.Parameters.AddWithValue("name", name);
                com.Parameters.AddWithValue("baracode", bar);
                com.Parameters.AddWithValue("unit", price);
                com.Parameters.AddWithValue("quantaty", quan);
                com.Parameters.AddWithValue("price", total);
                com.Parameters.AddWithValue("itemunit", itemunit);

                int oldqu = Convert.ToInt32(GridView1.Rows[0].Cells[3].Text) - quan;
                int id = Convert.ToInt32(GridView1.Rows[0].Cells[10].Text);


                string sqlup = "update item set itemquantaty=@newquan where itemid=@id";
                SqlCommand com2 = new SqlCommand(sqlup, cn);
                com2.Parameters.AddWithValue("id", id);
                com2.Parameters.AddWithValue("newquan", oldqu);


                {
                    cn.Open();
                    com.ExecuteNonQuery();
                    com2.ExecuteNonQuery();
                    cn.Close();
                }


            }
            GridView3.DataBind();
            GridView1.DataBind();

        }


        else if (GridView1.Rows.Count > 1)
        {
            if (GridView1.SelectedRow.Controls.Count > 0)
            {

                string today1 = DateTime.Today.ToString("dd/mm/yyyy");
                DateTime today = DateTime.ParseExact(today1, "dd/mm/yyyy", null);
                int current_quantaty = 0;
                if (GridView1.Rows.Count > 0)
                {
                    current_quantaty = Convert.ToInt32(GridView1.SelectedRow.Cells[3].Text);
                }
                int requir_quantaty = Convert.ToInt32(TextBox2.Text);
                int result = current_quantaty - requir_quantaty;
                if (result < 0) { Label1.Text = "the required item :" + requir_quantaty + "  more the available  :" + current_quantaty + " only"; }

                else if (GridView1.Rows.Count > 0 && result >= 0)
                {
                    string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

                    int categoryid = Convert.ToInt32(GridView1.SelectedRow.Cells[8].Text);
                    string sqlc = "select * from PROMOTION where categoryid=@cat";

                    string sql = "insert into bill(name,baracode,unit,quantaty,price,item_unit,sale_date) values (@name,@baracode,@unit,@quantaty,@price,@itemunit,@date)";
                    SqlConnection cn = new SqlConnection(str);
                    SqlCommand comc = new SqlCommand(sqlc, cn);
                    comc.Parameters.AddWithValue("cat", categoryid);
                    SqlDataAdapter dad = new SqlDataAdapter(comc);
                    DataTable dta = new DataTable();
                    dad.Fill(dta);


                    SqlCommand com = new SqlCommand(sql, cn);
                    //  int itemid=Convert.ToInt32( GridView1.Rows[0].Cells[0].Text);
                    string name = GridView1.SelectedRow.Cells[7].Text;
                    string itemunit = GridView1.SelectedRow.Cells[9].Text;
                    string bar = GridView1.SelectedRow.Cells[1].Text;
                    string price = GridView1.SelectedRow.Cells[2].Text;
                    string quantaty = TextBox2.Text;
                    Double unitprice = Convert.ToDouble(price);
                    int quan = Convert.ToInt32(quantaty);
                    double tot = quan * unitprice;
                    double pro;
                    if (dta.Rows.Count > 0)
                    {
                        pro = Convert.ToDouble(dta.Rows[0][4].ToString());
                        DateTime start = Convert.ToDateTime(dta.Rows[0][2].ToString());
                        DateTime exp = Convert.ToDateTime(dta.Rows[0][3].ToString());
                        if (today >= start && today <= exp)
                        {
                            tot = quan * unitprice * (1 - (pro / 100));
                            Label13.Text = "promotion is :" + pro + "%";
                        }
                        else { Label13.Text = " promotion is : 0  % "; }


                    }



                    string total = Convert.ToString(tot);


                    // com.Parameters.AddWithValue("itemid", itemid);

                    com.Parameters.AddWithValue("name", name);
                    com.Parameters.AddWithValue("baracode", bar);
                    com.Parameters.AddWithValue("unit", price);
                    com.Parameters.AddWithValue("quantaty", quantaty);
                    com.Parameters.AddWithValue("price", total);
                    com.Parameters.AddWithValue("itemunit", itemunit);
                    com.Parameters.AddWithValue("date", DateTime.Today);
                    int oldqu = Convert.ToInt32(GridView1.SelectedRow.Cells[3].Text) - quan;
                    int id = Convert.ToInt32(GridView1.SelectedRow.Cells[10].Text);


                    string sqlup = "update item set itemquantaty=@newquan where itemid=@id";
                    SqlCommand com2 = new SqlCommand(sqlup, cn);
                    com2.Parameters.AddWithValue("id", id);
                    com2.Parameters.AddWithValue("newquan", oldqu);


                    {
                        cn.Open();
                        com.ExecuteNonQuery();
                        com2.ExecuteNonQuery();
                        cn.Close();
                    }


                }
            }

            else { Labelresult.Text = " please select one item"; }
            
        }

        GridView3.DataBind();
        GridView1.DataBind();




    }
    protected void GridView3_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        GridView3.DataBind();
    }

    protected void GridView3_DataBound(object sender, EventArgs e)
    {

    }

    protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int q = 0;
        double p = 0;
        string strco = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string sql = "select * from bill";
        SqlConnection cn = new SqlConnection(strco);
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        cn.Open();
        da.Fill(dt);
        cn.Close();
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; ++i)
            {
                p += Convert.ToDouble(dt.Rows[i][5].ToString());
                q +=Convert.ToInt32 (dt.Rows[i].Field<int>(4));
            }
        }
        Label4.Text = Convert.ToString(p);
        Label6.Text = Convert.ToString(q);
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            amount += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "price"));
            qua += Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "quantaty"));
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[5].Text = "The totall";
            e.Row.Cells[5].Font.Bold = true;
            e.Row.Cells[6].Text = amount.ToString();
            e.Row.Cells[6].Font.Bold = true;
            e.Row.Cells[4].Text = qua.ToString();
            e.Row.Cells[4].Font.Bold = true;
            e.Row.Cells[3].Text = "quantaty";
            e.Row.Cells[3].Font.Bold = true;

        }

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string today1 = DateTime.Today.ToString("dd/mm/yyyy");
        DateTime today = DateTime.ParseExact(today1, "dd/mm/yyyy", null);
        if (GridView3.Rows.Count > 0) { 

            string number = String.Format("{0:d9}", (DateTime.Now.Ticks / 10) % 1000000000);
            int no = Convert.ToInt32(number);
            Label4.Text = "000";
            Label6.Text = "00";
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            //   string sqlbill = "insert into bill(name,baracode,unit,quantaty,price,item_unit,bill_number,employeeID,sale_date) values ('****','****','00',00,00,'***',@bill_number,@employeeID,@date)";
            string sqlbill = "update bill set bill_number=@bill_number,employeeID=@employeeID,sale_date=@date";
            string sqlfilter = "insert into FilterSale (employeeID,SaleDate,billnumber)values(@employeeID,@SaleDate,@billnumber)";
            SqlCommand comfilter = new SqlCommand(sqlfilter, cn);
            comfilter.Parameters.AddWithValue("employeeID", Convert.ToInt32(Label12.Text));
            comfilter.Parameters.AddWithValue("SaleDate", today);
            comfilter.Parameters.AddWithValue("billnumber", number);
            cn.Open();

            comfilter.ExecuteNonQuery();

            cn.Close();

            for (int i = 0; i < GridView3.Rows.Count; i++)
            {
                SqlCommand combill = new SqlCommand(sqlbill, cn);
                combill.Parameters.AddWithValue("bill_number", no);
                combill.Parameters.AddWithValue("employeeID", Convert.ToInt32(Label12.Text));
                combill.Parameters.AddWithValue("date", today);



                string zero = "delete item where itemquantaty=0";

                string sql2 = "insert into sale(saledate,saletime,employeeid,salecount,saletotall,unitprice,baracode,name,billnumber) values (@saledate,@saletime,@employeeid,@salecount,@saletotall,@unitprice,@baracode,@name,@number)";
                SqlCommand comz = new SqlCommand(zero, cn);
                SqlCommand comd = new SqlCommand(sql2, cn);

                Label14.Text = "the bill number :" + number + " is added to archeve";

                int count = Convert.ToInt32(GridView3.Rows[i].Cells[5].Text);
                double totall = Convert.ToDouble(GridView3.Rows[i].Cells[6].Text);
                int itemid = Convert.ToInt32(GridView3.Rows[i].Cells[1].Text);
                double unitprice = Convert.ToDouble(GridView3.Rows[i].Cells[4].Text);
                string bara = GridView3.Rows[i].Cells[3].Text;
                string name = GridView3.Rows[i].Cells[2].Text;
                
                DateTime date = DateTime.ParseExact(today1, "dd/mm/yyyy", null);
               
                DateTime time = DateTime.Now;
                int employeeid = Convert.ToInt32(Label12.Text);



                comd.Parameters.AddWithValue("saledate", date);
                comd.Parameters.AddWithValue("saletime", time);
                comd.Parameters.AddWithValue("employeeid", employeeid);
                comd.Parameters.AddWithValue("salecount", count);
                comd.Parameters.AddWithValue("saletotall", totall);

                comd.Parameters.AddWithValue("unitprice", unitprice);
                comd.Parameters.AddWithValue("baracode", bara);
                comd.Parameters.AddWithValue("name", name);
                comd.Parameters.AddWithValue("number", number);


                cn.Open();
                comd.ExecuteNonQuery();
                comz.ExecuteNonQuery();
                comfilter.ExecuteNonQuery();
                combill.ExecuteNonQuery();
                cn.Close();
            }

            Response.Redirect("report_customer.aspx");
            string sql = "TRUNCATE TABLE bill";

            SqlCommand com = new SqlCommand(sql, cn);

            cn.Open();
            com.ExecuteNonQuery();
            cn.Close(); GridView3.DataBind();

        }

    }


    protected void GridView3_RowDeleted1(object sender, GridViewDeletedEventArgs e)
    {
        
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        if (GridView3.Rows.Count > 0)
        {
            if (GridView3.SelectedValue != null)
            {
                int id = Convert.ToInt32(GridView3.SelectedRow.Cells[1].Text);

                string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection cn = new SqlConnection(str);

                string select = "select * from item where itembaracode=@id1";
                string delete = "delete from bill where id=@id2";
                string update = "update item set itemquantaty=@newquan where itembaracode=@id3";

                SqlCommand com = new SqlCommand(select, cn);
                int barco = Convert.ToInt32(GridView3.SelectedRow.Cells[3].Text);
                com.Parameters.AddWithValue("id1", barco);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);


                SqlCommand com2 = new SqlCommand(delete, cn);
                com2.Parameters.AddWithValue("id2", id);

                SqlCommand com3 = new SqlCommand(update, cn);
                com3.Parameters.AddWithValue("id3", barco);

                int oldq = 0;
                if (dt.Rows.Count > 0)
                {
                    oldq = Convert.ToInt32(dt.Rows[0][2].ToString());
                }

                int curr = Convert.ToInt32(GridView3.SelectedRow.Cells[5].Text);
                int now = oldq + curr;

                com3.Parameters.AddWithValue("newquan", now);

                cn.Open();
                com.ExecuteNonQuery();
                com2.ExecuteNonQuery();
                com3.ExecuteNonQuery();
                cn.Close();
                GridView3.DataBind();

            }
        }
    }


    protected void Button6_Click(object sender, EventArgs e)
    {
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(str);
        for (int i = 0; GridView3.Rows.Count > i; ++i)
        {
            string select = "select * from item where itembaracode=@id1";
            SqlCommand com = new SqlCommand(select, cn);
            int barco = Convert.ToInt32(GridView3.Rows[i].Cells[3].Text);
            com.Parameters.AddWithValue("id1", barco);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            string update = "update item set itemquantaty=@newquan where itembaracode=@id3";
            SqlCommand com3 = new SqlCommand(update, cn);
            
            com3.Parameters.AddWithValue("id3", barco);
            int oldq = Convert.ToInt32(dt.Rows[0][2].ToString());
            int curr = Convert.ToInt32(GridView3.Rows[i].Cells[5].Text);
            int now = oldq + curr;
            com3.Parameters.AddWithValue("newquan", now);
            cn.Open();

            com3.ExecuteNonQuery();
            cn.Close();
        }
        Label4.Text = "000";
        Label6.Text = "00";
       
        string sql = "TRUNCATE TABLE bill";
        
        SqlCommand comd = new SqlCommand(sql, cn);

        cn.Open();
        comd.ExecuteNonQuery();
        cn.Close(); GridView3.DataBind();
        GridView3.DataBind();

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
       
      
    }
}





