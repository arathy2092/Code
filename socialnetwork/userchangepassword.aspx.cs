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
    public partial class userchangepassword : System.Web.UI.Page
    {
        reg objreg = new reg();
 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            objreg.userid = Session["userid"].ToString();
            objreg.password = txtcurrentpassword.Text;
            DataTable dt = objreg.proc_socialnetwork_tbllogin_select();
            if (dt.Rows.Count > 0)
            {
                objreg.password = txtNewpassword.Text;
               int retval= objreg.proc_spcialnetwork_tbllogin_updatechangepassword();
               ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('password changed successfully')", true);
               txtcurrentpassword.Text = "";
               txtNewpassword.Text = "";
            }

        }

        protected void txtcurrentpassword_TextChanged(object sender, EventArgs e)
        {
            objreg.userid = Session["userid"].ToString();
            objreg.password = txtcurrentpassword.Text;
             DataTable dt = objreg.proc_socialnetwork_tbllogin_select();
             if (dt.Rows.Count == 0)
             {
                 lblwrongpassword.Text = "Entered password is wrong";
             }
           
        }
    }
}