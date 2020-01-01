using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DAL;
namespace BAL
{
    public class photo
    {
        dbservices objdb = new dbservices();
        public int photoid;
        public string userid;
        public string photopath;
        public string comment;
        public int proc_socialnetwork_tblphoto_insert()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            objdb.command.Parameters.AddWithValue("@photopath", photopath);
            objdb.command.Parameters.AddWithValue("@comment", comment);
            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblphoto_insert");
            return retval;
        }

        public DataTable proc_socialnetwork_tblphoto_selectuserid()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblphoto_selectuserid");
            return dt;
        }
      
    }

}
