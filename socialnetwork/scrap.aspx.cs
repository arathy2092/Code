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
    public partial class scrap : System.Web.UI.Page
    {
        request objrequest = new request();
        string ret;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                peoplebind();
                gridbind();
            }
             


        }


        public void peoplebind()
        {

            objrequest.userid = Session["userid"].ToString();
            DataTable dt = objrequest.proc_socialnetwork_tblprofile_selectscrap();
            ddlpeople.DataTextField = "userid";
            ddlpeople.DataValueField = "userid";
            ddlpeople.DataSource = dt;
            ddlpeople.DataBind();
            ddlpeople.Items.Insert(0, "select friend");

        }

        public void gridbind()
        {
            objrequest.smsgfrom = Session["userid"].ToString();
            scrapgrid.DataSource = objrequest.proc_socialnetwork_tblscrap_select();
            scrapgrid.DataBind();
        }

        private string validok()
        {


            if (txtscrap.Text.Trim() == "")
            {
                txtscrap.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (ddlpeople.SelectedIndex == 0)
            {
                ddlpeople.Style.Add("border-color", "#CC0000");
                ret = ret + "state required";
                return ret;
            }
            
            return ret;

        }
        protected void btnsend_Click1(object sender, EventArgs e)
        {
            if (validok() == null)
            {

                objrequest.smsgfrom = Session["userid"].ToString();
                objrequest.smsgto = ddlpeople.SelectedValue;
                objrequest.sdetails = txtscrap.Text;
                int retval = objrequest.proc_socialnetwork_tblscrap_insert();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('message sent successfully')", true);

                ddlpeople.SelectedIndex = 0;
                txtscrap.Text = "";
                gridbind();
            }
            else
            {
                string message = "all fields are mandatory";
                string script = "window.onload=function(){alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "successmessage", script, true);

            }
          

        }
        protected void scrapgrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["sid"] = e.CommandArgument.ToString();
            if (e.CommandName == "Delete")
            {
                objrequest.sid = Convert.ToInt32(Session["sid"].ToString());
                objrequest.proc_socialnetwork_tblscrap_delete();
                Response.Redirect("scrap.aspx");

            }
        }
    }
}