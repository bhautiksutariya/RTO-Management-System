using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;

using System.Data;
using System.Data.SqlClient;

using System.Web;
using System.Net.Mail;
using System.IO;

public partial class MailPDF : System.Web.UI.Page
{
    int id;
    SqlConnection sc = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\Study\asp.net\Rto\App_Data\db_rto.mdf;Integrated Security=True;User Instance=True");
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
            try
            {
                cmd = new SqlCommand("select * from tbl_ll where uname=@u",sc);
                cmd.Parameters.AddWithValue("@u", Session["uname"].ToString());
                sc.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                    /*SqlCommand tmp = new SqlCommand("select cname from tbl_city where cid=@c", sc);
                    tmp.Parameters.AddWithValue("@c", Convert.ToInt32(dr["rid"].ToString()));*/
                    String rto = "surat";


                    Document pf = new Document();
                    PdfWriter.GetInstance(pf, new FileStream(Server.MapPath("~/upload image/letter.pdf"), FileMode.Create));
                    //System.Drawing.Font verdana = FontFactory.GetFont("Verdana", 16);


                    pf.Open();
                    Paragraph p1;
                    p1 = new Paragraph("                  Provisional Appointment for Learner Licence Test                      \n", FontFactory.GetFont("arial", 15.0f, iTextSharp.text.Font.UNDERLINE | iTextSharp.text.Font.BOLD));// Web Application 22414267 Date : Thanks for using Online Learner Licence test slot booking facility.With respect to your booking appointment for LL Test, your Learner licence test has been fixed on 21-10-2016 between 13.00PM-14.00PM. You are required to approach RTO,SURAT on 21-10-2016 approximately 30 Min before the scheduled time for learner licence test. Dear Sri/Smt/Ku YOGESHC.GELANI S/o. Sri/Smt/Kum CHANDUBHAIR.GELANI",FontFactory.GetFont("arial",20.0f));
                    pf.Add(p1);
                    p1 = new Paragraph("\n                                                                       Date: "+DateTime.Now, FontFactory.GetFont("arial", 15.0f));
                    pf.Add(p1);
                    p1 = new Paragraph("\nApplication   " + dr["lid"].ToString(), FontFactory.GetFont("arial", 15.0f));
                    pf.Add(p1);
                    p1 = new Paragraph("\nDear Sri/Smt/Ku " + dr["fname"].ToString() + " " + dr["mname"].ToString() + " " + dr["lname"].ToString() + " S/o. Sri/Smt/Kum " + dr["r_fn"].ToString() + " " + dr["r_mn"].ToString() + " " + dr["r_ln"].ToString() + "\nThanks for using Online Learner Licence test slot booking facility.\nWith respect to your booking appointment for LL Test, your Learner licence test has been fixed on " + dr["appointment_date"].ToString() + " You are required to approach RTO,\n" + rto + " on " + dr["appointment_date"].ToString() + " approximately 30 Min before the scheduled time for learner licence test.\n\n\n                                                                                    WITH REGARDS,\n                                                                                               RTO", FontFactory.GetFont("arial", 15.0f));
                    pf.Add(p1);

                    pf.Close();
                    sc.Close();
                    cmd=new SqlCommand("insert into tbl_report(username,rdate,rtime) values(@u,@d,@t)",sc);
                    cmd.Parameters.AddWithValue("@u",Session["uname"].ToString());
                    cmd.Parameters.AddWithValue("@d",DateTime.Now.Date);
                    cmd.Parameters.AddWithValue("@t",DateTime.Now.TimeOfDay);
                    sc.Open(); 
                    cmd.ExecuteNonQuery();
                    sc.Close();
                
            }
            catch (Exception e12)
            {
                Response.Write(e12);
            }
        }
    }
    protected void mail_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage mail = new MailMessage("rtoalert23@gmail.com", txt_email.Text, "Learning License appointment", "Learning license letter");
            mail.Attachments.Add(new Attachment(Server.MapPath("~\\upload image\\letter.pdf")));
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.Port = 587;
            client.Credentials = new System.Net.NetworkCredential("rtoalert23@gmail.com", "Abcd@123");
            client.EnableSsl = true;
            client.Send(mail);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Mail send successfully')", true);
        }
        catch (Exception e1)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Network error')", true);
        }
        
    }
    protected void pdf_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("upload image/letter.pdf");
    }
}