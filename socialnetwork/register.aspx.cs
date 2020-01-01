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
    public partial class register : System.Web.UI.Page
    {
        reg objreg = new reg();
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
            ddlstate1.DataSource = dt;
            ddlstate1.DataTextField = "statename";
            ddlstate1.DataValueField = "stateid";
            ddlstate1.DataBind();
            ddlstate1.Items.Insert(0, "select state");
        }

        private string validok()
        {
            if (txtuserid.Text.Trim() == "")
            {
                txtuserid.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtpassword.Text.Trim() == "")
            {
                txtpassword.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtfirstname.Text.Trim() == "")
            {
                txtfirstname.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtlastname.Text.Trim() == "")
            {
                txtlastname.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtpin.Text.Trim() == "")
            {
                txtpin.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtans.Text.Trim() == "")
            {
                txtans.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (ddlcity1.SelectedIndex == 0)
            {
                ddlcity1.Style.Add("border-color", "#CC0000");
                ret = ret + "district required";
                return ret;
            }
            if (ddlstate1.SelectedIndex == 0)
            {
                ddlstate1.Style.Add("border-color", "#CC0000");
                ret = ret + "state required";
                return ret;
            }
            return ret;

        }
     protected void btnrsubmit_Click(object sender, EventArgs e)
        {
            if (validok() == null)
            {
                int retval = 0;
                objreg.userid = txtuserid.Text;
                objreg.password = txtpassword.Text;
                objreg.firstname = txtfirstname.Text;
                Session["name"] = objreg.firstname;
                objreg.middlename = txtmiddlename.Text;
                objreg.lastname = txtlastname.Text;
                
               objreg.state = ddlstate1.SelectedValue;
                
                objreg.city = ddlcity1.SelectedValue;
                objreg.pin = txtpin.Text;

                objreg.sequrityquestion = ddlsecurityqstn.SelectedValue;
                objreg.sequrityans = txtans.Text;
                objreg.status = "y";
                objreg.mobileno = txtmobileno.Text;
                DataTable dt = new DataTable();
                dt = objreg.proc_socialnetwork_tblprofile_selectmobileno();
                if (dt.Rows.Count > 0)
                {
                    string message = "already phone number registered by another user";
                    string script = "window.onload=function(){alert('";
                    script += message;
                    script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "successmessage", script, true);

                }


                else
                {
                    retval = objreg.proc_socialnetwork_tbllogin_insert();
                    string message = "already phone number registered by another user";
                    string script = "window.onload=function(){alert('";
                    script += message;
                    script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "successmessage", script, true);

                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('record inserted successfully')", true);

                    txtuserid.Text = "";
                    txtpassword.Text = "";
                    txtrepassword.Text = "";
                    txtfirstname.Text = "";
                    txtmiddlename.Text = "";
                    txtlastname.Text = "";
                    ddlstate1.SelectedIndex = 0;
                    ddlcity1.SelectedIndex = 0;
                    txtpin.Text = "";
                    ddlsecurityqstn.SelectedIndex = 0;
                    txtans.Text = "";
                    Response.Redirect("loginmain.aspx");
                }
            }
            else
            {
                //string message = "all fields are mandatory";
                //string script = "window.onload=function(){alert('";
                //script += message;
                //script += "')};";
                //ClientScript.RegisterStartupScript(this.GetType(), "Successmessage", script, true);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('all fields are mandatory')", true);

            }
             

        }

    
     protected void ddlstate1_SelectedIndexChanged1(object sender, EventArgs e)
     {
         objplace.stateid = Convert.ToInt32(ddlstate1.SelectedValue);
         DataTable dt = new DataTable();
         dt = objplace.proc_socialnetwork_tblcity_selectform();
         ddlcity1.DataSource = dt;
         ddlcity1.DataTextField = "cityname";
         ddlcity1.DataValueField = "cityid";
         ddlcity1.DataBind();
         ddlcity1.Items.Insert(0, "select city");
     }
    }
}