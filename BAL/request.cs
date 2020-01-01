using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DAL;
namespace BAL
{
    public class request
    {
        dbservices objdb = new dbservices();
        public string userid;
        public int rid=0;
        public int sid;
        public string reqfrom;
        public string reqto;
        public string status;
        public string smsgfrom;
         public string smsgto;
         public string sdetails;
         public string username;
         public string friend;
        public int proc_socialnetwork_tblrequest_insert()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@reqfrom", reqfrom);
            objdb.command.Parameters.AddWithValue("@reqto", reqto);
            objdb.command.Parameters.AddWithValue("@status", status);
            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblrequest_insert");
            return retval;
        }
        public DataTable proc_socialnetwork_tblrequest_selectreqto()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@reqto", reqto);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblrequest_selectreqto");
            return dt;
        }
        public DataTable proc_socialnetwork_tblrequest_selectjoin()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@reqto", reqto);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblrequest_selectjoin");
            return dt;
        }


        public int proc_socialnetwork_tblfriend_insert()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@username", username);
            objdb.command.Parameters.AddWithValue("@friend", friend);

            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblfriend_insert");
            return retval;
        }


        public DataTable proc_socialnetwork_tblfriend_selectfriends()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@username", username);

           DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblfriend_selectfriends");
            return dt;
        }

        public int proc_socialnetwork_tblfriend_deletefriend()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@username", username);
            objdb.command.Parameters.AddWithValue("@friend", friend);

            int retval = objdb.ExeNonQrySP("proc_socialnetwork_tblfriend_deletefriend");
            return retval;
        }

        //not used
        public DataTable proc_socialnetwork_tblrequest_selectfriends()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@reqto", reqto);
           objdb.command.Parameters.AddWithValue("@reqfrom", reqfrom);

            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblrequest_selectfriends");
            return dt;
        }
        public DataTable proc_socialnetwork_tblrequest_selectfriendspageload()
        {
            objdb.command.Parameters.Clear();
             objdb.command.Parameters.AddWithValue("@reqfrom", reqfrom);
             objdb.command.Parameters.AddWithValue("@reqto", reqto);

            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblrequest_selectfriendspageload");
            return dt;
        }
  
        public int proc_socialnetwork_tblrequest_updatestatuschange()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@reqfrom", reqfrom);
           
            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblrequest_updatestatuschange");
            return retval;
        }

        public int proc_socialnetwork_tblrequest_updatestatusacceptfriend()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@reqfrom", reqfrom);
            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblrequest_updatestatusacceptfriend");
            return retval;
        }
         public DataTable proc_socialnetwork_tblprofile_selectscrap()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblprofile_selectscrap");
            return dt;
        }
        
            public DataTable proc_socialnetwork_tblscrap_select()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@smsgfrom", smsgfrom);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblscrap_select");
            return dt;
        }
            public DataTable proc_socialnetwork_tblscrap_selectscrapin()
            {
                objdb.command.Parameters.Clear();
                objdb.command.Parameters.AddWithValue("@smsgto", smsgto);
                DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblscrap_selectscrapin");
                return dt;
            }
        public int proc_socialnetwork_tblscrap_insert()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@smsgfrom", smsgfrom);
            objdb.command.Parameters.AddWithValue("@smsgto", smsgto);
            objdb.command.Parameters.AddWithValue("@sdetails", sdetails);
            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblscrap_insert");
            return retval;
        }

        public int proc_socialnetwork_tblscrap_delete()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@sid", sid);
            int retval = objdb.ExeNonQrySP("proc_socialnetwork_tblscrap_delete");
            return retval;
        }
    }
}
