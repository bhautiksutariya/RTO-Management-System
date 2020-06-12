using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DrivingLicense : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    int flag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            //Response.Write("welcome");
        }
        else
        {
            Response.Write("<script language='javascript'>window.alert('Please Login First');window.location='AuthorLogin.aspx';</script>");
        }
    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        String s = Calendar1.SelectedDate.ToString();
        String []t = s.Split(' ');
        if (t[0].Equals("1/1/0001"))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select date')", true);
        }
        else if(Calendar1.SelectedDate<DateTime.Now)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select valid date')", true);
        }
        else
        {
            if (flag == 0)
            {
                cmd = new SqlCommand("update tbl_ll set appointment_date=@d where uname=@u", sc);
                cmd.Parameters.AddWithValue("@d", t[0]);
                cmd.Parameters.AddWithValue("@u", Session["uname"].ToString());
                sc.Open();
                cmd.ExecuteNonQuery();
                sc.Close();
                Response.Redirect("MailPDF.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please selected date is not available')", true);
            }
            
        }
        
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        /*String s = Calendar1.SelectedDate.ToString();
        String []t = s.Split(' ');
        cmd = new SqlCommand("select count(lid) from tbl_ll where appointment_date=@d");
        cmd.Parameters.AddWithValue("@d", t[0].ToString());
        sc.Open();
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        if (count < 10)
        {
            flag = 1;
        }
        sc.Close();*/
    }
}