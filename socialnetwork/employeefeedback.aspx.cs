using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using BAL;
namespace socialnetwork
{
    public partial class employeefeedback : System.Web.UI.Page
    {
       
        feed objfeed = new feed();
         place objplace = new place();
        string ret;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                statebind();
            }
        }
         public void statebind()
        {
            DataTable dt = new DataTable();
            dt = objplace.proc_socialnetwork_tblstate_select();
            ddlstate.DataSource = dt;
            ddlstate.DataTextField = "statename";
            ddlstate.DataValueField = "stateid";
            ddlstate.DataBind();
            ddlstate.Items.Insert(0, "select state");
        }

       

        private string validok()
        {
            txtname.Style.Add("border-color", "#CC0000");
            txtaddress.Style.Add("border-color", "#CC0000");
            txtmobileno.Style.Add("border-color", "#CC0000");
            txtfeedbackdate.Style.Add("border-color", "#CC0000");
            txtfeedback.Style.Add("border-color", "#CC0000");

 
            if (txtname.Text.Trim() == "")
            {
                txtname.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtaddress.Text.Trim() == "")
            {
                txtaddress.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtmobileno.Text.Trim() == "")
            {
                txtmobileno.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtfeedbackdate.Text.Trim() == "")
            {
                txtfeedbackdate.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtfeedback.Text.Trim() == "")
            {
                txtfeedback.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (ddlcity.SelectedIndex == 0)
            {
                ddlcity.Style.Add("border-color", "#CC0000");
                ret = ret + "district required";
                return ret;
            }
            if (ddlstate.SelectedIndex == 0)
            {
                ddlstate.Style.Add("border-color", "#CC0000");
                ret = ret + "state required";
                return ret;
            }
            

            return ret;
        }

        protected void btnpsubmit_Click(object sender, EventArgs e)
        {
            if (validok() == null)
            {
          
            objfeed.name = txtname.Text;
            objfeed.address = txtaddress.Text;
            objplace.cityid= Convert.ToInt32( ddlcity.SelectedValue);
            DataTable dt=objplace.proc_socialnetwork_tblcity_selectjoin();
            objfeed.city = dt.Rows[0]["cityname"].ToString();
           // objfeed.city = ddlcity.SelectedValue;
           objplace.stateid =Convert.ToInt32( ddlstate.SelectedValue);

            DataTable dt1 = objplace.proc_socialnetwork_tblstate_select();
            objfeed.state = dt1.Rows[0]["statename"].ToString();
            
           // objfeed.state = ddlstate.SelectedValue;
            objfeed.mobile = txtmobileno.Text;
            objfeed.fdate = txtfeedbackdate.Text;
            objfeed.feedback = txtfeedback.Text;
            int retval = objfeed.proc_socialnetwork_tblfeedback_insert();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('feedback sent successfully')", true);
            txtname.Text = "";
            txtaddress.Text = "";
            ddlcity.SelectedIndex = 0;
            ddlstate.SelectedIndex = 0;
            txtmobileno.Text = "";
            txtfeedback.Text = "";
            txtfeedbackdate.Text = "";

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

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {

            objplace.stateid = Convert.ToInt32(ddlstate.SelectedValue);
            DataTable dt = new DataTable();
            dt = objplace.proc_socialnetwork_tblcity_selectform();
            ddlcity.DataSource = dt;
            ddlcity.DataTextField = "cityname";
            ddlcity.DataValueField = "cityid";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, "select city");
    
        }

        }
}