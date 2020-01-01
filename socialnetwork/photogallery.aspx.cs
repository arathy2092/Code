using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using  System.Data;
using System.IO;
using BAL;
namespace socialnetwork
{
    public partial class photogallery : System.Web.UI.Page
    {
        photo objphoto = new photo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                photobind();
            }
            


        }
        public void photobind()
        {
            objphoto.userid = Session["userid"].ToString();
            DataTable dt = objphoto.proc_socialnetwork_tblphoto_selectuserid();
            if (dt.Rows.Count > 0)
            {

                photodatalist.DataSource = dt;
                photodatalist.DataBind();
            }

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (flupphoto.HasFile)
            {
                objphoto.userid = Session["userid"].ToString();
                try
                {
                    string filename = Path.GetFileName(flupphoto.FileName);
                    flupphoto.SaveAs(Server.MapPath("~/photo/") + filename);
                    string s = "~/photo/" + filename;
                    objphoto.photopath = s;
                    lblphotoerrormsg.Text = "photo uploaded successfully";
                }
                catch (Exception ex)
                {
                    lblphotoerrormsg.Text = "can't upload photo";
                }
            }
            objphoto.comment = txtdescription.Text;
            int retval = objphoto.proc_socialnetwork_tblphoto_insert();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertmessage", "alert('photo inserted')", true);

            txtdescription.Text = "";
            photobind();

        }

        
    }
}