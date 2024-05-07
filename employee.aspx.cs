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

public partial class employee : System.Web.UI.Page
{
    private static ListItemCollection lstDeSelectedValues = new ListItemCollection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {


            Session.Abandon();
            Session.RemoveAll();
            Session.Clear();
            Response.Redirect("~/default.aspx");
        }

        if (!IsPostBack)
        {
            lstDeSelectedValues = CheckBoxList1.Items;
            Label6.Text = " ";
        }
    }

    protected void SqlDataSourcesuper_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
      //  GridView1.DataBind();
    }

    protected void SqlDataSourcesuper_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void SqlDataSource2_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void SqlDataSource2_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void SqlDataSource2_Deleted(object sender, SqlDataSourceStatusEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void SqlDataSource3_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void SqlDataSource3_Deleted(object sender, SqlDataSourceStatusEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void SqlDataSource3_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void SqlDataSource3_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {
        GridView1.DataBind();
    }

    protected void buttoninsert_Click(object sender, EventArgs e)
    {
        Label6.Text = " ";
        TextBoxposition.Visible = false;
        string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(str);
        string sql = "insert into employee(employeefullname,employeephone,employeegender,employeeaddress,employeepassword,employeeposition,email) values (@name,@phone,@gender,@address,@password,@position,@email)";

        string name = TextBoxname.Text;
        string phone = TextBoxphone.Text;
        string gender = DropDownListgender.SelectedValue;
        string address = TextBoxaddress.Text;
        string position = DropDownListposition.SelectedValue;
        string password = TextBoxpass.Text;
        string mail = TextBoxemail.Text;
        SqlCommand com = new SqlCommand(sql, cn);
        com.Parameters.AddWithValue("name", name);
        com.Parameters.AddWithValue("phone", phone);
        com.Parameters.AddWithValue("gender", gender);
        com.Parameters.AddWithValue("address", address);
        com.Parameters.AddWithValue("password", password);
        com.Parameters.AddWithValue("position", position);
        com.Parameters.AddWithValue("email", mail);
        cn.Open();
        com.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        if (GridView1.Rows.Count > 0 && GridView1.SelectedValue !=null)
        {
            TextBoxid.Visible = true;
            Label1.Visible = true;
            TextBoxaddress.Text = GridView1.SelectedRow.Cells[5].Text;
         
            DropDownListgender.SelectedValue = GridView1.SelectedRow.Cells[4].Text;
            TextBoxid.Text = GridView1.SelectedRow.Cells[1].Text;
            DropDownListposition.SelectedValue = GridView1.SelectedRow.Cells[7].Text;

            TextBoxemail.Text = GridView1.SelectedRow.Cells[8].Text;
            TextBoxname.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBoxphone.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBoxpass.Text = GridView1.SelectedRow.Cells[6].Text;

            Label6.Text = " *  one Employee  has been added";


        }
        //for (int i = 0; i < CheckBoxList1.Items.Count; ++i)
        //{
        //    if (CheckBoxList1.Items[i].Selected == true)
        //    {
        //        string insert_role = "insert into role_emp (emp_id,role_id) values(@emp_id,@role_id)";
        //        SqlCommand com_role = new SqlCommand(insert_role, cn);
        //        com_role.Parameters.AddWithValue("emp_id",Convert.ToInt32(TextBoxid.Text));
        //        string role_id1 = (CheckBoxList1.Items[i].Value);
        //        int role = Convert.ToInt32(role_id1);
        //        com_role.Parameters.AddWithValue("role_id",role);
        //        cn.Open();
        //        com_role.ExecuteNonQuery();
        //        cn.Close();
               

        //    }
        //}

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBoxid.Visible = true;
        Label6.Text = " ";
        Label1.Visible = true;
        TextBoxaddress.Text = GridView1.SelectedRow.Cells[5].Text;
        TextBoxemail.Text = GridView1.SelectedRow.Cells[8].Text;
        TextBoxname.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBoxphone.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBoxpass.Text = GridView1.SelectedRow.Cells[6].Text;
        DropDownListgender.SelectedValue= GridView1.SelectedRow.Cells[4].Text;
        TextBoxid.Text = GridView1.SelectedRow.Cells[1].Text;
        DropDownListposition.SelectedValue = GridView1.SelectedRow.Cells[7].Text;
    }

    protected void DropDownListposition_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (GridView1.SelectedValue != null)
        {
            TextBoxposition.Visible = false;
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string sql = "delete  employee where employeeID=@id;";


            SqlCommand com = new SqlCommand(sql, cn);
            int id = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            com.Parameters.AddWithValue("id", id);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            TextBoxid.Visible = true;
            Label1.Visible = true;
            if (GridView1.SelectedValue != null)
            {
                TextBoxaddress.Text = GridView1.SelectedRow.Cells[5].Text;
                TextBoxemail.Text = GridView1.SelectedRow.Cells[8].Text;
                TextBoxname.Text = GridView1.SelectedRow.Cells[2].Text;
                TextBoxphone.Text = GridView1.SelectedRow.Cells[3].Text;
                TextBoxpass.Text = GridView1.SelectedRow.Cells[6].Text;
                DropDownListgender.SelectedValue = GridView1.SelectedRow.Cells[4].Text;
                TextBoxid.Text = GridView1.SelectedRow.Cells[1].Text;
                DropDownListposition.SelectedValue = GridView1.SelectedRow.Cells[7].Text;
            }
            Label6.Text = " *  one Employee  has been deleted";
        }
        else { Label6.Text = " *  one Employee should be  seleted"; }
    }

    protected void Button2_Click(object sender, EventArgs e) {
        if (GridView1.SelectedValue != null)
        {
            TextBoxposition.Visible = false;
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            // string sql = "UPDATE employee set employeefullname=@name,employeephone=@phone,employeegender=@gender,employeeaddress=@address,employeepassword=@password,employeeposition=@position,email=@email Where employeeID=@id";
            string sql = "UPDATE employee set employeefullname=@name,employeephone=@phone,employeegender=@gender,email=@email,employeeposition=@position,employeeaddress=@address Where employeeID=@id";
            int id = Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text);
            string name = TextBoxname.Text;
            string phone = TextBoxphone.Text;
            string gender = DropDownListgender.SelectedValue;
            string address = TextBoxaddress.Text;
            string position = DropDownListposition.SelectedValue;
            string password = TextBoxpass.Text;
            string mail = TextBoxemail.Text;
            SqlCommand com = new SqlCommand(sql, cn);
            com.Parameters.AddWithValue("name", name);
            com.Parameters.AddWithValue("phone", phone);
            com.Parameters.AddWithValue("gender", gender);
            com.Parameters.AddWithValue("address", address);
            com.Parameters.AddWithValue("password", password);
            com.Parameters.AddWithValue("position", position);
            com.Parameters.AddWithValue("email", mail);
            com.Parameters.AddWithValue("id", id);
            cn.Open();
            com.ExecuteNonQuery();
            cn.Close();
            GridView1.DataBind();
            Label6.Text = " *  one Employee  has be updated";
            TextBoxaddress.Text = "";
            TextBoxemail.Text = "";
            TextBoxname.Text = "";
            TextBoxphone.Text = "";
            TextBoxpass.Text = "";
            TextBoxid.Visible = false;
            Label1.Visible = false;
        }
        else { Label6.Text = " *  one Employee should be  seleted"; }
        //string delete_role = "delete role_emp  where emp_id=@emp_id";
        //SqlCommand dcom_role = new SqlCommand(delete_role, cn);
        //dcom_role.Parameters.AddWithValue("emp_id", Convert.ToInt32(TextBoxid.Text));

        //cn.Open();
        //dcom_role.ExecuteNonQuery();
        //cn.Close();


        //for (int i = 0; i < CheckBoxList1.Items.Count; ++i)
        //{
        //    if (CheckBoxList1.Items[i].Selected == true)
        //    {
        //        string insert_role = "insert into role_emp (emp_id,role_id) values(@emp_id,@role_id)";
        //        SqlCommand com_role = new SqlCommand(insert_role, cn);
        //        com_role.Parameters.AddWithValue("emp_id", Convert.ToInt32(TextBoxid.Text));
        //        string role_id1 = (CheckBoxList1.Items[i].Value);
        //        int role = Convert.ToInt32(role_id1);
        //        com_role.Parameters.AddWithValue("role_id", role);
        //        cn.Open();
        //        com_role.ExecuteNonQuery();
        //        cn.Close();


        //    }
        //}


    }

    protected void TextBoxemail_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label6.Text = " ";
        TextBoxaddress.Text = "";
        TextBoxemail.Text = "";
        TextBoxname.Text = "";
        TextBoxphone.Text = ""; TextBoxposition.Visible = false;
        TextBoxpass.Text = "";
        TextBoxid.Visible = false;
         Label1.Visible = false;
        GridView1.DataBind();
        
        
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBoxposition.Visible = true;

        if (TextBoxposition.Text != string.Empty)
        {
            DropDownListposition.Items.Add(TextBoxposition.Text);
            TextBoxposition.Text = string.Empty;
            TextBoxposition.Visible = false;
        }
            
      

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBoxposition.Visible = false;
        DropDownListposition.Items.Remove(DropDownListposition.SelectedItem);
    }

    protected void Button17_Click(object sender, EventArgs e)
    {

        if (GridView1.SelectedValue != null)
        {
            Label6.Text = " ";
            string str = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection cn = new SqlConnection(str);
            string delete_role = "delete role_emp  where emp_id=@emp_id";
            SqlCommand dcom_role = new SqlCommand(delete_role, cn);
            dcom_role.Parameters.AddWithValue("emp_id", Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text));

            cn.Open();
            dcom_role.ExecuteNonQuery();
            cn.Close();


            for (int i = 0; i < CheckBoxList1.Items.Count; ++i)
            {
                if (CheckBoxList1.Items[i].Selected == true)
                {
                    string insert_role = "insert into role_emp (emp_id,role_id) values(@emp_id,@role_id)";
                    SqlCommand com_role = new SqlCommand(insert_role, cn);
                    com_role.Parameters.AddWithValue("emp_id", Convert.ToInt32(GridView1.SelectedRow.Cells[1].Text));
                    string role_id1 = (CheckBoxList1.Items[i].Value);
                    int role = Convert.ToInt32(role_id1);

                    com_role.Parameters.AddWithValue("role_id", role);
                    cn.Open();
                    com_role.ExecuteNonQuery();
                    cn.Close();

                    Label6.Text = " * Roles are added for  employee";
                }
            }
        }
        else Label6.Text = " * please select employee";
    }
}