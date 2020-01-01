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
    public partial class friendrequest : System.Web.UI.Page
    {
       request objrequest = new request();
        reg objreg = new reg();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                gridbind();
            }

            
        }
        public void gridbind()
        {
            objrequest.reqto = Session["userid"].ToString();
            
            DataTable dt = objrequest.proc_socialnetwork_tblrequest_selectjoin();
       
           
               friendrequestgrid.DataSource=dt;
               friendrequestgrid.DataBind();

                // int i=0;
                //while(i<dt.Rows.Count)
                //{
                //    objreg.userid = dt.Rows[i]["reqfrom"].ToString();
                //    DataTable dt1 = objreg.proc_socialnetwork_tblprofile_selectuserid();
                //    friendrequestgrid.DataSource = dt1;
                //    friendrequestgrid.DataBind();
                //    i++;
                //}
           
                
            
           


        }
        protected void friendrequest_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            objrequest.reqfrom = e.CommandArgument.ToString();
            Session["requestfrom"] = e.CommandArgument.ToString();
            
            if (e.CommandName == "Accept")
            {
             
                objrequest.proc_socialnetwork_tblrequest_updatestatusacceptfriend();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('accepted request')", true);
                //first case
                objrequest.username = Session["userid"].ToString();
                objrequest.friend = Session["requestfrom"].ToString();
                int retval = objrequest.proc_socialnetwork_tblfriend_insert();
                //Response.Redirect("viewfriends.aspx");
                //second case
                objrequest.username = Session["requestfrom"].ToString();
                objrequest.friend= Session["userid"].ToString();
                retval = objrequest.proc_socialnetwork_tblfriend_insert();
            }
            if (e.CommandName == "Reject")
            {
      
                objrequest.proc_socialnetwork_tblrequest_updatestatuschange();
                gridbind();
              
            }
        }
       

    }
}