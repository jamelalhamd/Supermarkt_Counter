using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangePassword : System.Web.UI.Page
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
    string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    string str = null;
    SqlCommand com;
    byte up;

    protected void btnChange_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "select * from employee ";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();
        while (reader.Read())
        {
            if (txtOldpwd.Text == reader["employeepassword"].ToString())
            {
                up = 1;
            }
        }
        reader.Close();
        con.Close();
        if (up == 1)
        {
            con.Open();
            str = "update employee set employeepassword=@Password where employeefullname='" + Session["name"].ToString() + "'";
            com = new SqlCommand(str, con);
            com.Parameters.Add(new SqlParameter("@Password", SqlDbType.VarChar, 50));
            com.Parameters["@Password"].Value = txtNewpwd.Text;
            com.ExecuteNonQuery();
            con.Close();
            lblMsg.Text = "Password changed Successfully";
        }
        else
        {
            lblMsg.Text = "Please enter correct Current password";
        }


    }
}