using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Security.Principal;
using System.Configuration;

public partial class Main : System.Web.UI.MasterPage
{


    
    int RowCount;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Timeout = 20;

          Label1.Text = "";
       
   

        if (Session["name"] != null)
        {

          

            


            welcome.Text = "WELLCOME: " + Session["name"].ToString();


           
            }
        





    }



      

    private void RemoveNodeRecurrently(TreeNodeCollection childNodeCollection, string text)
    {
    
    }


    protected void lbtLogout_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["name"] != null)
        {
            FormsAuthentication.SignOut();
            Session["name"] = null;
            Session.Abandon();
            Session.RemoveAll();
            Session.Clear();
        }
        Response.Redirect("~/default.aspx");
       

    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
        Label1.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);
         
         

            RowCount = dt.Rows.Count;
           
            for (int i = 0; i < RowCount; i++)
            {

                if (dt.Rows[i]["role_id"].ToString() == "5")
                {
                    Response.Redirect("~/employee.aspx");

                }
                else { Label1.Text = "* you not authorised"; }

            }
        }
    }



    protected void Button3_Click(object sender, EventArgs e)
    {

        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ;
            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {

                if (dt.Rows[i]["role_id"].ToString() == "2")
                {
                    Response.Redirect("~/bill.aspx");

                }
                else { Label1.Text = "* you not authorised"; }
            }
        }
    }
        
    

    protected void Button4_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ;
            RowCount = dt.Rows.Count;
                    for (int i = 0; i < RowCount; i++)
                    {

                        if (dt.Rows[i]["role_id"].ToString() == "7")
                        {
                            Response.Redirect("~/product_store.aspx");

                        }
                        else { Label1.Text = "* you not authorised"; }
                    }
                }
            }
        
    

    protected void Button5_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);

            RowCount = dt.Rows.Count;
                    for (int i = 0; i < RowCount; i++)
                    {

                        if (dt.Rows[i]["role_id"].ToString() == "8")
                        {
                            Response.Redirect("~/product_super.aspx");

                        }
                        else { Label1.Text = "* you not authorised"; }
                    }
                }
            }
        
    

    protected void Button6_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);

            RowCount = dt.Rows.Count;
                    for (int i = 0; i < RowCount; i++)
                    {

                        if (dt.Rows[i]["role_id"].ToString() == "9")
                        {
                            Response.Redirect("~/store.aspx");

                        }
                        else { Label1.Text = "* you not authorised"; }
                    }
                }
            
        
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);

            RowCount = dt.Rows.Count;
                    for (int i = 0; i < RowCount; i++)
                    {

                        if (dt.Rows[i]["role_id"].ToString() == "3")
                        {
                            Response.Redirect("~/damage.aspx");

                        }
                        else { Label1.Text = "* you not authorised"; }
                    }
                }
            
        
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);

            RowCount = dt.Rows.Count;
                    for (int i = 0; i < RowCount; i++)
                    {

                        if (dt.Rows[i]["role_id"].ToString() == "1")
                        {
                            Response.Redirect("~/alarm.aspx");

                        }
                        else { Label1.Text = "* you not authorised"; }
                    }
                }
            
        
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);

            RowCount = dt.Rows.Count;
                    for (int i = 0; i < RowCount; i++)
                    {

                        if (dt.Rows[i]["role_id"].ToString() == "4")
                        {
                            Response.Redirect("~/dash.aspx");

                        }
                        else { Label1.Text = "* you not authorised"; }
                    }
                }
            
        
    }

    protected void Button11_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);

            RowCount = dt.Rows.Count;
                    for (int i = 0; i < RowCount; i++)
                    {

                        if (dt.Rows[i]["role_id"].ToString() == "11")
                        {
                            Response.Redirect("~/promotion.aspx");

                        }
                        else { Label1.Text = "* you not authorised"; }
                    }
                }
            
        
    }

    protected void Button12_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        Response.Redirect("~/ChangePassword.aspx");

    }

    protected void Button13_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);

            RowCount = dt.Rows.Count;
                    for (int i = 0; i < RowCount; i++)
                    {

                        if (dt.Rows[i]["role_id"].ToString() == "6")
                        {
                            Response.Redirect("~/filter_manager.aspx");

                        }
                        else { Label1.Text = "* you not authorised"; }
                    }
                }
            
        
    }

    protected void Button14_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);

            RowCount = dt.Rows.Count;
                    for (int i = 0; i < RowCount; i++)
                    {

                        if (dt.Rows[i]["role_id"].ToString() == "6")
                        {
                            Response.Redirect("~/filter_manager -buy.aspx");

                        }
                        else { Label1.Text = "* you not authorised"; }
                    }
                }
            }
        
    

   

    protected void Button15_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        Response.Redirect("~/filter_emp _buy.aspx");
    }

    protected void Button16_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        Response.Redirect("~/filter_emp.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (Session["id"] != null)
        {
            string ids = Session["id"].ToString();
            int id = Convert.ToInt32(ids);
            Label2.Visible = true;
            Label2.Text = ids;

            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "SELECT  * FROM   role_emp  WHERE(emp_id = @emp_id)";
            SqlCommand com = new SqlCommand(sql, cn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            com.Parameters.AddWithValue("emp_id", id);
            DataTable dt = new DataTable();
            da.Fill(dt);

            RowCount = dt.Rows.Count;
            for (int i = 0; i < RowCount; i++)
            {

                if (dt.Rows[i]["role_id"].ToString() == "10")
                {
                    Response.Redirect("~/shalves.aspx");

                }
                else { Label1.Text = "* you not authorised"; }
            }
        }


    }
}
