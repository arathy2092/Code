using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;
namespace BAL
{
  
    public class place
    {
        dbservices objdb = new dbservices();
        public int stateid;
        public string statename;
        public int cityid;
        public string cityname;
        public int proc_socialnetwork_tblstate_insert()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@statename", statename);
            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblstate_insert");
            return retval;
        }
        public int  proc_socialnetwork_tblstate_update()
        {
             objdb.command.Parameters.Clear();
             objdb.command.Parameters.AddWithValue("@stateid", stateid);
            objdb.command.Parameters.AddWithValue("@statename", statename);
            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblstate_update");
            return retval;
        }
        public DataTable proc_socialnetwork_tblstate_select()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@stateid", stateid);
            DataTable dt= objdb.GetDataTableSP("proc_socialnetwork_tblstate_select");
            return dt;
        }
        public int proc_socialnetwork_tbllogin_delete()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@stateid", stateid);
            int retval = objdb.ExeNonQrySP("proc_socialnetwork_tbllogin_delete");
            return retval;
        }
        public int proc_socialnetwork_tblcity_insert()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@cityname", cityname);
            objdb.command.Parameters.AddWithValue("@stateid", stateid);
            objdb.command.Parameters.AddWithValue("@statename", statename);

            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblcity_insert");
            return retval;
        }
        public int proc_socialnetwork_tblcity_update()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@cityid", cityid);
            objdb.command.Parameters.AddWithValue("@stateid", stateid);
            objdb.command.Parameters.AddWithValue("@cityname", cityname);
            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblcity_update");
            return retval;
        }

        
         public DataTable Proc_socialnetwork_tblcity_selectcityid()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@cityid", cityid);
            DataTable dt = objdb.GetDataTableSP("Proc_socialnetwork_tblcity_selectcityid");
            return dt;
        }
        public DataTable proc_socialnetwork_tblcity_selectjoin()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@cityid", cityid);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblcity_selectjoin");
            return dt;
        }


        public int proc_socialnetwork_tblstate_delete()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@stateid", stateid);
            int retval = objdb.ExeNonQrySP("proc_socialnetwork_tblstate_delete");
            return retval;
            
        }

        public int proc_socialnetwork_tblcity_delete()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@cityid", cityid);
            int retval = objdb.ExeNonQrySP("proc_socialnetwork_tblcity_delete");
            return retval;
        }

        public DataTable proc_socialnetwork_tblcity_selectform()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@stateid", stateid);
            objdb.command.Parameters.AddWithValue("@cityid", cityid);
           DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblcity_selectform");
           return dt;
        }

    }
}
