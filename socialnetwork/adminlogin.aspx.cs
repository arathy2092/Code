using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BAL;
namespace socialnetwork
{
    public partial class adminlogin : System.Web.UI.Page
    {
        ad objad = new ad();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnalogin_Click(object sender, EventArgs e)
        {
            objad.userid = txtauserid.Text;
            objad.password = txtapassword.Text;
            DataTable dt = new DataTable();
            dt = objad.proc_socialnetwork_tbladmin_select();
            if (dt.Rows.Count > 0)
            {
                Session["userid"] = objad.userid;
                Response.Redirect("authentication.aspx");
           
            }
            else
            {
               lbladmininvalid.Text= "invalid username or password";

            }
            
            
        }

        protected void btnuserlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginmain.aspx");
        }
    }
}