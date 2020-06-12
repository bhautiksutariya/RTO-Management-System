using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DrivingAppointment : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    int flag = 0;
    int lid;
    int sta;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            //Response.Write("welcome");
            cmd = new SqlCommand("select lid,status from tbl_ll where uname=@u", sc);
            cmd.Parameters.AddWithValue("@u", Session["uname"].ToString());
            sc.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lid = Convert.ToInt32(dr["lid"]);
                sta=Convert.ToInt32(dr["status"]);
            }
            sc.Close();
            
        }
        else
        {
            Response.Write("<script language='javascript'>window.alert('Please Login First');window.location='AuthorLogin.aspx';</script>");
            
            
        }

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        String s = Calendar1.SelectedDate.ToString();
        String[] t = s.Split(' ');
        if (t[0].Equals("1/1/0001"))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select date')", true);
        }
        else if (Calendar1.SelectedDate < DateTime.Now)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please select valid date')", true);
        }
        else
        {
            if (flag == 0)
            {

                DateTime dt = Convert.ToDateTime(t[0]);
                DateTime n = dt.AddYears(20);
                
                cmd = new SqlCommand("insert into tbl_dl(uname,lid,status,appointment_date) values(@u,@l,@s,@ad)", sc);
                cmd.Parameters.AddWithValue("@u", Session["uname"].ToString());
                cmd.Parameters.AddWithValue("@l", lid);
                cmd.Parameters.AddWithValue("@s", -1);
                cmd.Parameters.AddWithValue("@ad", t[0].ToString());
                sc.Open();
                cmd.ExecuteNonQuery();
                sc.Close();
                Response.Write("<script language='javascript'>window.alert('You are applied for Driving License');window.location='homepage.aspx';</script>");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please selected date is not available')", true);
            }

        }
    }
}