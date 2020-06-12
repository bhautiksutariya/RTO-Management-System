using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserStatus : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            cmd = new SqlCommand("select * from tbl_ll where uname=@u", sc);
            cmd.Parameters.AddWithValue("@u", Session["uname"].ToString());
            sc.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    lbl_fname.Text = dr["fname"].ToString();
                    lbl_lname.Text = dr["lname"].ToString();
                    Boolean g = Convert.ToBoolean(dr["gender"]);
                    if (g == false)
                    {
                        lbl_gender.Text = "Male";
                    }
                    else
                    {
                        lbl_gender.Text = "Female";
                    }
                    lbl_address.Text = dr["paddress"].ToString();
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
                Response.Write("<script language='javascript'>window.alert('You will not apply for Learning License');window.location='homepage.aspx';</script>");
            }
        }
        else
        {

            Response.Write("<script language='javascript'>window.alert('Please Login First');window.location='AuthorLogin.aspx';</script>");
        }
        
    }
}