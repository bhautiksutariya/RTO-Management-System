using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LearningLicence : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
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

        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from tbl_state", sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            drd_state.DataSource = dt;
            drd_state.DataTextField = "sname";
            drd_state.DataValueField = "sid";
            drd_state.DataBind();
            drd_state.Items.Insert(0, "Select State");
            
            ddl_state.DataSource = dt;
            ddl_state.DataTextField = "sname";
            ddl_state.DataValueField = "sid";
            ddl_state.DataBind();
            ddl_state.Items.Insert(0, "Select State");
            
            ddlc_state.DataSource = dt;
            ddlc_state.DataTextField = "sname";
            ddlc_state.DataValueField = "sid";
            ddlc_state.DataBind();
            ddlc_state.Items.Insert(0, "Select State");
            

            SqlDataAdapter da1 = new SqlDataAdapter("select * from tbl_country", sc);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            dr_Countryofbirth.DataSource = dt1;
            dr_Countryofbirth.DataTextField = "cname";
            dr_Countryofbirth.DataValueField = "cid";
            dr_Countryofbirth.DataBind();
            dr_Countryofbirth.Items.Insert(0, "Select Country");
            
        }


    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tbl_city where sid=@s", sc);
        cmd.Parameters.AddWithValue("@s", Convert.ToInt32(ddl_state.SelectedValue.ToString()));
        sc.Open();
        cmd.ExecuteReader();
        sc.Close();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        ddl_adcity.DataSource = dt;
        ddl_adcity.DataTextField = "cname";
        ddl_adcity.DataValueField = "cid";
        ddl_adcity.DataBind();
        ddl_adcity.Items.Insert(0, "Select City");
    }

    protected void drd_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tbl_city where sid=@s", sc);
        cmd.Parameters.AddWithValue("@s", Convert.ToInt32(drd_state.SelectedValue.ToString()));
        sc.Open();
        cmd.ExecuteReader();
        sc.Close();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        drd_select_RTO.DataSource = dt;
        drd_select_RTO.DataTextField = "cname";
        drd_select_RTO.DataValueField = "cid";
        drd_select_RTO.DataBind();
        
    }

    protected void txt_dis_TextChanged1(object sender, EventArgs e)
    {
        
    }
    protected void txt_flatno_TextChanged1(object sender, EventArgs e)
    {
        
    }
    protected void txt_housename_TextChanged1(object sender, EventArgs e)
    {
        
    }
    protected void txt_hno_TextChanged1(object sender, EventArgs e)
    {
        
    }
    protected void txt_street_TextChanged1(object sender, EventArgs e)
    {
        
    }
    protected void txt_locality_TextChanged1(object sender, EventArgs e)
    {
        
    }
    protected void txt_village_TextChanged1(object sender, EventArgs e)
    {
        
    }
    protected void txt_taluka_TextChanged1(object sender, EventArgs e)
    {
        
    }
    protected void txt_pincode_TextChanged1(object sender, EventArgs e)
    {
        
    }
    protected void btn_submitLL_Click(object sender, EventArgs e)
    {
        String f1="", f2="";
        if (txt_ageCNo.Text.Equals(""))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please enter certificate number of age proof')", true);
            return;
        }
        else if (txt_ageCName.Text.Equals(""))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please enter authority name of age proof')", true);
            return;
        }
        else if (txt_addressCno.Text.Equals(""))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please enter certificate number of address proof')", true);
            return;
        }
        else if (txt_addressCname.Text.Equals(""))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please enter authority name of address proof')", true);
            return;
        }
        else
        {
            if (FileUpload1.HasFile)
            {
                string s = FileUpload1.FileName.ToString();
                s = s.Substring(s.LastIndexOf("."));
                if (FileUpload1.PostedFile.ContentLength > 102400)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please upload file less than 100 KB only in age proof')", true);
                    return;
                }
                else
                {


                    if (s.Equals(".png") || s.Equals(".jpg") || s.Equals(".PNG") || s.Equals(".JPG"))
                    {
                        string temp1 = txt_dob.Text;
                        temp1 = temp1.Replace("/", "-");
                        s=FileUpload1.FileName.ToString();
                        s = s + temp1;
                        f1 ="~/upload image/"+s;
                        FileUpload1.SaveAs(Server.MapPath("~/upload image/") + s);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please upload JPG/PNG file only in age proof')", true);
                        return;
                    }
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please upload age proof')", true);
                return;
            }

            if (FileUpload2.HasFile)
            {

                string s = FileUpload2.FileName.ToString();
                s = s.Substring(s.LastIndexOf("."));
                if (FileUpload1.PostedFile.ContentLength > 102400)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please upload file less than 100 KB only in address proof')", true);
                    return;
                }
                else
                {
                    if (s.Equals(".png") || s.Equals(".jpg") || s.Equals(".PNG") || s.Equals(".JPG"))
                    {
                        string temp2 = txt_dob.Text;
                        temp2 = temp2.Replace("/", "-");
                        s = FileUpload2.FileName.ToString();
                        s = s + temp2;
                        f2 = "~/upload image/"+s;
                        FileUpload2.SaveAs(Server.MapPath("~/upload image/") + s);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please upload JPG/PNG file only in address proof')", true);
                        return;
                    }
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please upload address proof')", true);
                return;
            }


            String q = "insert into tbl_ll values(@un,@fn,@mn,@ln,@pa,@ca,@an,@dob,@sid,@rid,@rela,@rfn,@rmn,@rln,@gen,@mno,@age,@cid,@citys,@bg,@mail,@edu,@oim,@oiy,@adate,@status)";
            String temp;
            cmd = new SqlCommand(q, sc);
            cmd.Parameters.AddWithValue("@un", Session["uname"].ToString());
            cmd.Parameters.AddWithValue("@fn", txt_fn.Text);
            if (txt_mn.Text.Equals(""))
            {
                temp = " ";
            }
            else
            {
                temp = txt_mn.Text;
            }
            cmd.Parameters.AddWithValue("@mn", temp);
            if (txt_ln.Text.Equals(""))
            {
                temp = " ";
            }
            else
            {
                temp = txt_ln.Text;
            }
            cmd.Parameters.AddWithValue("@ln", temp);
            String pa, ca;
            pa = txt_flatno.Text + "," + txt_street.Text + "," + ddl_adcity.SelectedItem.ToString() + "," + ddl_state.SelectedItem.ToString() + "-" + txt_pincode.Text;
            ca = txt_flatnocopy.Text + "," + txt_streetc.Text + "," + ddl_adcitycopy.SelectedItem.ToString() + "," + ddlc_state.SelectedItem.ToString() + "-" + txt_c_pincode.Text;
            cmd.Parameters.AddWithValue("@pa", pa);
            cmd.Parameters.AddWithValue("@ca", ca);
            if (txt_ad.Text.Equals(""))
            {
                temp = " ";
            }
            else
            {
                temp = txt_ad.Text;
            }
            cmd.Parameters.AddWithValue("@an", temp);
            cmd.Parameters.AddWithValue("@dob", txt_dob.Text.ToString());
            cmd.Parameters.AddWithValue("@sid",Convert.ToInt32( drd_state.SelectedValue.ToString()));
            cmd.Parameters.AddWithValue("@rid", Convert.ToInt32(drd_select_RTO.SelectedValue.ToString()));
            cmd.Parameters.AddWithValue("@rela", drd_relation.SelectedValue);
            if (txt_fnrelation.Text.Equals(""))
            {
                temp = " ";
            }
            else
            {
                temp = txt_fnrelation.Text;
            }
            cmd.Parameters.AddWithValue("@rfn", temp);
            if (txt_mnrelation.Text.Equals(""))
            {
                temp = " ";
            }
            else
            {
                temp = txt_mnrelation.Text;
            }
            cmd.Parameters.AddWithValue("@rmn", temp);
            if (txt_lnrelation.Text.Equals(""))
            {
                temp = " ";
            }
            else
            {
                temp = txt_lnrelation.Text;
            }
            cmd.Parameters.AddWithValue("@rln", temp);
            cmd.Parameters.AddWithValue("@gen", drd_gender.SelectedValue);
            cmd.Parameters.AddWithValue("@mno", txt_mobn.Text);
            cmd.Parameters.AddWithValue("@age", txt_age.Text);
            cmd.Parameters.AddWithValue("@cid",Convert.ToInt32( dr_Countryofbirth.SelectedValue.ToString()));
            cmd.Parameters.AddWithValue("@citys", dr_CitizenStatus.SelectedValue);
            cmd.Parameters.AddWithValue("@bg", dr_bloodgroup.SelectedValue);
            if (txt_em.Text.Equals(""))
            {
                temp = " ";
            }
            else
            {
                temp = txt_em.Text;
            }
            
            cmd.Parameters.AddWithValue("@mail", temp);
            cmd.Parameters.AddWithValue("@edu", drd_eq.SelectedValue);
            cmd.Parameters.AddWithValue("@oim", DropDown_outside_month.SelectedValue);
            cmd.Parameters.AddWithValue("@oiy", DropDown_outside_year.SelectedValue);
            cmd.Parameters.AddWithValue("@adate", "00/00/0000");
            cmd.Parameters.AddWithValue("@status", -1);

            sc.Open();
            cmd.ExecuteNonQuery();
            sc.Close();

            f1 = f1.Replace("/", "\\");
            f2 = f2.Replace("/", "\\");

            cmd = new SqlCommand("insert into tbl_fileupload values(@u,@ad,@ag)", sc);
            cmd.Parameters.AddWithValue("@u", Session["uname"].ToString());
            cmd.Parameters.AddWithValue("@ad", f2);
            cmd.Parameters.AddWithValue("@ag", f1);
            sc.Open();
            cmd.ExecuteNonQuery();
            sc.Close();
            Response.Redirect("DrivingLicense.aspx");

        }
    }






    protected void ddl_adcity_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlc_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from tbl_city where sid=@s", sc);
        cmd.Parameters.AddWithValue("@s", Convert.ToInt32(ddlc_state.SelectedValue.ToString()));
        sc.Open();
        cmd.ExecuteReader();
        sc.Close();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        ddl_adcitycopy.DataSource = dt;
        ddl_adcitycopy.DataTextField = "cname";
        ddl_adcitycopy.DataValueField = "cid";
        ddl_adcitycopy.DataBind();
        ddl_adcitycopy.Items.Insert(0, "Select City");
    }
}