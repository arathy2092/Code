using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BAL;
namespace socialnetwork
{
    public partial class citygrid : System.Web.UI.Page
    {
        place objplace = new place();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                
                gridbind();
            }
        }
       
    public void gridbind()
        {
            city_grid.DataSource = objplace.proc_socialnetwork_tblcity_selectjoin();
            city_grid.DataBind();
        }
        protected void citygrid_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["cityid"] = e.CommandArgument.ToString();
            if (e.CommandName == "Edit")
            {
                Response.Redirect("city.aspx");
            }
            if (e.CommandName == "Delete")
            {
                objplace.cityid = Convert.ToInt32(Session["cityid"].ToString());
                objplace.proc_socialnetwork_tblcity_delete();
            }

            Response.Redirect("citygrid.aspx");
            }
        }
    }
