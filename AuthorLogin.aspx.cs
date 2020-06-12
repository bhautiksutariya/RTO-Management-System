using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AuthorLogin : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        //todaydatetime.Text = DateTime.Today.Date.ToString("dd/MM/yyyy");

    }
    protected void at_submit_Click(object sender, EventArgs e)
    {

        
        txt_password.Text = "";
        txt_username.Text = "";
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
        cmd = new SqlCommand("select * from tbl_registration where user_name=@u and password=@p", sc);
        cmd.Parameters.AddWithValue("@u", txt_username.Text);
        cmd.Parameters.AddWithValue("@p", s.ToString());

        sc.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["type"] = 0;
            while (dr.Read())
            {
                Session["type"] = dr["type"].ToString();
            }
            
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login successful')", true);
            Session["uname"] = txt_username.Text.ToString();
            
            bool b = Convert.ToBoolean(Session["type"].ToString());
            
            
            if (b==true)
            {
                Response.Write("<script language='javascript'>window.alert('Login Successfully');window.location='AdminDB.aspx';</script>");
                
            }
            else
            {
                Response.Write("<script language='javascript'>window.alert('Login Successfully');window.location='homepage.aspx';</script>");
                
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid UserName Or Password')", true);
        }
        sc.Close();
        

    }
    protected void btn_signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
}