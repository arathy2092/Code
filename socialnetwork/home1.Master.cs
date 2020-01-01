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
    public partial class home11 : System.Web.UI.MasterPage
    {
        reg objreg = new reg();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
          lblname.Text = Session["name"].ToString();
          if (!IsPostBack)
          {

              objreg.mobileno = Session["mobileno"].ToString();
               DataTable dt1 = objreg.proc_socialnetwork_tblprofile_selectmobileno();
               if (dt1.Rows.Count > 0)
               {

               }
               else
               {
                   menu.Visible = false;
                   left.Visible = false;
               }

              databind();
          }
          
         
          
        }
        public void databind()
        {
            DataTable dt = new DataTable();
            objreg.userid = Session["userid"].ToString();
            dt = objreg.proc_socialnetwork_tblprofile_selectuserid();
            imgprofilephoto.ImageUrl=dt.Rows[0]["photo"].ToString();
      
        }
       

        protected void Btnsearch_Click(object sender, EventArgs e)
        {
         
            Session["searchedname"] = txtsearch.Text;
            Response.Redirect("searchuser.aspx");
        }

        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("loginmain.aspx");
        }

        }
}