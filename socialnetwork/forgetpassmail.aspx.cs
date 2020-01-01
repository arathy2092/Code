using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using BAL;
namespace socialnetwork
{
    public partial class forgetpassmail : System.Web.UI.Page
    {
        reg objreg = new reg();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnfsubmit_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            objreg.userid = txtfmailid.Text;
            dt=objreg.proc_socialnetwork_tbllogin_selectforpassword();
            if (dt.Rows.Count > 0)
            {
                MailMessage Msg = new MailMessage();
                // Sender e-mail address.
                Msg.From = new MailAddress(txtfmailid.Text);
                // Recipient e-mail address.
                Msg.To.Add(txtfmailid.Text);
                Msg.Subject = "Your Password Details";
                Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your Password: " + dt.Rows[0]["Password"] + "<br/><br/>";
                Msg.IsBodyHtml = true;
                // your remote SMTP server IP.
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.Credentials = new System.Net.NetworkCredential("yourusername@gmail.com", "yourpassword");
                smtp.EnableSsl = true;
                smtp.Send(Msg);
                //Msg = null;
                lblmsg.Text = "Your Password Details Sent to your mail";
                // Clear the textbox valuess
                txtfmailid.Text = "";
            }
            else
            {
                lblmsg.Text = "The Email you entered not exists.";
            }

        }
    }
}