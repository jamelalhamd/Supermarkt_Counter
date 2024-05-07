using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Configuration;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class ForgetPwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        lblMsg.Text = " ";
        string stc = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection cn = new SqlConnection(stc);
        int id = Convert.ToInt32(Session["id"]);
        string sql = "select * from employee where (email=@email)";
        SqlCommand com = new SqlCommand(sql, cn);
        string email = txtEmail.Text;
        com.Parameters.AddWithValue("email", email);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        cn.Open();
        com.ExecuteNonQuery();
        cn.Close();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            for (int i = 0; i < dt.Rows.Count; ++i)
            {

                string dt_mail = dt.Rows[i][7].ToString();
                if (dt_mail.ToLower() == email.ToLower())
                {

                    MailMessage e_mail = new MailMessage();
                    e_mail.From = new MailAddress("j_hamad83@hotmail.com");
                    e_mail.To.Add(email);
                    e_mail.Subject = "Password";
                    e_mail.Body = "Your Password in Clean Home Supervisor is  :    " + dt.Rows[0][5].ToString();
                    e_mail.IsBodyHtml = true;
                    SmtpClient smpt1 = new SmtpClient("smtp.live.com");
                    smpt1.Port = 25;

                    smpt1.UseDefaultCredentials = false;
                    smpt1.EnableSsl = true;
                    System.Net.NetworkCredential net = new System.Net.NetworkCredential();
                    net.UserName = "j_hamad83@hotmail.com";
                    net.Password = "J1925176";
                    smpt1.Credentials = net;
                    smpt1.Send(e_mail);
                    lblMsg.Text = " your password send sucessfuly to your mail";

                }



                else lblMsg.Text = " the mail is not available";
            }
        }
        txtEmail.Text = "";
    }
       protected void Button1_Click(object sender, EventArgs e)
    {


      

        //if (dt.Rows.Count > 0)
        //{
          
        //    {
        //        MailMessage e_mail = new MailMessage();
        //        e_mail.From = new MailAddress("furat_alsham@hotmail.com");
        //        e_mail.To.Add(email);
        //        e_mail.Subject = "كلمة المرور";
        //        e_mail.Body = "السلام عليكم كلمة المرور    :    " + dt.Rows[0][2].ToString();
        //        e_mail.IsBodyHtml = true;
        //        SmtpClient smpt1 = new SmtpClient("smtp.live.com");
        //        smpt1.Port = 25;

        //        smpt1.UseDefaultCredentials = false;
        //        smpt1.EnableSsl = true;
        //        System.Net.NetworkCredential net = new System.Net.NetworkCredential();
        //        net.UserName = "furat_alsham@hotmail.com";
        //        net.Password = "ajman123";
        //        smpt1.Credentials = net;
        //        smpt1.Send(e_mail);
        //        Label6.Text = "send sucessfuly ";
        //    }
        //}
      




    }
}
