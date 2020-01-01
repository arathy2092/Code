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
    public partial class advertisement : System.Web.UI.Page
    {
        ad objad = new ad();
        string ret;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gridbind();
            }

        }

        public void gridbind()
        {
            adgrid.DataSource = objad.proc_socialnetwork_tbladvertisement_select();
            adgrid.DataBind();
        }
        private string validok()
        {
            if (txtadvertisements.Text.Trim() == "")
            {
                txtadvertisements.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtdescription.Text.Trim() == "")
            {
                txtdescription.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtaddtype.Text.Trim() == "")
            {
                txtaddtype.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            
            return ret;

        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (validok() == null)
            {


                objad.advertisement = txtadvertisements.Text;
                objad.adec = txtdescription.Text;
                objad.type = txtaddtype.Text;
                if (flupphoto.HasFile)
                {
                    try
                    {
                        string filename = Path.GetFileName(flupphoto.FileName);
                        flupphoto.SaveAs(Server.MapPath("~/photo/") + filename);
                        string s = "~/photo/" + filename;
                        objad.photos = s;
                        lblphotoerrormsg.Text = "photo uploaded successfully";
                    }
                    catch (Exception ex)
                    {
                        lblphotoerrormsg.Text = "can't upload photo";
                    }

                }
                int retval = objad.proc_socialnetwork_tbladvertisement_insert();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('successfully inserted')", true);

                txtadvertisements.Text = "";
                txtdescription.Text = "";
                txtaddtype.Text = "";
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

        protected void advertisementgrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["aid"] =e.CommandArgument.ToString();
            if (e.CommandName == "Delete")
            {
                objad.aid = Convert.ToInt32(Session["aid"].ToString());
                objad.proc_socialnetwork_tbladvertisement_delete();
                Response.Redirect("advertisement.aspx");

            }
        }

        
        
    }
}