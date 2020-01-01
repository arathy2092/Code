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
    public partial class state : System.Web.UI.Page
    {
        place objplace = new place();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["stateid"] != null)
                {
                    databind();
                }
            }
        }
        public void databind()
        {
            objplace.stateid = Convert.ToInt32(Session["stateid"].ToString());
            DataTable dt = new DataTable();
            dt=objplace.proc_socialnetwork_tblstate_select();
            if (dt.Rows.Count > 0)
            {
                txtstate.Text = dt.Rows[0]["statename"].ToString();
            }

        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
            int retval = 0;
             objplace.statename = txtstate.Text;
            if (Session["stateid"] == null)
            {
               
                objplace.proc_socialnetwork_tblstate_insert();
            }
            else
            {
                objplace.stateid = Convert.ToInt32(Session["stateid"].ToString());
                retval=objplace.proc_socialnetwork_tblstate_update();

            }
            Response.Redirect("stategrid.aspx");

        }
    }
}