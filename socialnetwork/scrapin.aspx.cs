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
    public partial class scrapin : System.Web.UI.Page
    {
        request objrequest = new request();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                gridbind();
            }
        }



        public void gridbind()
        {
            objrequest.smsgto = Session["userid"].ToString();
            scrapingrid.DataSource = objrequest.proc_socialnetwork_tblscrap_selectscrapin();
            scrapingrid.DataBind();
        }

        protected void scrapingrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["sid"] = e.CommandArgument.ToString();
            if (e.CommandName == "Delete")
            {
                objrequest.sid = Convert.ToInt32(Session["sid"].ToString());
                objrequest.proc_socialnetwork_tblscrap_delete();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('Message Deleted')", true);

                Response.Redirect("scrapin.aspx");

            }
        }
    }
}