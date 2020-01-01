using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BAL;
namespace socialnetwork
{
    public partial class forgetpassword : System.Web.UI.Page
    {
        reg objreg = new reg();
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }
        

        protected void btnfsubmit_Click(object sender, EventArgs e)
        {
            objreg.userid = txtfuserid.Text;
            objreg.sequrityans = txtfans.Text;
            DataTable dt = objreg.proc_socialnetwork_tbllogin_passworddisplay();
         lblfpass.Text=dt.Rows[0]["password"].ToString();
         txtfuserid.Text = "";
         txtfans.Text = "";
         txtfsecurityquestion.Text = "";
            }

        protected void txtfuserid_TextChanged(object sender, EventArgs e)
        {
            objreg.userid = txtfuserid.Text;
           
            DataTable dt = objreg.proc_socialnetwork_tbllogin_forget();
            if (dt.Rows.Count > 0)
            {
                txtfsecurityquestion.Text = dt.Rows[0]["sequrityquestion"].ToString();

            }

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginmain.aspx");
        }
    }
}