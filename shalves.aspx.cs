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

public partial class shalves : System.Web.UI.Page
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

    protected void Button2_Click(object sender, EventArgs e)
    {
         Label1.Text = Convert.ToString(Session["name"]);
        Label4.Text = Convert.ToString(Session["id"]);


        string sco = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(sco);
     
       // string sql = "update item(itembaracode=@itembaracode,itemprice=@itemprice,itemquantaty=@itemquantaty,itemexpiredate=@itemexpiredate,itemprodectdate=@itemprodectdate,itemplace=@itemplace,itemname=@itemname,categoryid=@categoryid,itemunit=@itemunit,shelf_date=@shelf,min_sale=@min,emp_id=@emp_id)where itemid=@itemid ";
        string sql = "update item  set itemprice=@itemprice,itemexpiredate=@itemexpiredate,itemprodectdate=@itemprodectdate,itemplace=@itemplace,itemname=@itemname,categoryid=@categoryid,shelf_date=@shelf,min_sale=@min,emp_id=@emp_id where itemid=@itemid ";
        if (GridView1.SelectedValue != null)
        {
            int itemid = Convert.ToInt32(TextBoxid.Text);
            int min = Convert.ToInt32(TextBoxmin_sale.Text);
            DateTime shelf = Convert.ToDateTime(TextBoxs_helf_date.Text);
            // DateTime shelf=    DateTime.ParseExact(TextBoxs_helf_date.Text, "dd/MM/yyyy", null);
            string baracode = TextBoxbar.Text;
            double price = Convert.ToDouble(TextBoxprice.Text);
            int quantaty = Convert.ToInt32(TextBoxqua.Text);
            DateTime dateexpire = Convert.ToDateTime(TextBoxexp.Text);
            DateTime dateprod = Convert.ToDateTime(TextBoxpro.Text);
            //DateTime dateexpire = DateTime.ParseExact(TextBoxexp.Text, "dd/MM/yyyy", null);
            //DateTime dateprod = DateTime.ParseExact(TextBoxpro.Text, "dd/MM/yyyy", null);
            string place = DropDownList1.SelectedItem.Text;
            string name = TextBoxname.Text;
         int category =Convert.ToInt32( DropDownListcat.SelectedValue);
            string itemunit = DropDownListunit.SelectedValue;
            int emp_id = Convert.ToInt32(Label4.Text);
            SqlCommand com = new SqlCommand(sql, cn);
            
            com.Parameters.AddWithValue("itembaracode", baracode);
            com.Parameters.AddWithValue("itemprice", price);
            com.Parameters.AddWithValue("itemquantaty", quantaty);
            com.Parameters.AddWithValue("itemexpiredate", dateexpire);
            com.Parameters.AddWithValue("itemprodectdate", dateprod);
            com.Parameters.AddWithValue("itemplace", place);
            com.Parameters.AddWithValue("itemname", name);
            com.Parameters.AddWithValue("categoryid", category);
            com.Parameters.AddWithValue("itemunit", itemunit);
            com.Parameters.AddWithValue("itemid", itemid);
            com.Parameters.AddWithValue("emp_id", emp_id);
            com.Parameters.AddWithValue("min", min);
            com.Parameters.AddWithValue("shelf", shelf);
            cn.Open();

            com.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            Labelresult.Text = "The Item ID { " + itemid + "} has been Updated";
           
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Labelresult.Text = "";
        TextBoxid.Text = GridView1.SelectedRow.Cells[10].Text;
        TextBoxmin_sale.Text = GridView1.SelectedRow.Cells[12].Text;
        TextBoxs_helf_date.Text = GridView1.SelectedRow.Cells[11].Text;
        TextBoxbar.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBoxprice.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBoxqua.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBoxpro.Text = GridView1.SelectedRow.Cells[5].Text;
        DropDownList1.SelectedItem.Text = GridView1.SelectedRow.Cells[6].Text;
        TextBoxname.Text = GridView1.SelectedRow.Cells[7].Text;
        TextBoxexp.Text= GridView1.SelectedRow.Cells[4].Text;
        DropDownListcat.SelectedValue= GridView1.SelectedRow.Cells[8].Text;
        DropDownListunit.SelectedValue= GridView1.SelectedRow.Cells[9].Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count > 0)
        {
            if (GridView1.SelectedValue != null)
            {
                string sco = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection cn = new SqlConnection(sco);
              //  string sql = "update item  set itemprice=@itemprice,itemexpiredate=@itemexpiredate,itemprodectdate=@itemprodectdate,itemplace=@itemplace,itemname=@itemname,categoryid=@categoryid,shelf_date=@shelf,min_sale=@min,emp_id=@emp_id where itemid=@itemid ";
                string sql = "update item  set itemquantaty=@quantaty where itemid=@itemid ";
                string sqldam = "insert into damage(baracode,quantaty,expire_date,item_name,category,item_unit,item_id,damage_date,emp_id,place) values (@baracode,@quantaty,@expire_date,@item_name,@category,@item_unit,@item_id,@damage_date,@emp_id,@place)";

                SqlCommand com2 = new SqlCommand(sqldam, cn);

                SqlCommand com = new SqlCommand(sql, cn);

                //    DateTime.ParseExact(TextBoxs_helf_date.Text, "dd/MM/yyyy", null);
                int old_quantaty = Convert.ToInt32(GridView1.SelectedRow.Cells[3].Text);
                int damage_quantaty = Convert.ToInt32(TextBoxqua.Text);
                int quantaty = old_quantaty - damage_quantaty;
                string baracode = GridView1.SelectedRow.Cells[1].Text;
                //  DateTime expire_date = DateTime.ParseExact(GridView1.SelectedRow.Cells[4].Text, "dd/MM/yyyy", null);
                DateTime expire_date = Convert.ToDateTime(GridView1.SelectedRow.Cells[4].Text);

                string item_name = GridView1.SelectedRow.Cells[7].Text;
                string category = GridView1.SelectedRow.Cells[8].Text;
                string item_unit = GridView1.SelectedRow.Cells[9].Text;
                int emp_id = Convert.ToInt32(Label4.Text);
                int itemid = Convert.ToInt32(GridView1.SelectedRow.Cells[10].Text);
                //  string damage_date1 = DateTime.Today.ToString("dd/mm/yyyy");
                // DateTime damage_date = DateTime.ParseExact(damage_date1, "dd/MM/yyyy", null);
                DateTime damage_date = DateTime.Today;
                string place = "shelves";
                com.Parameters.AddWithValue("itemid", itemid);
                com.Parameters.AddWithValue("quantaty", quantaty);

                com2.Parameters.AddWithValue("item_id", itemid);
                com2.Parameters.AddWithValue("quantaty", damage_quantaty);
                com2.Parameters.AddWithValue("baracode", baracode);
                com2.Parameters.AddWithValue("expire_date", expire_date);
                com2.Parameters.AddWithValue("item_name", item_name);
                com2.Parameters.AddWithValue("category", category);
                com2.Parameters.AddWithValue("item_unit", item_unit);
                com2.Parameters.AddWithValue("damage_date", damage_date);
                com2.Parameters.AddWithValue("emp_id", emp_id);
                com2.Parameters.AddWithValue("place", place);

                if (damage_quantaty <= old_quantaty)
                {
                    cn.Open();
                    com2.ExecuteNonQuery();
                    com.ExecuteNonQuery();
                    Labelresult.Text = "The Item ID { " + itemid + "} has been Deleted" + damage_quantaty + " from his quantaty";

                    cn.Close();
           
                }
                else { Labelresult.Text = "The damage quantaty more than available"; }

             
            }
        }
        GridView1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button17_Click(object sender, EventArgs e)
    {

        if (GridView1.Rows.Count > 0)
        {
            if (GridView1.SelectedValue != null)
            {
                string sco = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection cn = new SqlConnection(sco);
                string sql = "delete item where itemid=@itemid";
                SqlCommand com = new SqlCommand(sql, cn);
                int itemid = Convert.ToInt32(GridView1.SelectedRow.Cells[10].Text);
                int old_quantaty = Convert.ToInt32(GridView1.SelectedRow.Cells[3].Text);

                com.Parameters.AddWithValue("itemid", itemid);

                if (old_quantaty == 0)
                {
                    cn.Open();
                    com.ExecuteNonQuery();
                    cn.Close();
                    GridView1.DataBind();
                    Labelresult.Text = "the item :  "  + itemid + "   has been deleted";
                }
                else { Labelresult.Text = " not deleted due to quantaty  more than zero"; }
            }
        }
    }
    protected void Button18_Click(object sender, EventArgs e)
    {
        string sco = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(sco);
        string sql = "delete item where itemid=@itemid";
        for (int i = 0;i< GridView1.Rows.Count ; ++i)
        {
            SqlCommand com = new SqlCommand(sql, cn);
            int itemid = Convert.ToInt32(GridView1.Rows[i].Cells[10].Text);
            int old_quantaty = Convert.ToInt32(GridView1.Rows[i].Cells[3].Text);
            com.Parameters.AddWithValue("itemid", itemid);
            if (old_quantaty == 0)
            {
                cn.Open();
                com.ExecuteNonQuery();
                cn.Close();
               
            }

            GridView1.DataBind();
        }
    }
}