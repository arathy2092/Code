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
    public partial class authentication : System.Web.UI.Page
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
            objad.userid = "";
            authenticationgrid.DataSource = objad.proc_socialnetwork_tbllogin_selectbyadmin();
            authenticationgrid.DataBind();

        }
        protected void authenticationgrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["id"] = e.CommandArgument.ToString();
            if (e.CommandName == "Update")
            {
                Response.Redirect("adminstauschange.aspx");
            }
          

        }

    }
}