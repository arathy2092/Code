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
    public partial class userad : System.Web.UI.Page
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
       
    }
}