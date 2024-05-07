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

public partial class product_super : System.Web.UI.Page
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

        TextBoxaddplace.Visible = false;  
        Label18.Text = Convert.ToString(Session["name"]);
        Label19.Text = Convert.ToString(Session["id"]);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label14.Text = "";
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(str);

        string sql = "";
        SqlCommand com; SqlDataAdapter da; DataTable dt;
        if (RadioButtonList1.SelectedItem.ToString() == "name")
        {
            
             sql = "select * from store where name =@search ";
             com = new SqlCommand(sql, cn);
            com.Parameters.AddWithValue("search", TextBox1.Text);
             da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);
            
            if (dt.Rows.Count > 0)
            {

                for (int i = 0; i < dt.Rows.Count; ++i)
                {
                    string sql2 = "insert into cart_to_store(storedate,itemid,quantaty,baracode,expiredate,productdate,price,name,categoryid,itemunit)values(@storedate,@itemid,@quantaty,@baracode,@expiredate,@productdate,@price,@name,@categoryid,@itemunit) ";
                    SqlCommand com2 = new SqlCommand(sql2, cn);


                    DateTime storedate = Convert.ToDateTime(dt.Rows[i][2].ToString());
                    int itemid = Convert.ToInt32(dt.Rows[i][3].ToString());
                    int quantaty = Convert.ToInt32(dt.Rows[i][4].ToString());
                    string baracode = (dt.Rows[i][5].ToString());
                    DateTime expiredate = Convert.ToDateTime(dt.Rows[i][6].ToString());
                    DateTime productdate = Convert.ToDateTime(dt.Rows[i][7].ToString());
                    double price = Convert.ToDouble(dt.Rows[i][8].ToString());
                    string name = (dt.Rows[i][9].ToString());
                    int categoryid = Convert.ToInt32(dt.Rows[i][10].ToString());
                    string itemunit = (dt.Rows[i][11].ToString());


                    com2.Parameters.AddWithValue("storedate", storedate);
                    com2.Parameters.AddWithValue("itemid", itemid);
                    com2.Parameters.AddWithValue("quantaty", quantaty);
                    com2.Parameters.AddWithValue("baracode", baracode);
                    com2.Parameters.AddWithValue("expiredate", expiredate);
                    com2.Parameters.AddWithValue("productdate", productdate);
                    com2.Parameters.AddWithValue("price", price);
                    com2.Parameters.AddWithValue("name", name);
                    com2.Parameters.AddWithValue("categoryid", categoryid);
                    com2.Parameters.AddWithValue("itemunit", itemunit);
                    cn.Open();
                    com2.ExecuteNonQuery();
                    cn.Close();
                    GridView2.DataBind();
                
                }
            }
        }
            if (RadioButtonList1.SelectedItem.ToString() == "Baracode")
        {
            

            
            

                sql = "select * from store where baracode =@search ";
                com = new SqlCommand(sql, cn);
                com.Parameters.AddWithValue("search", TextBox1.Text);
                da = new SqlDataAdapter(com);
                dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {

                    for (int i = 0; i < dt.Rows.Count; ++i)
                    {
                        string sql2 = "insert into cart_to_store(storedate,itemid,quantaty,baracode,expiredate,productdate,price,name,categoryid,itemunit)values(@storedate,@itemid,@quantaty,@baracode,@expiredate,@productdate,@price,@name,@categoryid,@itemunit) ";
                        SqlCommand com2 = new SqlCommand(sql2, cn);


                        DateTime storedate = Convert.ToDateTime(dt.Rows[i][2].ToString());
                        int itemid = Convert.ToInt32(dt.Rows[i][3].ToString());
                        int quantaty = Convert.ToInt32(dt.Rows[i][4].ToString());
                        string baracode = (dt.Rows[i][5].ToString());
                        DateTime expiredate = Convert.ToDateTime(dt.Rows[i][6].ToString());
                        DateTime productdate = Convert.ToDateTime(dt.Rows[i][7].ToString());
                        double price = Convert.ToDouble(dt.Rows[i][8].ToString());
                        string name = (dt.Rows[i][9].ToString());
                        int categoryid = Convert.ToInt32(dt.Rows[i][10].ToString());
                        string itemunit = (dt.Rows[i][11].ToString());


                        com2.Parameters.AddWithValue("storedate", storedate);
                        com2.Parameters.AddWithValue("itemid", itemid);
                        com2.Parameters.AddWithValue("quantaty", quantaty);
                        com2.Parameters.AddWithValue("baracode", baracode);
                        com2.Parameters.AddWithValue("expiredate", expiredate);
                        com2.Parameters.AddWithValue("productdate", productdate);
                        com2.Parameters.AddWithValue("price", price);
                        com2.Parameters.AddWithValue("name", name);
                        com2.Parameters.AddWithValue("categoryid", categoryid);
                        com2.Parameters.AddWithValue("itemunit", itemunit);
                        cn.Open();
                        com2.ExecuteNonQuery();
                        cn.Close();
                        GridView2.DataBind();

                    }
                }

            }
        if (RadioButtonList1.SelectedItem.ToString() == "Item ID")
        {

            sql = "select * from store where itemid =@search ";
            com = new SqlCommand(sql, cn);
            com.Parameters.AddWithValue("search", TextBox1.Text);
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                for (int i = 0; i < dt.Rows.Count; ++i)
                {
                    string sql2 = "insert into cart_to_store(storedate,itemid,quantaty,baracode,expiredate,productdate,price,name,categoryid,itemunit)values(@storedate,@itemid,@quantaty,@baracode,@expiredate,@productdate,@price,@name,@categoryid,@itemunit) ";
                    SqlCommand com2 = new SqlCommand(sql2, cn);


                    DateTime storedate = Convert.ToDateTime(dt.Rows[i][2].ToString());
                    int itemid = Convert.ToInt32(dt.Rows[i][3].ToString());
                    int quantaty = Convert.ToInt32(dt.Rows[i][4].ToString());
                    string baracode = (dt.Rows[i][5].ToString());
                    DateTime expiredate = Convert.ToDateTime(dt.Rows[i][6].ToString());
                    DateTime productdate = Convert.ToDateTime(dt.Rows[i][7].ToString());
                    double price = Convert.ToDouble(dt.Rows[i][8].ToString());
                    string name = (dt.Rows[i][9].ToString());
                    int categoryid = Convert.ToInt32(dt.Rows[i][10].ToString());
                    string itemunit = (dt.Rows[i][11].ToString());


                    com2.Parameters.AddWithValue("storedate", storedate);
                    com2.Parameters.AddWithValue("itemid", itemid);
                    com2.Parameters.AddWithValue("quantaty", quantaty);
                    com2.Parameters.AddWithValue("baracode", baracode);
                    com2.Parameters.AddWithValue("expiredate", expiredate);
                    com2.Parameters.AddWithValue("productdate", productdate);
                    com2.Parameters.AddWithValue("price", price);
                    com2.Parameters.AddWithValue("name", name);
                    com2.Parameters.AddWithValue("categoryid", categoryid);
                    com2.Parameters.AddWithValue("itemunit", itemunit);
                    cn.Open();
                    com2.ExecuteNonQuery();
                    cn.Close();
                    GridView2.DataBind();

                }
            }
        }
        if (RadioButtonList1.SelectedItem.ToString() == "Category ID")
        {
            sql = "select * from store where categoryid =@search ";
            com = new SqlCommand(sql, cn);
            com.Parameters.AddWithValue("search", TextBox1.Text);
            da = new SqlDataAdapter(com);
            dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                for (int i = 0; i < dt.Rows.Count; ++i)
                {
                    string sql2 = "insert into cart_to_store(storedate,itemid,quantaty,baracode,expiredate,productdate,price,name,categoryid,itemunit)values(@storedate,@itemid,@quantaty,@baracode,@expiredate,@productdate,@price,@name,@categoryid,@itemunit) ";
                    SqlCommand com2 = new SqlCommand(sql2, cn);


                    DateTime storedate = Convert.ToDateTime(dt.Rows[i][2].ToString());
                    int itemid = Convert.ToInt32(dt.Rows[i][3].ToString());
                    int quantaty = Convert.ToInt32(dt.Rows[i][4].ToString());
                    string baracode = (dt.Rows[i][5].ToString());
                    DateTime expiredate = Convert.ToDateTime(dt.Rows[i][6].ToString());
                    DateTime productdate = Convert.ToDateTime(dt.Rows[i][7].ToString());
                    double price = Convert.ToDouble(dt.Rows[i][8].ToString());
                    string name = (dt.Rows[i][9].ToString());
                    int categoryid = Convert.ToInt32(dt.Rows[i][10].ToString());
                    string itemunit = (dt.Rows[i][11].ToString());


                    com2.Parameters.AddWithValue("storedate", storedate);
                    com2.Parameters.AddWithValue("itemid", itemid);
                    com2.Parameters.AddWithValue("quantaty", quantaty);
                    com2.Parameters.AddWithValue("baracode", baracode);
                    com2.Parameters.AddWithValue("expiredate", expiredate);
                    com2.Parameters.AddWithValue("productdate", productdate);
                    com2.Parameters.AddWithValue("price", price);
                    com2.Parameters.AddWithValue("name", name);
                    com2.Parameters.AddWithValue("categoryid", categoryid);
                    com2.Parameters.AddWithValue("itemunit", itemunit);
                    cn.Open();
                    com2.ExecuteNonQuery();
                    cn.Close();
                    GridView2.DataBind();

                }
            }


        } 

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label14.Text = "";
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(str);
        string sql2 = "insert into cart_to_store(storedate,itemid,quantaty,baracode,expiredate,productdate,price,name,categoryid,itemunit)values(@storedate,@itemid,@quantaty,@baracode,@expiredate,@productdate,@price,@name,@categoryid,@itemunit) ";
        SqlCommand com2 = new SqlCommand(sql2, cn);
        if (GridView1.Rows.Count > 0 && GridView1.SelectedValue != null)
        {
            DateTime storedate = Convert.ToDateTime((GridView1.SelectedRow.Cells[3].Text));
                    int itemid = Convert.ToInt32((GridView1.SelectedRow.Cells[4].Text));
                    int quantaty = Convert.ToInt32((GridView1.SelectedRow.Cells[5].Text));
                    string baracode = ((GridView1.SelectedRow.Cells[6].Text));
                    DateTime expiredate = Convert.ToDateTime((GridView1.SelectedRow.Cells[7].Text));
                    DateTime productdate = Convert.ToDateTime((GridView1.SelectedRow.Cells[8].Text));
                    double price = Convert.ToDouble((GridView1.SelectedRow.Cells[9].Text));
                    string name = ((GridView1.SelectedRow.Cells[10].Text));
                    int categoryid = Convert.ToInt32((GridView1.SelectedRow.Cells[11].Text));
                    string itemunit = ((GridView1.SelectedRow.Cells[12].Text));

            com2.Parameters.AddWithValue("storedate", storedate);
            com2.Parameters.AddWithValue("itemid", itemid);
            com2.Parameters.AddWithValue("quantaty", quantaty);
            com2.Parameters.AddWithValue("baracode", baracode);
            com2.Parameters.AddWithValue("expiredate", expiredate);
            com2.Parameters.AddWithValue("productdate", productdate);
            com2.Parameters.AddWithValue("price", price);
            com2.Parameters.AddWithValue("name", name);
            com2.Parameters.AddWithValue("categoryid", categoryid);
            com2.Parameters.AddWithValue("itemunit", itemunit);
            cn.Open();
            com2.ExecuteNonQuery();
            cn.Close();
            GridView2.DataBind();



        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label14.Text = "";
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(str);
        string sqldelete = "TRUNCATE TABLE cart_to_store";
        SqlCommand comd = new SqlCommand(sqldelete, cn);
        cn.Open();
        comd.ExecuteNonQuery();
        cn.Close();
        GridView2.DataBind();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Label14.Text = "";
        if (GridView2.Rows.Count > 0 && GridView2.SelectedValue != null)
        {
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "delete cart_to_store where cartid=@id";
            SqlCommand com = new SqlCommand(sql, cn);
            int id = Convert.ToInt32(GridView2.SelectedRow.Cells[1].Text);
            com.Parameters.AddWithValue("id", id);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();
            GridView2.DataBind();
          
        }
        
    }

    protected void Button5_Click(object sender, EventArgs e)
    {



        if (GridView2.Rows.Count > 0)
        {
            if (GridView2.SelectedValue != null)
            {
                double price = 0;
                int quantaty = 1;
                int category = 1;

                DateTime dateprod = DateTime.Today;
                DateTime dateexpire = DateTime.Today;
               


                string stc = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection cn = new SqlConnection(stc);
                string sql = "insert into item(itembaracode,itemprice,itemquantaty,itemexpiredate,itemprodectdate,itemplace,itemname,categoryid,itemunit,shelf_date,min_sale,emp_id)values(@itembaracode,@itemprice,@itemquantaty,@itemexpiredate,@itemprodectdate,@itemplace,@itemname,@categoryid,@itemunit,@shelf,@min,@emp_id) ";
                SqlCommand com = new SqlCommand(sql, cn);

                string baracode = TextBoxbara.Text;
                if (TextBoxprice.Text == string.Empty)
                {
                    price = Convert.ToDouble(TextBoxprice.Text);
                }
                if (TextBoxquantaty.Text != null)
                {
                    quantaty = Convert.ToInt32(TextBoxquantaty.Text);
                }
                string place = DropDownList2.SelectedItem.ToString();
                string name = TextBoxname.Text;
                if (TextBoxcategory.Text != null)
                {
                    category = Convert.ToInt32(TextBoxcategory.Text);
                }
                string itemunit = DropDownList1.SelectedItem.ToString();
                if (TextBoxexpire.Text != null)
                {
                    //  dateexpire = DateTime.ParseExact(TextBoxexpire.Text, "dd/MM/yyyy", null);
                    dateexpire = Convert.ToDateTime(TextBoxexpire.Text);
                }
                if (TextBoxproduct.Text != null)
                {
                    //  dateprod = DateTime.ParseExact(TextBoxproduct.Text, "dd/MM/yyyy", null);
                    dateprod = Convert.ToDateTime(TextBoxproduct.Text);
                }

                // string shelf1 = DateTime.Today.ToString("dd/mm/yyyy");
                // DateTime shelf = DateTime.ParseExact(shelf1, "dd/MM/yyyy", null);
                DateTime shelf = DateTime.Today;
                int min = Convert.ToInt32(TextBoxmin_sale.Text);
                int emp_id = Convert.ToInt32(Label19.Text);
                com.Parameters.AddWithValue("emp_id", emp_id);

                com.Parameters.AddWithValue("min", min);
                com.Parameters.AddWithValue("shelf", shelf);
                com.Parameters.AddWithValue("itembaracode", baracode);
                com.Parameters.AddWithValue("itemprice", price);
                com.Parameters.AddWithValue("itemquantaty", quantaty);
                com.Parameters.AddWithValue("itemexpiredate", dateexpire);
                com.Parameters.AddWithValue("itemprodectdate", dateprod);
                com.Parameters.AddWithValue("itemplace", place);
                com.Parameters.AddWithValue("itemname", name);
                com.Parameters.AddWithValue("categoryid", category);
                com.Parameters.AddWithValue("itemunit", itemunit);

                string sqlse = "update store set  quantaty=@quantaty where baracode=@baracode ";
                string zero = "delete store where quantaty=0";
                SqlCommand com2 = new SqlCommand(sqlse, cn);
                SqlCommand comd = new SqlCommand(zero, cn);

                int pre_quantaty = Convert.ToInt32(GridView2.SelectedRow.Cells[4].Text);
                int add_quantaty = Convert.ToInt32(TextBoxquantaty.Text);
                int new_quantaty = new_quantaty = pre_quantaty - add_quantaty;



                if (GridView2.SelectedRow.Cells[11].Text == DropDownList1.SelectedItem.ToString())

                {
                    new_quantaty = pre_quantaty - add_quantaty;
                }
                else if (GridView2.SelectedRow.Cells[11].Text == "Dizzen" && DropDownList1.SelectedItem.ToString() == "Peice")

                {
                    new_quantaty = pre_quantaty - (add_quantaty / 12);
                }
                else if (GridView2.SelectedRow.Cells[11].Text == "Peice" && DropDownList1.SelectedItem.ToString() == "Dizzen")
                {
                    new_quantaty = pre_quantaty - (add_quantaty * 12);
                }


                else if (GridView2.SelectedRow.Cells[11].Text == "Box1" && DropDownList1.SelectedItem.ToString() == "Peice")

                {
                    new_quantaty = pre_quantaty - (add_quantaty / 24);
                }
                else if (GridView2.SelectedRow.Cells[11].Text == "Box2" && DropDownList1.SelectedItem.ToString() == "Peice")

                {
                    new_quantaty = pre_quantaty - (add_quantaty / 36);
                }


                else if (GridView2.SelectedRow.Cells[11].Text == "Box1" && DropDownList1.SelectedItem.ToString() == "Dizzen")

                {
                    new_quantaty = pre_quantaty - (add_quantaty / 2);
                }

                else if (GridView2.SelectedRow.Cells[11].Text == "Box2" && DropDownList1.SelectedItem.ToString() == "Dizzen")

                {
                    new_quantaty = pre_quantaty - (add_quantaty / 3);
                }
                else if (GridView2.SelectedRow.Cells[11].Text == "KG")
                {
                    DropDownList1.SelectedValue = "KG";
                }


                else if (GridView2.SelectedRow.Cells[11].Text == "Dizzen" && DropDownList1.SelectedItem.ToString() == "Box1")

                {
                    new_quantaty = pre_quantaty - (add_quantaty * 2);
                }
                else if (GridView2.SelectedRow.Cells[11].Text == "Dizzen" && DropDownList1.SelectedItem.ToString() == "Box2")

                {
                    new_quantaty = pre_quantaty - (add_quantaty * 3);
                }

                else if (GridView2.SelectedRow.Cells[11].Text == "Peice" && DropDownList1.SelectedItem.ToString() == "Box1")

                {
                    new_quantaty = pre_quantaty - (add_quantaty * 24);
                }
                else if (GridView2.SelectedRow.Cells[11].Text == "Peice" && DropDownList1.SelectedItem.ToString() == "Box2")

                {
                    new_quantaty = pre_quantaty - (add_quantaty * 36);
                }

                else { new_quantaty = pre_quantaty - add_quantaty; }








                string bar = GridView2.SelectedRow.Cells[5].Text;
                com2.Parameters.AddWithValue("quantaty", new_quantaty);
                com2.Parameters.AddWithValue("baracode", bar);

                string sqlde = "delete cart_to_store where baracode=@baracode";
                SqlCommand com3 = new SqlCommand(sqlde, cn);
                com3.Parameters.AddWithValue("baracode", bar);

                string confirm = "select * from item where itembaracode=@bara";
                SqlCommand com4 = new SqlCommand(confirm, cn);

                SqlDataAdapter da = new SqlDataAdapter(com4);
                com4.Parameters.AddWithValue("bara", bar);

                DataTable dt = new DataTable();
                dt.Rows.Clear();
                da.Update(dt);
                da.Fill(dt);

                if (pre_quantaty >= quantaty)
                {

                    cn.Open();
                    com.ExecuteNonQuery();
                    com2.ExecuteNonQuery();
                    com3.ExecuteNonQuery();
                    com4.ExecuteNonQuery();
                    comd.ExecuteNonQuery();
                    cn.Close();
                    Label14.Text = "The Item " + name + " his baracode : " + bar + "  price  " + price + " x " + quantaty + "  " + itemunit + " has been added to shelves";
                }

                else { Label14.Text = "the required items less than available items"; }
                GridView1.DataBind();
                GridView2.DataBind();

                if (GridView2.Rows.Count > 0 && GridView2.SelectedValue != null)
                {


                    TextBoxid.Text = GridView2.SelectedRow.Cells[3].Text;
                    TextBoxbara.Text = GridView2.SelectedRow.Cells[5].Text;
                    TextBoxprice.Text = GridView2.SelectedRow.Cells[8].Text;
                    TextBoxcategory.Text = GridView2.SelectedRow.Cells[10].Text;
                    TextBoxexpire.Text = GridView2.SelectedRow.Cells[6].Text;
                    TextBoxname.Text = GridView2.SelectedRow.Cells[9].Text;
                    TextBoxquantaty.Text = GridView2.SelectedRow.Cells[4].Text;
                    TextBoxproduct.Text = GridView2.SelectedRow.Cells[7].Text;


                    DropDownList1.SelectedValue = GridView2.SelectedRow.Cells[11].Text;

                }
            }
        }
        else
        {
            TextBoxid.Text = "";
            TextBoxbara.Text = "";
            TextBoxprice.Text = "";
            TextBoxcategory.Text = "";
            TextBoxexpire.Text = "";
            TextBoxname.Text = "";
            TextBoxquantaty.Text = "";
            TextBoxproduct.Text = "";
            TextBoxmin_sale.Text = "";

        }
        }
       


           




      


    
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        TextBoxid.Text = GridView2.SelectedRow.Cells[3].Text;
        TextBoxbara.Text = GridView2.SelectedRow.Cells[5].Text;
        TextBoxprice.Text = GridView2.SelectedRow.Cells[8].Text;
        TextBoxcategory.Text = GridView2.SelectedRow.Cells[10].Text;
        TextBoxexpire.Text = GridView2.SelectedRow.Cells[6].Text;
        TextBoxname.Text = GridView2.SelectedRow.Cells[9].Text;
        TextBoxquantaty.Text = GridView2.SelectedRow.Cells[4].Text;
        TextBoxproduct.Text = GridView2.SelectedRow.Cells[7].Text;
        if (DropDownList1.Items.FindByValue(GridView2.SelectedRow.Cells[11].Text.ToString().Trim()) != null)
        {
            DropDownList1.SelectedValue = GridView2.SelectedRow.Cells[11].Text.ToString().Trim();

        }
        Label14.Text = "";

    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        
        
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label14.Text = "";
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

    }

    protected void Button8_Click(object sender, EventArgs e)
    {

        TextBoxaddplace.Visible = true;

        if (TextBoxaddplace.Text != string.Empty)
        {
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "insert into places (placename) values( @id)";
            SqlCommand com = new SqlCommand(sql, cn);
            string unit = TextBoxaddplace.Text;
            com.Parameters.AddWithValue("id", unit);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();

           DropDownList2.DataBind();
            TextBoxaddplace.Text = string.Empty;
            TextBoxaddplace.Visible = false;
        }
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        TextBoxaddplace.Visible = true;

        if (TextBoxaddplace.Text != string.Empty)
        {
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "delete places where placename=@id";
            SqlCommand com = new SqlCommand(sql, cn);
            string unit = TextBoxaddplace.Text;
            com.Parameters.AddWithValue("id", unit);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();

            DropDownList2.DataBind();
            TextBoxaddplace.Text = string.Empty;
            TextBoxaddplace.Visible = false;
        }
    }

    protected void SqlDataSource5_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}