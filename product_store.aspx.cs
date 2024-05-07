using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Configuration;

public partial class product_store : System.Web.UI.Page
    
{
    
  

  double  amount =0;
    int qua = 0;
    string number = String.Format("{0:d9}", (DateTime.Now.Ticks / 10) % 1000000000);
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {


            Session.Abandon();
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("~/default.aspx");
        }

        Labelemployeename.Text = Convert.ToString(Session["name"]);
      Labelemployeeid.Text = Convert.ToString(Session["id"]);
       // string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
       // SqlConnection cn = new SqlConnection(str);
       // string sql = "TRUNCATE TABLE buy_bill";
       // SqlCommand com = new SqlCommand(sql, cn);
       // cn.Open();
       //// com.ExecuteNonQuery();
       // cn.Close();
       // GridView1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Labelname.Text = "";
        Labelprice.Text = string.Empty;
        Labelpro.Text = "";
        Labelexp.Text = "";
        Labelprice.Text = "";
        Labelbara.Text = "";
        Labelqua.Text = "";
        TextBoxcategory.Visible = false;
        TextBoxitemunit.Visible = false;
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(str);
        string sql = "insert into buy_bill(quantaty,baracode,expire_date,product_date,price,name,categoryid,item_unit,totall_price,min_quantaty) values (@quantaty,@baracode,@expire_date,@product_date,@price,@name,@categoryid,@item_unit,@totall,@min)";

        int min = 10;
        if (TextBoxMin_quantaty.Text != string.Empty)
        {
            min =Convert.ToInt32( TextBoxMin_quantaty.Text);
        }


        int quantaty = 1;double totall = 0;
        if (TextBoxquan.Text != string.Empty)
        {
             quantaty = Convert.ToInt32(TextBoxquan.Text);
            
        }
        else { Labelqua.Text = "please fill the quantaty"; }
        string baracode = "";

        if (TextBoxbaracode.Text != string.Empty)
        {
             baracode = TextBoxbaracode.Text;
        }
        else { Labelbara.Text = "please fill the baracode"; }

        DateTime product_date = DateTime.Today;
        if (TextBoxpro_date.Text != string.Empty)
        {
             product_date = Convert.ToDateTime(TextBoxpro_date.Text);
        }
        else { Labelpro.Text = "please fill the product date";

        }
        DateTime expire_date = DateTime.Today;

        if (TextBoxexpir.Text != string.Empty)
        {
            expire_date = Convert.ToDateTime(TextBoxexpir.Text);
        }
        else { Labelexp.Text = "please fill the expire date"; }
        double price = 1;
        if (TextBoxprice.Text != string.Empty)
        {
             price = Convert.ToDouble(TextBoxprice.Text);
        }
        else { Labelprice.Text = "please fill the price"; }
        string name = "";
        if (TextBoxname.Text != string.Empty)
        {
             name = TextBoxname.Text;
        }
        else { Labelname.Text = " please fill the name"; }
        int cat =Convert.ToInt32( DropDownListcategory.SelectedValue);
        string item_unit = DropDownListunit.SelectedValue;
        SqlCommand com = new SqlCommand(sql, cn);
        com.Parameters.AddWithValue("quantaty", quantaty);
        com.Parameters.AddWithValue("baracode", baracode);
        com.Parameters.AddWithValue("expire_date", expire_date);
        com.Parameters.AddWithValue("product_date", product_date);
        com.Parameters.AddWithValue("price", price);
        com.Parameters.AddWithValue("name", name);
        com.Parameters.AddWithValue("categoryid", cat);
        com.Parameters.AddWithValue("item_unit", item_unit);
        totall = price * quantaty;
        com.Parameters.AddWithValue("totall", totall);
        com.Parameters.AddWithValue("min", min);

     
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();
        
        GridView1.DataBind();

        TextBoxid.Text = "";
        TextBoxname.Text = "";
        TextBoxprice.Text = "";
        TextBoxbaracode.Text = "";
        TextBoxprice.Text = "";
        TextBoxexpir.Text = "";
        TextBoxpro_date.Text = "";
        Labelname.Text = "";
        Labelprice.Text = string.Empty;
        Labelpro.Text = "";
        Labelexp.Text = "";
        Labelprice.Text = "";
        Labelbara.Text = "";
        Labelqua.Text = "";
        TextBoxquan.Text = "";


    }



    protected void TextBoxcat_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        TextBoxcategory.Visible = false;
        TextBoxitemunit.Visible = false;
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(str);
        string sql = "delete from buy_bill where itemid=@itemid";
        if (GridView1.Rows.Count > 0 && GridView1.SelectedValue!=null)
        {
            int id = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            SqlCommand com = new SqlCommand(sql, cn);
            com.Parameters.AddWithValue("itemid", id);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBoxcategory.Visible = false;
        TextBoxitemunit.Visible = false;
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(str);
        string sql = "TRUNCATE TABLE buy_bill";
        SqlCommand com = new SqlCommand(sql, cn);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
        

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        TextBoxcategory.Visible = false;
        TextBoxitemunit.Visible = false;
        if (GridView1.Rows.Count > 0)
        {








            int no = Convert.ToInt32(number);


            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);

            // string sql_bill = "insert into buy_bill(quantaty,baracode,expire_date,product_date,price,name,categoryid,item_unit,totall,min,buy_date,bill_number,employeeID) values (000,'000',@expire_date,@product_date,@price,@name,@categoryid,@item_unit,@totall,@min,@buy_date,@bill_number,@employeeID)";
            string sql_bill = "update buy_bill set buy_date=@date,bill_number=@no,employeeID=@id";





            string sql = "insert into store(storedate,itemid,quantaty,baracode,expiredate,productdate,price,name,categoryid,itemunit,min_quantaty)values(@storedate,@itemid,@quantaty,@baracode,@expiredate,@productdate,@price,@name,@categoryid,@itemunit,@min) ";
            string sql2 = "insert into buy (buydate,buytime,employeeid,buy_count,total_price,price,baracode,name,bill_number,item_unit)values(@buydate,@buytime,@employeeid,@buy_count,@total_price,@price,@baracode,@name,@bill_number,@item_unit)";
            string sqlfiler = "insert into Filter_Buy(Buydate,employeeID,bill_number)values(@date,@employeeID,@bill_number)";
            SqlCommand comfilter = new SqlCommand(sqlfiler, cn);
            comfilter.Parameters.AddWithValue("date", DateTime.Today);
            comfilter.Parameters.AddWithValue("bill_number", number);
            comfilter.Parameters.AddWithValue("employeeID", Convert.ToInt32(Labelemployeeid.Text));
            cn.Open();
            comfilter.ExecuteNonQuery();
            cn.Close();
            string bring = "select * from store";
            SqlCommand bring_store = new SqlCommand(bring, cn);
            SqlDataAdapter da = new SqlDataAdapter(bring_store);
            DataTable dt = new DataTable();
            da.Fill(dt);








            for (int i = 0; i < GridView1.Rows.Count; ++i)
            {

                SqlCommand com_bill = new SqlCommand(sql_bill, cn);
                com_bill.Parameters.AddWithValue("no", no);
                com_bill.Parameters.AddWithValue("date", DateTime.Today);
                com_bill.Parameters.AddWithValue("id", Convert.ToInt32(Labelemployeeid.Text));



                SqlCommand com = new SqlCommand(sql, cn);
                SqlCommand com2 = new SqlCommand(sql2, cn);

                int id = Convert.ToInt32(GridView1.Rows[i].Cells[1].Text);
                int quan = Convert.ToInt32(GridView1.Rows[i].Cells[2].Text);
                string bara = (GridView1.Rows[i].Cells[3].Text);
                DateTime exp = Convert.ToDateTime(GridView1.Rows[i].Cells[4].Text);
                DateTime pro = Convert.ToDateTime(GridView1.Rows[i].Cells[5].Text);
                double price = Convert.ToDouble(GridView1.Rows[i].Cells[6].Text);
                string name = (GridView1.Rows[i].Cells[7].Text);
                int cat = Convert.ToInt32(GridView1.Rows[i].Cells[8].Text);
                string item_unit = (GridView1.Rows[i].Cells[9].Text);
                int min = Convert.ToInt32(GridView1.Rows[i].Cells[11].Text);






                DateTime storedate = DateTime.Today;
                com.Parameters.AddWithValue("storedate", storedate);
                com.Parameters.AddWithValue("itemid", id);
                com.Parameters.AddWithValue("quantaty", quan);
                com.Parameters.AddWithValue("baracode", bara);
                com.Parameters.AddWithValue("expiredate", exp);
                com.Parameters.AddWithValue("productdate", pro);
                com.Parameters.AddWithValue("price", price);
                com.Parameters.AddWithValue("name", name);
                com.Parameters.AddWithValue("categoryid", cat);
                com.Parameters.AddWithValue("itemunit", item_unit);
                com.Parameters.AddWithValue("min", min);

                DateTime time = DateTime.Now;
                int employeeid = Convert.ToInt32(Labelemployeeid.Text);
                double total = quan * price;
                com2.Parameters.AddWithValue("buydate", storedate);
                com2.Parameters.AddWithValue("buytime", time);
                com2.Parameters.AddWithValue("employeeid", employeeid);
                com2.Parameters.AddWithValue("buy_count", quan);
                com2.Parameters.AddWithValue("total_price", total);
                com2.Parameters.AddWithValue("baracode", bara);
                com2.Parameters.AddWithValue("price", price);
                com2.Parameters.AddWithValue("name", name);
                com2.Parameters.AddWithValue("bill_number", number);
                com2.Parameters.AddWithValue("item_unit", item_unit);


                //for (int j = 0; j < dt.Rows.Count; ++j)
                //{

                //    if (dt.Rows[j]["baracode"].ToString() == bara && Convert.ToDateTime(dt.Rows[j]["expiredate"].ToString()) == exp && dt.Rows[j]["itemunit"].ToString() == item_unit)
                //    {

                //        int pre_quantaty = Convert.ToInt32(dt.Rows[j]["quantaty"].ToString());

                //        quan = pre_quantaty + quan;
                //        sql = "update store set quantaty=@quantaty where baracode=@bara and  expiredate=@exp and itemunit=@item_unit";


                //        cn.Open();
                //        com.ExecuteNonQuery();
                //        Button4.Text = quan.ToString();
                //        cn.Close();

                //    }

                //}
                //sql = "insert into store(storedate,itemid,quantaty,baracode,expiredate,productdate,price,name,categoryid,itemunit,min_quantaty)values(@storedate,@itemid,@quantaty,@baracode,@expiredate,@productdate,@price,@name,@categoryid,@itemunit,@min) ";

                cn.Open();
                    com.ExecuteNonQuery();
                    com2.ExecuteNonQuery();
                    comfilter.ExecuteNonQuery();
                    com_bill.ExecuteNonQuery();
                    cn.Close();


                    TextBoxid.Text = "";
                    TextBoxname.Text = "";
                    TextBoxprice.Text = "";
                    TextBoxbaracode.Text = "";
                    TextBoxprice.Text = "";
                    TextBoxexpir.Text = "";
                    TextBoxpro_date.Text = "";
                    TextBoxquan.Text = "";

                    Label16.Text = "the Bill number [" + number + "] For  (  " + Label14.Text + ")  ITEM   with TotAll price  [" + Label12.Text + "}  have been added to store";

                }
                GridView1.DataBind();
                GridView2.DataBind();

                   Response.Redirect("report_supplier.aspx");
                string sql3 = "TRUNCATE TABLE buy_bill";
                SqlCommand com3 = new SqlCommand(sql3, cn);
                cn.Open();

                com3.ExecuteNonQuery();
                cn.Close();

                GridView1.DataBind();
                GridView2.DataBind();
            }

        }
    

        
    

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int q = 0;
        double p = 0;
        string strco = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string sql = "select * from buy_bill";
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
             
                q += Convert.ToInt32(dt.Rows[i].Field<int>(1));
                p += Convert.ToDouble(dt.Rows[i].Field<double>(9));
            }
        }
        Label12.Text = Convert.ToString(p);
        Label14.Text = Convert.ToString(q);
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            amount += Convert.ToDouble(DataBinder.Eval(e.Row.DataItem, "totall_price"));
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

    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBoxcategory.Visible = true;
        if (TextBoxcategory.Text != string.Empty)
        {
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "insert into category (categoryname) values( @category)";
            SqlCommand com = new SqlCommand(sql, cn);
            string cat = TextBoxcategory.Text;
            com.Parameters.AddWithValue("category", cat);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close(); TextBoxcategory.Visible = false;
            DropDownListcategory.DataBind();
            TextBoxcategory.Text = string.Empty;
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBoxcategory.Visible = true;
        if (TextBoxcategory.Text != string.Empty)
        {
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "delete category where categoryname=@id";
            SqlCommand com = new SqlCommand(sql, cn);
            string cat = TextBoxcategory.Text;
            com.Parameters.AddWithValue("id", cat);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close(); TextBoxcategory.Visible = false; TextBoxcategory.Text = string.Empty;
            DropDownListcategory.DataBind(); TextBoxcategory.Visible = false;
        }
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
       TextBoxitemunit.Visible = true;

        if (TextBoxitemunit.Text != string.Empty)
        {
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "insert into item_unit  (unit_name) values( @id)";
            SqlCommand com = new SqlCommand(sql, cn);
            string unit= TextBoxitemunit.Text;
            com.Parameters.AddWithValue("id", unit);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close(); 
           
            DropDownListunit.DataBind();
            TextBoxitemunit.Text = string.Empty;
            TextBoxitemunit.Visible = false;
        }

    }

    protected void Button7_Click1(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {

    }

    protected void Button8_Click1(object sender, EventArgs e)
    {
        TextBoxitemunit.Visible = true;

        if (TextBoxitemunit.Text != string.Empty)
        {
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "delete item_unit where unit_name=@id";
            SqlCommand com = new SqlCommand(sql, cn);
            string unit = TextBoxitemunit.Text;
            com.Parameters.AddWithValue("id", unit);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();

            DropDownListunit.DataBind();
            TextBoxitemunit.Text = string.Empty;
            TextBoxitemunit.Visible = false;
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
