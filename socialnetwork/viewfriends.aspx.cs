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
    public partial class viewfriends : System.Web.UI.Page
    {
        request objrequest = new request();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbind();
             
                //if (Session["reqacceptfrom"] != null)
                //{ 
                //    objrequest.reqfrom=Session["userid"].ToString();
                //    friendsgrid.DataSource = objrequest.proc_socialnetwork_tblrequest_selectfriendspageload();
                //    friendsgrid.DataBind();
                //}

            }

        }

        public void gridbind()
        {
            objrequest.username= Session["userid"].ToString();
            friendsgrid.DataSource = objrequest.proc_socialnetwork_tblfriend_selectfriends();
            friendsgrid.DataBind();
       
        }
        protected void friendsgrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["sid"] = e.CommandArgument.ToString();
            if (e.CommandName == "profile")
            {
                Response.Redirect("requestuser.aspx");
            }
        }
    }
}