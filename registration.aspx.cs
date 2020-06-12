using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
        if (!IsPostBack)
        {
            txt_conform_password.Text = "";
            txt_email.Text = "";
            txt_password.Text = "";
            txt_username.Text = "";
            
        }
        
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
        byte[] bs = System.Text.Encoding.UTF8.GetBytes(txt_password.Text);
        bs = x.ComputeHash(bs);
        System.Text.StringBuilder s = new System.Text.StringBuilder();
        foreach (byte b in bs)
        {
            s.Append(b.ToString("x2").ToLower());
        }
        SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
        SqlCommand cmd = new SqlCommand("insert into tbl_registration values (@u,@e,@p,@t)", sc);
        cmd.Parameters.AddWithValue("@u", txt_username.Text.ToString());
        cmd.Parameters.AddWithValue("@e", txt_email.Text.ToString());
        cmd.Parameters.AddWithValue("@p", s.ToString());
        cmd.Parameters.AddWithValue("@t", 0);
        try
        {
            sc.Open();
            cmd.ExecuteNonQuery();
            sc.Close();
        }
        catch (SqlException ex)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('That username is taken. Try another.')", true);
        }
        
        txt_conform_password.Text = "";
        txt_email.Text = "";
        txt_password.Text = "";
        txt_username.Text = "";
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registration Successfuly')", true);
        


    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("AuthorLogin.aspx");
    }
}