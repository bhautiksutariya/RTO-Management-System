using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class forgetpassword3 : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
        byte[] bs = System.Text.Encoding.UTF8.GetBytes(txt_pass.Text);
        bs = x.ComputeHash(bs);
        System.Text.StringBuilder s = new System.Text.StringBuilder();
        foreach (byte b in bs)
        {
            s.Append(b.ToString("x2").ToLower());
        }
        cmd = new SqlCommand("update tbl_registration set password=@p where user_name=@u", sc);
        cmd.Parameters.AddWithValue("@p", s.ToString());
        cmd.Parameters.AddWithValue("@u", Session["forgetuser"].ToString());
        sc.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script language='javascript'>window.alert('Password Updated');window.location='AuthorLogin.aspx';</script>");
        sc.Close();
    }
}