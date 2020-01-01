using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using BAL;

namespace socialnetwork
{
    public partial class profile : System.Web.UI.Page
    {
        reg objreg = new reg();
        place objplace = new place();
        string ret;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblwelcomename.Text = Session["name"].ToString();

            if(!IsPostBack)
            {

                databind();
            }
           
            //if (validok() == null)
            //{
            //    lblprofilenotcomplete.Text = "";
            //    
               
            //}
            //else
            //{
            //    lblprofilenotcomplete.Text = "ur profile not completed";

            //}
                
        }

        //private string validok()
        //{

        //    lbl1firstname.Style.Add("Border-color", "#CC0000");
        //    lbl1middlename.Style.Add("Border-color", "#CC0000");
        //    lbl1lastname.Style.Add("Border-color", "#CC0000");
        //    lbl1gender.Style.Add("Border-color", "#CC0000");
        //    lbl1dob.Style.Add("Border-color", "#CC0000");
        //    lbl1state.Style.Add("Border-color", "#CC0000");
        //    lbl1city.Style.Add("Border-color", "#CC0000");
        //    lbl1pin.Style.Add("Border-color", "#CC0000");
        //    lbl1mobileno.Style.Add("Border-color", "#CC0000");
        //    lbl1dob.Style.Add("Border-color", "#CC0000");
        //    lbl1dob.Style.Add("Border-color", "#CC0000");
        //    if (lbl1firstname.Text.Trim() == "" || lbl1middlename.Text.Trim() == "" || lbl1lastname.Text.Trim() == "" || lbl1gender.Text.Trim() == "" || lbl1dob.Text.Trim() == "" || lbl1state.Text.Trim() == "" || lbl1city.Text.Trim() == "" || lbl1pin.Text.Trim() == "" || lbl1mobileno.Text.Trim() == "")
        //    {
        //        ret = ret + "field required";
        //        return ret;
        //    }
        //    if (imgprofileimage.ImageUrl == "")
        //    {
        //        ret = ret + "photo required";
        //        return ret;

        //    }

        //    return ret;

        //}
        public void databind()
        {
            DataTable dt = new DataTable();
            objreg.userid = Session["userid"].ToString();
            dt = objreg.proc_socialnetwork_tblprofile_selectuserid();

            lbl1firstname.Text = dt.Rows[0]["firstname"].ToString();
            lbl1middlename.Text = dt.Rows[0]["middlename"].ToString();
            lbl1lastname.Text = dt.Rows[0]["lastname"].ToString();
            lbl1gender.Text = dt.Rows[0]["gender"].ToString();
            lbl1dob.Text = dt.Rows[0]["dateofbirth"].ToString();
          //  lbl1state.Text = dt.Rows[0]["state"].ToString();
            objplace.stateid =Convert.ToInt32(  dt.Rows[0]["state"].ToString());
            DataTable dt1 = objplace.proc_socialnetwork_tblstate_select();
            lbl1state.Text = dt1.Rows[0]["statename"].ToString();
           
          //  lbl1city.Text = dt.Rows[0]["city"].ToString();
            objplace.cityid = Convert.ToInt32(dt.Rows[0]["city"].ToString());
            DataTable dt2 = objplace.proc_socialnetwork_tblcity_selectjoin();
            lbl1city.Text= dt2.Rows[0]["cityname"].ToString();
           
            lbl1pin.Text = dt.Rows[0]["pin"].ToString();
            lbl1mobileno.Text = dt.Rows[0]["mobileno"].ToString();
            imgprofileimage.ImageUrl = dt.Rows[0]["photo"].ToString();
           }
        protected void Btnupdateprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("updateprofile.aspx");
        }

        protected void btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }

        protected void btnplogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("loginmain.aspx");
   
        }

        
         }
}