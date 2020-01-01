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
    public partial class loginmain : System.Web.UI.Page
    {
        reg objreg = new reg();
        request objreq = new request();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnllogin_Click(object sender, EventArgs e)
        {
            objreg.userid = txtluserid.Text;
            Session["id"] = txtluserid.Text;
            objreg.password = txtlpassword.Text;
            //login table is for storing details in register form
            DataTable dt = objreg.proc_socialnetwork_tbllogin_select();
           
            if (dt.Rows.Count > 0)
            { 
                Session["userid"] = dt.Rows[0]["userid"].ToString();
                Session["password"] = dt.Rows[0]["password"].ToString();
                Session["name"] = dt.Rows[0]["firstname"].ToString();
                objreg.mobileno = dt.Rows[0]["mobileno"].ToString();
                Session["mobileno"] = dt.Rows[0]["mobileno"].ToString();
                objreq.reqfrom = Session["userid"].ToString();
           
                DataTable dt1 = objreg.proc_socialnetwork_tblprofile_selectmobileno();
                if (dt1.Rows.Count > 0)
                {

                //    Session["photo"] = dt1.Rows[0]["photo"].ToString();
                   Response.Redirect("profile.aspx");
                }
                else
                {    
                  Response.Redirect("userhome.aspx");
               }
               
            }
            else
            {
                lblinvaild.Text = "invalid username or password";

            }
            
        }
    }
}