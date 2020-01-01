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
    public partial class adminfeedback : System.Web.UI.Page
    {
        ad objad = new ad();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbind();
            }
        }
        public void gridbind()
        {
            adminfeedbackgrid.DataSource = objad.proc_socialnetwork_tblfeedback_select();
            adminfeedbackgrid.DataBind();


        }

        protected void adminfeedback_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["fid"] = e.CommandArgument.ToString();
            if (e.CommandName == "Delete")
            {
                objad.fid = Convert.ToInt32(Session["fid"].ToString());
                objad.proc_socialnetwork_tblfeedback_delete();
                Response.Redirect("adminfeedback.aspx");

            }
        }
       

        
    }
}