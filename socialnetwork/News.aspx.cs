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
    public partial class News : System.Web.UI.Page
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
            newsgrid.DataSource = objad.proc_socialnetwork_tblnews_select();
           newsgrid.DataBind();
        }
        private string validok()
        {
            if (txtnews.Text.Trim() == "")
            {
                txtnews.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtdate.Text.Trim() == "")
            {
                txtdate.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }
            if (txtnewsdetail.Text.Trim() == "")
            {
                txtnewsdetail.Style.Add("border-color", "#CC0000");
                ret = ret + "name required";
                return ret;
            }

            return ret;

        }

        protected void btnpsend_Click(object sender, EventArgs e)
        {
            if (validok() == null)
            {

                objad.news = txtnews.Text;
                objad.newsdate = txtdate.Text;
                objad.newsdetails = txtnewsdetail.Text;
                int retval = objad.proc_socialnetwork_tblnews_insert();
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('news inserted successfully')", true);
                txtnews.Text = "";
                txtdate.Text = "";
                txtnewsdetail.Text = "";
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

        protected void newsgrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["anid"] = e.CommandArgument.ToString();
            if (e.CommandName == "Delete")
            {
                objad.anid = Convert.ToInt32(Session["anid"].ToString());
                objad.proc_socialnetwork_tblnews_delete();
                Response.Redirect("News.aspx");

            }
        }
      
    }
}