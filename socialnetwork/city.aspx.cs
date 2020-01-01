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
    public partial class city : System.Web.UI.Page
    {
        place objplace = new place();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                  statebind();
                if (Session["cityid"] != null)
                {
                    databind();
                }
            }

        }
        public void statebind()
        {
            DataTable dt = new DataTable();
            dt = objplace.proc_socialnetwork_tblstate_select();
            ddlstateadd.DataSource = dt;
            ddlstateadd.DataTextField ="statename";
            ddlstateadd.DataValueField = "stateid";
            ddlstateadd.DataBind();
            ddlstateadd.Items.Insert(0,"select state");
        }
        public void databind()
        {
            DataTable dt = new DataTable();
            objplace.cityid = Convert.ToInt32(Session["cityid"].ToString());
            dt = objplace.proc_socialnetwork_tblcity_selectjoin();
            if (dt.Rows.Count > 0)
            {
                ddlstateadd.SelectedValue = dt.Rows[0]["stateid"].ToString();
                txtcity.Text = dt.Rows[0]["cityname"].ToString();
            }
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            objplace.stateid = Convert.ToInt32(ddlstateadd.SelectedValue);
            objplace.cityname = txtcity.Text;
            DataTable dt = objplace.proc_socialnetwork_tblstate_select();
            objplace.statename = dt.Rows[0]["statename"].ToString();
            if (Session["cityid"] == null)
            {
                int retval = objplace.proc_socialnetwork_tblcity_insert();


            }
            else
            {
                objplace.cityid = Convert.ToInt32(Session["cityid"].ToString());
                int retval = objplace.proc_socialnetwork_tblcity_update();
            }
            Response.Redirect("citygrid.aspx");

        }
    }
}