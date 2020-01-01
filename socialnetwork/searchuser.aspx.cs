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
    public partial class searchuser : System.Web.UI.Page
    {
        reg objreg = new reg();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                objreg.firstname = Session["searchedname"].ToString();
                objreg.middlename = Session["searchedname"].ToString();
                objreg.lastname = Session["searchedname"].ToString();
              //  Session["s"]= Session["userid"].ToString();
                DataTable dt =objreg.proc_socialnetwork_tblprofile_selectbyname();
                if (dt.Rows.Count > 0)
                {
                    dlsearchuser.DataSource = dt;
                    dlsearchuser.DataBind();
                }
            }
            
        }

       
    }
}