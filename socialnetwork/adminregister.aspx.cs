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
    public partial class adminregister : System.Web.UI.Page
    {
        ad objad = new ad();
        int retval;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            objad.userid = txtauserid.Text;
            objad.password = txtapassword.Text;
            retval = objad.proc_socialnetwork_tbladmin_insert();

            
        }
    }
}