using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Web;
using System.Net.Mail;

public partial class forgetpassword1 : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        if (txt_username.Text.Equals(""))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter User Name')", true);
        }
        else
        {
            cmd = new SqlCommand("select * from tbl_registration where user_name=@u", sc);
            cmd.Parameters.AddWithValue("@u", txt_username.Text);
            sc.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["email"] = dr["email"].ToString();
                    Session["forgetuser"] = txt_username.Text;
                }
                try
                {
                    Random r = new Random();
                    int no=r.Next(100000, 999999);
                    Session["random"] = no.ToString();
                    MailMessage mail = new MailMessage("rtoalert23@gmail.com", Session["email"].ToString(), "Reset Password", "Your Code Is: "+no);
                    
                    SmtpClient client = new SmtpClient("smtp.gmail.com");
                    client.Port = 587;
                    client.Credentials = new System.Net.NetworkCredential("rtoalert23@gmail.com", "Abcd@123");
                    client.EnableSsl = true;
                    client.Send(mail);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Mail send successfully')", true);
                    Response.Redirect("forgetpassword2.aspx");
                }
                catch (Exception e1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Network error')", true);
                }
                
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Not Found')", true);
            }
            sc.Close();
        }
    }
}