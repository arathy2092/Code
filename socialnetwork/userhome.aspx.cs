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
    public partial class userhome : System.Web.UI.Page
    {
        reg objreg = new reg();
        place objplace = new place();

        string ret;
      
        protected void Page_Load(object sender, EventArgs e)
        {
        
            if (!IsPostBack)
            {
          
                statebind();
                databind();

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
        public void databind()
        {
            DataTable dt = new DataTable();
            objreg.userid = Session["userid"].ToString();
            //selecting details form login table for databind
            dt = objreg.proc_socialnetwork_tbllogin_selectforpassword();

            txtfirstname.Text = dt.Rows[0]["firstname"].ToString();
          txtmiddlename.Text= dt.Rows[0]["middlename"].ToString();
          txtlastname.Text = dt.Rows[0]["lastname"].ToString();
           ddlstate.SelectedValue= dt.Rows[0]["state"].ToString();
          // ddlcity1.SelectedValue= dt.Rows[0]["city"].ToString();
           string s = dt.Rows[0]["city"].ToString().Trim();

           DataTable dt1 = new DataTable();
           objplace.cityid = Convert.ToInt32(s.ToString());
           dt1 = objplace.Proc_socialnetwork_tblcity_selectcityid();
           ddlcity1.DataSource = dt1;
           ddlcity1.DataTextField = "cityname";
           ddlcity1.DataValueField = "cityid";
           ddlcity1.DataBind();
           txtpin.Text = dt.Rows[0]["pin"].ToString();
           txtmobileno.Text = dt.Rows[0]["mobileno"].ToString();
       
        }
      
        private string validok()
        {

            
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
            if (rdbgender.SelectedValue == "")
            {
                string message = "gender required";
                string script = "window.onload=function(){alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "successmessage", script, true);
                ret = ret + "gender required";
                return ret;


            }
            if (txtdob.Text.Trim() == "")
            {
                txtdob.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtpin.Text.Trim() == "")
            {
                txtpin.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtmobileno.Text.Trim() == "")
            {
                txtmobileno.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (ddlstate.SelectedIndex == 0)
            {
                ddlstate.Style.Add("border-color", "#CC0000");
                ret = ret + "state required";
                return ret;
            }
            //if (ddlcity1.SelectedIndex == 0)
            //{
            //    ddlcity1.Style.Add("border-color", "#CC0000");
            //    ret = ret + "district required";
            //    return ret;
            //}

            return ret;

        }
       

        protected void btnpsubmit_Click1(object sender, EventArgs e)
        {
            if (validok() == null)
            {
                //userid from login page
                objreg.userid = Session["userid"].ToString();
                objreg.password = Session["password"].ToString();
                objreg.firstname = txtfirstname.Text;
                objreg.middlename = txtmiddlename.Text;
                objreg.lastname = txtlastname.Text;
                objreg.gender = rdbgender.SelectedValue;
                objreg.dateofbirth = txtdob.Text;
                objreg.state = ddlstate.SelectedValue;
                objreg.city = ddlcity1.SelectedValue;
                objreg.pin = txtpin.Text;
                if(flupphoto.HasFile)
                {
                    try
                    {
                        string filename = Path.GetFileName(flupphoto.FileName);
                        flupphoto.SaveAs(Server.MapPath("~/photo/") + filename);
                        string s = "~/photo/" + filename;
                        objreg.photo = s;
                        lblphotoerrormsg.Text = "photo uploaded successfully";
                    }
                    catch (Exception ex)
                    {
                        lblphotoerrormsg.Text = "can't upload photo";
                    }
                }
                //objreg.phoneno = txtphoneno.Text;
                objreg.mobileno = txtmobileno.Text;
                string c = objreg.mobileno;
                DataTable dt = new DataTable();
                dt = objreg.proc_socialnetwork_tbllogin_select();
                if (dt.Rows.Count > 0)
                {
                    string d = dt.Rows[0]["mobileno"].ToString();

                    if (c == d)
                    {
                        objreg.userid = Session["userid"].ToString();

                        int retval = objreg.proc_socialnetwork_tblprofile_update();
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('record inserted successfully')", true);

                        //Session["photo"] = objreg.photo;
                        txtfirstname.Text = "";
                        txtmiddlename.Text = "";
                        txtlastname.Text = "";
                        rdbgender.SelectedValue = "";
                        txtdob.Text = "";
                        ddlstate.SelectedIndex = 0;
                        ddlcity1.SelectedIndex = 0;
                        txtpin.Text = "";
                        txtmobileno.Text = "";
                       Response.Redirect("profile.aspx");

                    }

                    else
                    {
                        
                        string message = "not ur mobile number";
                        string script = "window.onload=function(){alert('";
                        script += message;
                        script += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "successmessage", script, true);


                    }

                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('all fields are mandatory')", true);

                //string message = "all fields are mandatory";
                //string script = "window.onload=function(){alert('";
                //script += message;
                //script += "')};";
                //ClientScript.RegisterStartupScript(this.GetType(), "successmessage", script, true);

            }

        }
       

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            objplace.stateid = Convert.ToInt32(ddlstate.SelectedValue);
            DataTable dt = new DataTable();
            dt = objplace.proc_socialnetwork_tblcity_selectform();
            ddlcity1.DataSource = dt;
            ddlcity1.DataTextField = "cityname";
            ddlcity1.DataValueField = "cityid";
            ddlcity1.DataBind();
            ddlstate.Items.Insert(0, "select city");

        }



    }
}