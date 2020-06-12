using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ApplyDL : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    int lid;
    int sta;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            cmd = new SqlCommand("select lid,status from tbl_ll where uname=@u", sc);
            cmd.Parameters.AddWithValue("@u", Session["uname"].ToString());
            sc.Open();
            SqlDataReader dr1 = cmd.ExecuteReader();
            while (dr1.Read())
            {
                lid = Convert.ToInt32(dr1["lid"]);
                sta = Convert.ToInt32(dr1["status"]);
            }
            sc.Close();
            if (sta != 1)
            {
                Response.Write("<script language='javascript'>window.alert('first pass in learning license');window.location='http://localhost:10637/Rto/homepage.aspx';</script>");
                
            }
            else
            {

                cmd = new SqlCommand("select * from tbl_ll where uname=@u", sc);
                cmd.Parameters.AddWithValue("@u", Session["uname"].ToString());
                sc.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lbl_fname.Text = dr["fname"].ToString();
                    lbl_lname.Text = dr["lname"].ToString();
                    lbl_address.Text = dr["paddress"].ToString();
                    lbl_age.Text = dr["age"].ToString();
                    lbl_dob.Text = dr["DOB"].ToString();
                    Boolean g = Convert.ToBoolean(dr["gender"]);
                    if (g == false)
                    {
                        lbl_gender.Text = "Male";
                    }
                    else
                    {
                        lbl_gender.Text = "Female";
                    }
                }
                sc.Close();
            }
        }
        else
        {

            Response.Redirect("AuthorLogin.aspx");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Login First')", true);
        }
    }
    protected void btn_dl_Click(object sender, EventArgs e)
    {
        Response.Redirect("DrivingAppointment.aspx");
    }
}