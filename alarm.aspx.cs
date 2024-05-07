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
public partial class alarm : System.Web.UI.Page
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
        string stc2 = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn2 = new SqlConnection(stc2);
        // string sqlalarm = "insert into alarm (name,baracode,itemid,alarm_date,quantaty,itemunit) values(@name,@baracode,@itemid,@alarm_date,@quantaty,@itemunit) where quantaty<@min";
        string sql_alarm = "insert into alarm (name,baracode,itemid,alarm_date,quantaty,itemunit,remark) values(@name,@baracode,@itemid,@alarm_date,@quantaty,@itemunit,@remark)";
        string sql_delete = "TRUNCATE TABLE alarm";

        string sql_bring = "select * from item";
        SqlCommand comdele = new SqlCommand(sql_delete, cn2);
        {

            cn2.Open();
            comdele.ExecuteNonQuery();

            

            cn2.Close();
        }
        SqlCommand comd_bring = new SqlCommand(sql_bring, cn2);
        SqlDataAdapter da = new SqlDataAdapter(comd_bring);
        DataTable dt = new DataTable();
        da.Fill(dt);


        if (dt.Rows.Count > 0)
        {

            for (int i = 0; i < dt.Rows.Count; ++i)
            {


                string name = (dt.Rows[i][6].ToString());
                string baracode = (dt.Rows[i][0].ToString());
                int itemid = Convert.ToInt32(dt.Rows[i][9].ToString());

                int quantaty = Convert.ToInt32(dt.Rows[i][2].ToString());
                string itemunit = (dt.Rows[i][8].ToString());
                int min = Convert.ToInt32(dt.Rows[i][11].ToString());
                DateTime expiredate = Convert.ToDateTime(dt.Rows[i][3].ToString());

                string remark = "";


                string today1 = DateTime.Today.ToString("dd/mm/yyyy");
                DateTime now = DateTime.ParseExact(today1, "dd/mm/yyyy", null);
                if (quantaty <= min && now > expiredate)
                {
                    remark = " Less Quantaty and Expire in shalves";
                }

              else  if (quantaty <= min)
                {
                    remark = "Less Quantaty IN Shalves";
                }

                else if (now > expiredate)
                {
                    remark = " Expired Item in shalves";
                }
                

                SqlCommand com3 = new SqlCommand(sql_alarm, cn2);
                com3.Parameters.AddWithValue("name", name);
                com3.Parameters.AddWithValue("remark", remark);
                com3.Parameters.AddWithValue("baracode", baracode);
                com3.Parameters.AddWithValue("itemid", itemid);
                com3.Parameters.AddWithValue("alarm_date", now);
                com3.Parameters.AddWithValue("quantaty", quantaty);
                com3.Parameters.AddWithValue("itemunit", itemunit);

                com3.Parameters.AddWithValue("min", min);


               if (quantaty <= min || now > expiredate)
                {
                    {

                        cn2.Open();
                     

                        com3.ExecuteNonQuery();

                        cn2.Close();
                    }

                }
            }

        }
        string sqlstore = "select * from store";
        SqlCommand com_store = new SqlCommand(sqlstore, cn2);
        SqlDataAdapter da_store = new SqlDataAdapter(com_store);
        DataTable dt_store = new DataTable();
        da_store.Fill(dt_store);


        if (dt_store.Rows.Count > 0)
        {
            for (int i = 0; i < dt_store.Rows.Count; ++i)
            {






                 DateTime  storedate =Convert.ToDateTime (dt_store.Rows[i][2].ToString());
                
                

                
                int itemid = Convert.ToInt32((dt_store.Rows[i][3].ToString()));
                int quantaty = Convert.ToInt32((dt_store.Rows[i][4].ToString()));
                string baracode = ((dt_store.Rows[i][5].ToString()));
                DateTime expiredate = Convert.ToDateTime((dt_store.Rows[i][6].ToString()));
                DateTime productdate = Convert.ToDateTime((dt_store.Rows[i][7].ToString()));
                double price = Convert.ToDouble((dt_store.Rows[i][8].ToString()));
                string name = ((dt_store.Rows[i][9].ToString()));
                int categoryid = Convert.ToInt32((dt_store.Rows[i][10].ToString()));
                string itemunit = ((dt_store.Rows[i][11].ToString()));

                string remark = "";
                int min = Convert.ToInt32(dt_store.Rows[i][12].ToString());


                string today1 = DateTime.Today.ToString("dd/mm/yyyy");
                DateTime today = DateTime.ParseExact(today1, "dd/mm/yyyy", null);


                if (quantaty <= min && today > expiredate)
                {
                    remark = " Less Quantaty and Expire in store";
                }
                if (quantaty <= min)
                {
                    remark = "Less Quantaty IN Store";
                }

                else if (today > expiredate)
                {
                    remark = " Expired Item in store";
                }
              
                SqlCommand com_store1 = new SqlCommand(sql_alarm, cn2);
                com_store1.Parameters.AddWithValue("name", name);
                com_store1.Parameters.AddWithValue("remark", remark);
                com_store1.Parameters.AddWithValue("baracode", baracode);
                com_store1.Parameters.AddWithValue("itemid", itemid);
                com_store1.Parameters.AddWithValue("alarm_date", today);
                com_store1.Parameters.AddWithValue("quantaty", quantaty);
                com_store1.Parameters.AddWithValue("itemunit", itemunit);


                com_store1.Parameters.AddWithValue("min", min);


                if (quantaty <= min || today > expiredate)
                {

                    cn2.Open();

                  
                 //   com_store1.ExecuteNonQuery();

                    cn2.Close();
                }
            }
        }

        string sql_less = "SELECT item.min_sale AS min, SUM(sale.salecount) AS quantaty, sale.baracode AS bar, sale.name AS na, item.itemid AS id, sale.itemunit AS unit FROM item INNER JOIN sale ON item.itembaracode = sale.baracode GROUP BY item.min_sale, sale.baracode, sale.name, item.itemid, sale.itemunit where sale.saledate>=DATEADD(m,-3,GETDATE())";
        SqlCommand com_less = new SqlCommand(sql_less, cn2);
        SqlDataAdapter da_less = new SqlDataAdapter(com_less);
        DataTable dt_less = new DataTable();
        if (dt_less.Rows.Count > 0)
        {
            for (int i = 0; i < dt_less.Rows.Count; ++i)
            {
                int min = Convert.ToInt32(dt_less.Rows[i][0].ToString());
                int quantaty = Convert.ToInt32((dt_less.Rows[i][1].ToString()));
                string baracode = ((dt_less.Rows[i][2].ToString()));
                string name = ((dt_less.Rows[i][3].ToString()));
                int itemid = Convert.ToInt32((dt_less.Rows[i][4].ToString()));
                string itemunit = ((dt_less.Rows[i][5].ToString()));

                string remark = "Less Required"; ;
                SqlCommand com4 = new SqlCommand(sql_alarm, cn2);
                com4.Parameters.AddWithValue("name", name);
                com4.Parameters.AddWithValue("remark", remark);
                com4.Parameters.AddWithValue("baracode", baracode);
                com4.Parameters.AddWithValue("itemid", itemid);

                string today1 = DateTime.Today.ToString("dd/mm/yyyy");
                DateTime now = DateTime.ParseExact(today1, "dd/mm/yyyy", null);
                com4.Parameters.AddWithValue("alarm_date",now );
                com4.Parameters.AddWithValue("quantaty", quantaty);
                com4.Parameters.AddWithValue("itemunit", itemunit);

                com4.Parameters.AddWithValue("itemunit", itemunit);
                cn2.Open();

                com4.ExecuteNonQuery();
                cn2.Close();


            }
        }
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
    }
        
    } 
   
   
