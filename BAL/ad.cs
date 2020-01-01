using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;
namespace BAL
{
     public class ad
    {
         dbservices objdb = new dbservices();
        public string userid;
        public string password;
        public string advertisement;
        public int aid;
        public string adec;
        public string type;
        public string photos;
        public int anid;
        public string news;
        public string newsdate;
        public string newsdetails;
        public int fid;
        public string status;
        public int proc_socialnetwork_tbladmin_insert()
        {
            int retval;
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            objdb.command.Parameters.AddWithValue("@password", password);
            retval = objdb.ExeScalarSP("proc_socialnetwork_tbladmin_insert");
            return retval;
        }
        public DataTable proc_socialnetwork_tbladmin_select()
        {

            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            objdb.command.Parameters.AddWithValue("@password", password);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tbladmin_select");
            return dt;
        }

        public DataTable proc_socialnetwork_tbllogin_selectbyadmin()
        {

            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tbllogin_selectbyadmin");
            return dt;
        }

       
              public int proc_socialnetwork_tbllogin_updatebyadmin()
        {
            int retval;
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            objdb.command.Parameters.AddWithValue("@status", status);
            retval = objdb.ExeScalarSP("proc_socialnetwork_tbllogin_updatebyadmin");
            return retval;
        }
              public int proc_spcialnetwork_tbladmin_updatechangepassword()
              {
                  int retval;
                  objdb.command.Parameters.Clear();
                  objdb.command.Parameters.AddWithValue("@userid", userid);
                  objdb.command.Parameters.AddWithValue("@password", password);
                  retval = objdb.ExeScalarSP("proc_spcialnetwork_tbladmin_updatechangepassword");
                  return retval;
              }
       
       
        public int proc_socialnetwork_tbladvertisement_insert()
        {
            int retval;
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@advertisement",advertisement);
            objdb.command.Parameters.AddWithValue("@adec",adec);
            objdb.command.Parameters.AddWithValue("@type", type);
            objdb.command.Parameters.AddWithValue("@photos",photos);
            retval = objdb.ExeScalarSP("proc_socialnetwork_tbladvertisement_insert");
            return retval;
        }
        public DataTable proc_socialnetwork_tbladvertisement_select()
        {

            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@aid", anid);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tbladvertisement_select");
            return dt;
        }
        public int proc_socialnetwork_tblnews_insert()
        {
            int retval;
            objdb.command.Parameters.Clear();

            objdb.command.Parameters.AddWithValue("@news", news);
            objdb.command.Parameters.AddWithValue("@newsdate", newsdate);
            objdb.command.Parameters.AddWithValue("@newsdetails", newsdetails);
            retval = objdb.ExeScalarSP("proc_socialnetwork_tblnews_insert");
            return retval;
        }
        public DataTable proc_socialnetwork_tblnews_select()
        {

            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@anid", anid);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblnews_select");
            return dt;
        }
        public DataTable proc_socialnetwork_tblfeedback_select()
        {

            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@fid", fid);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblfeedback_select");
            return dt;
        }

        public int proc_socialnetwork_tbladvertisement_delete()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@aid", aid);
            int retval = objdb.ExeNonQrySP("proc_socialnetwork_tbladvertisement_delete");
            return retval;
        }

        public int proc_socialnetwork_tblnews_delete()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@anid", anid);
            int retval = objdb.ExeNonQrySP("proc_socialnetwork_tblnews_delete");
            return retval;
        }



        public int proc_socialnetwork_tblfeedback_delete()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@fid", fid);
            int retval = objdb.ExeNonQrySP("proc_socialnetwork_tblfeedback_delete");
            return retval;
       
            
        }
    }
}
