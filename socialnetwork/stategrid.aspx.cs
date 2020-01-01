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
    public partial class stategrid : System.Web.UI.Page
    {
        place objplace = new place();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbind();
            }
        }
        public void gridbind()
        {
            state_grid.DataSource = objplace.proc_socialnetwork_tblstate_select();
            state_grid.DataBind();

        }
        protected void stategrid_OnRowCommand(object sender,GridViewCommandEventArgs e)
        {
            Session["stateid"] = e.CommandArgument.ToString();
            if (e.CommandName == "Edit")
            {
                Response.Redirect("state.aspx");
            }
            if(e.CommandName=="Delete")
            {
                objplace.stateid = Convert.ToInt32(Session["stateid"].ToString());
                objplace.proc_socialnetwork_tblstate_delete();
            }
            Response.Redirect("stategrid.aspx");
        }
    }
}