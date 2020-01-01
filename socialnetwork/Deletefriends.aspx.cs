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
    public partial class Deletefriends : System.Web.UI.Page
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
            objrequest.username = Session["userid"].ToString();
            friendsgrid.DataSource = objrequest.proc_socialnetwork_tblfriend_selectfriends();
            friendsgrid.DataBind();
        }

        protected void friendsgrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["friend"] = e.CommandArgument.ToString();
            if (e.CommandName == "Delete")
            {
                //objrequest.reqfrom = Session["reqfrom"].ToString();
                //objrequest.proc_socialnetwork_tblrequest_updatestatuschange();
                objrequest.username = Session["userid"].ToString();
                objrequest.friend = Session["friend"].ToString();
                objrequest.proc_socialnetwork_tblfriend_deletefriend();

                objrequest.username = Session["friend"].ToString();
                objrequest.friend = Session["userid"].ToString();
                objrequest.proc_socialnetwork_tblfriend_deletefriend();
                
                //objrequest.username=Session["
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('deleted')", true);

                Response.Redirect("viewfriends.aspx");
                  
            }
        }

        
    }
}