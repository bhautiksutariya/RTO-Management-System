using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class showDLDetails : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            cmd = new SqlCommand("select * from tbl_dl where uname=@u", sc);
            cmd.Parameters.AddWithValue("@u", Session["uname"].ToString());
            sc.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lbl_no.Text = dr["lid"].ToString();
                    lbl_date.Text = dr["appointment_date"].ToString();
                    int sg = Convert.ToInt32(dr["status"].ToString());
                    if (sg == -1)
                    {
                        lbl_status.Text = "Pending";
                    }
                    else if (sg == 1)
                    {
                        lbl_status.Text = "Pass";
                    }
                    else if (sg == 0)
                    {
                        lbl_status.Text = "Fail";
                    }
                }
                sc.Close();
            }
            else
            {
                sc.Close();
                Response.Write("<script language='javascript'>window.alert('You will not apply for driving license');window.location='homepage.aspx';</script>");
            }
        }
        else
        {

            Response.Write("<script language='javascript'>window.alert('Please Login First');window.location='AuthorLogin.aspx';</script>");
        }
        
        
    }
}