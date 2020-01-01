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
    public partial class requestuser : System.Web.UI.Page
    {
        reg objreg = new reg();
        place objplace = new place();
        request objrequest=new request();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblfirstname.Text=HttpUtility.UrlDecode(Request.QueryString["firstname"]);
            lblmiddlename.Text = HttpUtility.UrlDecode(Request.QueryString["middlename"]);
            lbllastname.Text = HttpUtility.UrlDecode(Request.QueryString["lastname"]);
            lbluserid.Text = HttpUtility.UrlDecode(Request.QueryString["userid"]); 
              objplace.cityid= Convert.ToInt32(HttpUtility.UrlDecode(Request.QueryString["city"]));
               DataTable dt2 = objplace.proc_socialnetwork_tblcity_selectjoin();
                lblcity.Text = dt2.Rows[0]["cityname"].ToString();
           objplace.stateid=Convert.ToInt32(HttpUtility.UrlDecode(Request.QueryString["state"]));
           DataTable dt1 = objplace.proc_socialnetwork_tblstate_select();
           lblstate.Text = dt1.Rows[0]["statename"].ToString();
           
           }

        protected void btnrequest_Click(object sender, EventArgs e)
        {
            objrequest.reqfrom = Session["userid"].ToString();
            objrequest.reqto=lbluserid.Text;
            objrequest.status = "n";
            objrequest.proc_socialnetwork_tblrequest_insert();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('friend request sent')", true);


        }

        protected void btnscrap_Click(object sender, EventArgs e)
        {
            Response.Redirect("scrap.aspx");
        }

        protected void Btnclose_Click(object sender, EventArgs e)
        {
            Response.Redirect("searchuser.aspx");
        }

       
    }
}