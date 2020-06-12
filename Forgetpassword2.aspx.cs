using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Forgetpassword2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbl_user.Text = lbl_user.Text + Session["email"].ToString();
        }
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        if (txt_code.Text.Equals(""))
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Enter Code')", true);
            return;
        }
        if (txt_code.Text.Equals(Session["random"]))
        {
            Response.Redirect("forgetpassword3.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Code')", true);
        }
    }
}