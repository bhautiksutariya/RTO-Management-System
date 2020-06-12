using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminDB : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
            bind1();
        }
    }
    void bind()
    {
        SqlDataAdapter da = new SqlDataAdapter("select lid,fname,lname,paddress,DOB,appointment_date,status from tbl_ll", sc);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    void bind1()
    {
        SqlDataAdapter da = new SqlDataAdapter("select did,lid,appointment_date,status from tbl_dl", sc);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView2.DataSource = dt;
        GridView2.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        String lid = (GridView1.Rows[e.RowIndex].FindControl("lbl_lid") as Label).Text.Trim();
        cmd = new SqlCommand("delete from tbl_ll where lid=@l", sc);
        cmd.Parameters.AddWithValue("@l", Convert.ToInt32(lid));
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
        GridView1.EditIndex = -1;
        bind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        String lid = (GridView1.Rows[e.RowIndex].FindControl("txt_lid") as TextBox).Text.Trim();
        String fname = (GridView1.Rows[e.RowIndex].FindControl("txt_fname") as TextBox).Text.Trim();
        String lname = (GridView1.Rows[e.RowIndex].FindControl("txt_lname") as TextBox).Text.Trim();
        String address = (GridView1.Rows[e.RowIndex].FindControl("txt_address") as TextBox).Text.Trim();
        String dob = (GridView1.Rows[e.RowIndex].FindControl("txt_dob") as TextBox).Text.Trim();
        String adate = (GridView1.Rows[e.RowIndex].FindControl("txt_adate") as TextBox).Text.Trim();
        String status = (GridView1.Rows[e.RowIndex].FindControl("ddl_status") as DropDownList).SelectedValue.ToString();
        cmd = new SqlCommand("update tbl_ll set fname=@f,lname=@l,paddress=@a,DOB=@d,appointment_date=@ad,status=@s where lid=@id", sc);
        cmd.Parameters.AddWithValue("@f", fname);
        cmd.Parameters.AddWithValue("@l", lname);
        cmd.Parameters.AddWithValue("@a", address);
        cmd.Parameters.AddWithValue("@d", dob);
        cmd.Parameters.AddWithValue("@ad", adate);
        cmd.Parameters.AddWithValue("@s", Convert.ToInt32(status));
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(lid));
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
        GridView1.EditIndex = -1;
        bind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind();

    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        String did = (GridView2.Rows[e.RowIndex].FindControl("lbl_did1") as Label).Text.Trim();
        cmd = new SqlCommand("delete from tbl_dl where did=@d", sc);
        cmd.Parameters.AddWithValue("@d", Convert.ToInt32(did));
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
        GridView2.EditIndex = -1;
        bind1();


    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        bind1();
    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        String did = (GridView2.Rows[e.RowIndex].FindControl("txt_did1") as TextBox).Text.Trim();
        String status = (GridView2.Rows[e.RowIndex].FindControl("ddl_status1") as DropDownList).SelectedValue.ToString();
        cmd = new SqlCommand("update tbl_dl set status=@s where did=@d", sc);
        cmd.Parameters.AddWithValue("@s", Convert.ToInt32(status));
        cmd.Parameters.AddWithValue("@d", Convert.ToInt32(did));
        sc.Open();
        cmd.ExecuteNonQuery();
        sc.Close();
        GridView2.EditIndex = -1;
        bind1();
    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        bind1();
    }
    protected void btn_ll_Click(object sender, EventArgs e)
    {
        if (srch_ll.Text.Equals(""))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Name First')", true);
        }
        else
        {
            cmd = new SqlCommand("select lid,fname,lname,paddress,DOB,appointment_date,status from tbl_ll where fname like @s+'%'", sc);
            cmd.Parameters.AddWithValue("@s", srch_ll.Text);
            sc.Open();
            cmd.ExecuteReader();
            sc.Close();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (dt.Rows.Count == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No Result Found')", true);
            }
        }
    }
    protected void btn_dl_Click(object sender, EventArgs e)
    {
        if (srch_dl.Text.Equals(""))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Learning License NO')", true);
        }
        else
        {
            cmd = new SqlCommand("select did,lid,appointment_date,status from tbl_dl where lid like @s+'%'", sc);
            cmd.Parameters.AddWithValue("@s", srch_dl.Text);
            sc.Open();
            cmd.ExecuteReader();
            sc.Close();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            if (dt.Rows.Count == 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No Result Found')", true);
            }
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["uname"] = null;
        Response.Redirect("homepage.aspx");
    }
}