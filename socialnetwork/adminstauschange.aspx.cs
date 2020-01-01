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
    public partial class adminstauschange : System.Web.UI.Page
    {
        ad objad = new ad();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                databind();
            }

        }


        public void databind()
        {
            objad.userid = Session["id"].ToString();
           DataTable dt= objad.proc_socialnetwork_tbllogin_selectbyadmin();
            if(dt.Rows.Count>0)
            {
                lbluserid.Text = dt.Rows[0]["userid"].ToString();
                txtstatus.Text = dt.Rows[0]["status"].ToString();
            }
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            objad.userid = lbluserid.Text;
            objad.status = txtstatus.Text;
            objad.proc_socialnetwork_tbllogin_updatebyadmin();
            Response.Redirect("authentication.aspx");
        }

       
    }
}