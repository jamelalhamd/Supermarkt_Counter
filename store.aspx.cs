using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System .Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class store : System.Web.UI.Page
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

        Label3.Text = Convert.ToString(Session["name"]);
        Label4.Text = Convert.ToString(Session["id"]);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        string sco = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(sco);
        string sql = "update store set emp_id=@id,expiredate=@exp,productdate=@pro,price=@price,name=@name,categoryid=@cat,min_quantaty=@min_qua where storeid=@storeid";
        if (GridView1.SelectedValue != null)
        {
            int emp_id = Convert.ToInt32(Label4.Text);
            int itemid = Convert.ToInt32(TextBoxid.Text);
            int quantaty = Convert.ToInt32(TextBoxqu.Text);
            string baracode = TextBoxba.Text;

            // DateTime exp = DateTime.ParseExact(TextBoxexp.Text, "mm/dd/yyyy", null);
            //  DateTime pro = DateTime.ParseExact(TextBoxpr.Text, "mm/dd/yyyy", null);
            DateTime exp = Convert.ToDateTime(TextBoxexp.Text);
            DateTime pro = Convert.ToDateTime(TextBoxpr.Text);
           double price = Convert.ToDouble(TextBox6.Text);
            string name = TextBoxname.Text;
            int cat = Convert.ToInt32(DropDownListcat.SelectedValue);
            string itemunit = (DropDownListunit.SelectedValue);
            int min = Convert.ToInt32(TextBoxmin.Text);
            int storeid = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            SqlCommand com = new SqlCommand(sql, cn);
            com.Parameters.AddWithValue("id", emp_id);
            com.Parameters.AddWithValue("storeid", storeid);
            com.Parameters.AddWithValue("itemid", itemid);
            com.Parameters.AddWithValue("quantaty", quantaty);
            com.Parameters.AddWithValue("baracode", baracode);
            com.Parameters.AddWithValue("exp", exp);
            com.Parameters.AddWithValue("pro", pro);
            com.Parameters.AddWithValue("price", price);
            com.Parameters.AddWithValue("name", name);
            com.Parameters.AddWithValue("cat", cat);
            com.Parameters.AddWithValue("itemunit", itemunit);
            com.Parameters.AddWithValue("min_qua", min);

            cn.Open();

            com.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            Labelresult.Text = "The Item ID { " + itemid + "} has been Updated";
            
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (GridView1.SelectedValue != null)
        {
            string sco = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(sco);
       
            string sql = "update store set quantaty=@quantaty where storeid=@storeid";
            string sqldam = "insert into damage(baracode,quantaty,expire_date,item_name,category,item_unit,item_id,damage_date,emp_id,place) values (@baracode,@quantaty,@expire_date,@item_name,@category,@item_unit,@item_id,@damage_date,@emp_id,@place)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlCommand com2 = new SqlCommand(sqldam, cn);
            int item_id =Convert.ToInt32( GridView1.SelectedRow.Cells[4].Text);
            int old_quantaty = Convert.ToInt32( GridView1.SelectedRow.Cells[5].Text);
            int damage_quantay = Convert.ToInt32(TextBoxqu.Text);
            int new_quantaty = old_quantaty - damage_quantay;
            string baracode = GridView1.SelectedRow.Cells[6].Text;
            DateTime expire_date =Convert.ToDateTime( GridView1.SelectedRow.Cells[7].Text);
            TextBoxpr.Text = GridView1.SelectedRow.Cells[8].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[9].Text;
          string  item_name = GridView1.SelectedRow.Cells[10].Text;
            string category = GridView1.SelectedRow.Cells[11].Text;
           string item_unit = GridView1.SelectedRow.Cells[12].Text;
            TextBoxmin.Text = GridView1.SelectedRow.Cells[13].Text;
            int storeid = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            // DateTime damage_date = DateTime.ParseExact(TextBoxexp.Text, "mm/dd/yyyy", null);
            DateTime damage_date = Convert.ToDateTime(TextBoxexp.Text);
                 string place = "Store";
            int emp_id = Convert.ToInt32(Label4.Text);
            com2.Parameters.AddWithValue("item_id", item_id);
            com2.Parameters.AddWithValue("quantaty", damage_quantay);
            com2.Parameters.AddWithValue("baracode", baracode);
            com2.Parameters.AddWithValue("expire_date", expire_date);
            com2.Parameters.AddWithValue("item_name", item_name);
            com2.Parameters.AddWithValue("category", category);
            com2.Parameters.AddWithValue("item_unit", item_unit);
            com2.Parameters.AddWithValue("damage_date", damage_date);
            com.Parameters.AddWithValue("storeid", storeid);
            com2.Parameters.AddWithValue("place", place);
            com2.Parameters.AddWithValue("emp_id", emp_id);
            com.Parameters.AddWithValue("quantaty", new_quantaty);
           

            if (damage_quantay < old_quantaty)
            {
                cn.Open();

                com2.ExecuteNonQuery();
                com.ExecuteNonQuery();


                cn.Close();
                Labelresult.Text = "The Store ID { " + storeid + "} has been Deleted" + damage_quantay + " from his quantaty";
            }
            else {
                Labelresult.Text = "The damage quantaty more than available";
            }
         
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBoxid.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBoxqu.Text = GridView1.SelectedRow.Cells[5].Text;
        TextBoxba.Text = GridView1.SelectedRow.Cells[6].Text;
        TextBoxexp.Text = GridView1.SelectedRow.Cells[7].Text;
        TextBoxpr.Text = GridView1.SelectedRow.Cells[8].Text;
        TextBox6.Text = GridView1.SelectedRow.Cells[9].Text;
        TextBoxname.Text = GridView1.SelectedRow.Cells[10].Text;
        DropDownListcat.SelectedValue = GridView1.SelectedRow.Cells[11].Text;
        DropDownListunit.SelectedValue = GridView1.SelectedRow.Cells[12].Text;
        TextBoxmin.Text = GridView1.SelectedRow.Cells[13].Text;
        Labelresult.Text = "";
    }

    protected void Button17_Click(object sender, EventArgs e)
    {
        string sco = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(sco);
        string sql = "delete store where storid=@storeid";
        for (int i = 0; i < GridView1.Rows.Count; ++i)
        {
            SqlCommand com = new SqlCommand(sql, cn);
            int storeid = Convert.ToInt32(GridView1.Rows[i].Cells[1].Text);
            int old_quantaty = Convert.ToInt32(GridView1.Rows[i].Cells[5].Text);
            com.Parameters.AddWithValue("storid", storeid);
            if (old_quantaty == 0)
            {
                cn.Open();
                com.ExecuteNonQuery();
                cn.Close();

            }

            GridView1.DataBind();
        }
    }
    protected void Button18_Click(object sender, EventArgs e)
    {

        if (GridView1.Rows.Count > 0)
        {
            if (GridView1.SelectedValue != null)
            {
                string sco = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection cn = new SqlConnection(sco);
                string sql = "delete store where storid=@storeid";
                SqlCommand com = new SqlCommand(sql, cn);
                int storeid = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
                int old_quantaty = Convert.ToInt32(GridView1.SelectedRow.Cells[5].Text);

                com.Parameters.AddWithValue("storeid", storeid);

                if (old_quantaty == 0)
                {
                    cn.Open();
                    com.ExecuteNonQuery();
                    cn.Close();
                    GridView1.DataBind();
                    Labelresult.Text = "the item :  " + storeid + "   has been deleted";
                }
                else { Labelresult.Text = " not deleted due to quantaty  more than zero"; }
            }
        }
    }}
