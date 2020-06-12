using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class RtoDetails : System.Web.UI.Page
{
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\db_rto.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from tbl_state", sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            ddl_state.DataSource = dt;
            ddl_state.DataTextField = "sname";
            ddl_state.DataValueField = "sid";
            
            ddl_state.DataBind();
            ddl_state.Items.Insert(0,"Select State");
            
        }
    }
    protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand cmd=new SqlCommand("select * from tbl_city where sid=@s",sc);
        cmd.Parameters.AddWithValue("@s", Convert.ToInt32(ddl_state.SelectedValue.ToString()));
        sc.Open();
        cmd.ExecuteReader();
        sc.Close();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        ddl_city.DataSource = dt;
        ddl_city.DataTextField = "cname";
        ddl_city.DataValueField = "cid";
        ddl_city.DataBind();
        ddl_city.Items.Insert(0, "Select City");
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ddl_city.SelectedValue.Equals("Select State"))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please select state')", true);
        }
        else if (ddl_city.SelectedValue.Equals("Select City"))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please select city')", true);
        }
        else
        {
            SqlDataAdapter da = new SqlDataAdapter("select '"+ddl_state.SelectedItem+"' as State,'"+ddl_city.SelectedItem+"' as City,address as Address from tbl_rtodetails where sid='"+ddl_state.SelectedValue+"' and cid='"+ddl_city.SelectedValue+"'", sc);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }
        
        
    }
    
}