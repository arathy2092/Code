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
    public partial class changepassword : System.Web.UI.Page
    {
        ad objad = new ad();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            objad.userid = Session["userid"].ToString();
            objad.password = txtcurrentpassword.Text;
            DataTable dt = objad.proc_socialnetwork_tbladmin_select();
            if (dt.Rows.Count > 0)
            {
                objad.password = txtNewpassword.Text;
                objad.proc_spcialnetwork_tbladmin_updatechangepassword();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('changed password successfully')", true);

            }
            else
            {
                string message = "entered current password is wrong";
                string script = "window.onload=function(){alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "successmessage", script, true);

            }
            
        }

       
    }
}