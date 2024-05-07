using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Runtime.InteropServices;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }



    string strqry, Username, Password,name;
    int RowCount;
    protected void btnAdlogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
        {
            strqry = "Select * from employee";
            using (SqlCommand cmd = new SqlCommand(strqry))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, con))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
              
                    RowCount = dt.Rows.Count;
                    for (int i = 0; i < RowCount; i++)
                    {

                        Username = dt.Rows[i]["employeeID"].ToString();

                        Password = dt.Rows[i]["employeepassword"].ToString();

                         name = dt.Rows[i]["employeefullname"].ToString();


                        if (Username == txtUnameAd.Text.ToLower() && Password == txtPassAd.Text)
                        {
                            Session["id"] = txtUnameAd.Text;
                            Session["name"] = name;

                        
                            Response.Redirect("~/Home.aspx");
                         

                            btnAdlogin.Text =name+"_"+ Username;
                        }
                        else
                        {
                            spnmsg.Visible = true;
                        }
                    }
                }
            }
        }
    }

    protected void txtUnameAd_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtPassAd_TextChanged(object sender, EventArgs e)
    {

    }
}