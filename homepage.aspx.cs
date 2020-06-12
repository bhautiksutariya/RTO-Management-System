using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;

        if (Session["uname"] != null)
        {
            login.Visible = false;
            logout.Visible = true;
            Label1.Text = "welcome " + Session["uname"].ToString();
            Label1.Visible = true;
        }
        else
        {
            Label1.Visible = false;
            logout.Visible = false;
            login.Visible = true;
        }
    }
    protected void login_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AuthorLogin.aspx");
    }
    protected void Logout_click(object sender, ImageClickEventArgs e)
    {
        Session["uname"] = null;
        Label1.Visible = false;
        logout.Visible = false;
        login.Visible = true;
    }
}