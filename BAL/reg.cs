using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using DAL;
namespace BAL
{
    public class reg
    {
        dbservices objdb = new dbservices();
        public string userid;
        public string password;
        public string firstname;
        public string middlename;
        public string lastname;
        public string state;
        public string city;
        public string pin;
        public string sequrityquestion;
        public string sequrityans;
        public string status;
        public string photo;
        public string gender;
        public string dateofbirth;
        public string phoneno;
        public string mobileno;

        public int proc_socialnetwork_tbllogin_insert()
        {
            int retval=0;
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid",userid);
             objdb.command.Parameters.AddWithValue("@password",password);
             objdb.command.Parameters.AddWithValue("@firstname",firstname);
             objdb.command.Parameters.AddWithValue("@middlename",middlename);
             objdb.command.Parameters.AddWithValue("@lastname",lastname);
             objdb.command.Parameters.AddWithValue("@state",state);
             objdb.command.Parameters.AddWithValue("@city",city);
             objdb.command.Parameters.AddWithValue("@pin",pin);
             objdb.command.Parameters.AddWithValue("@mobileno", mobileno);
            objdb.command.Parameters.AddWithValue("@sequrityquestion",sequrityquestion);
            objdb.command.Parameters.AddWithValue("@sequrityans",sequrityans);
            objdb.command.Parameters.AddWithValue("@status", status);
            retval=objdb.ExeScalarSP("proc_socialnetwork_tbllogin_insert");
            return retval;
        }
        public DataTable proc_socialnetwork_tbllogin_select()
        {
            
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            objdb.command.Parameters.AddWithValue("@password", password);
          DataTable dt=objdb.GetDataTableSP("proc_socialnetwork_tbllogin_select");
          return dt;
        }

        public int proc_spcialnetwork_tbllogin_updatechangepassword()
        {
            int retval;
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            objdb.command.Parameters.AddWithValue("@password", password);
            retval = objdb.ExeScalarSP("proc_spcialnetwork_tbllogin_updatechangepassword");
            return retval;
        }
       
        public int proc_socialnetwork_tblprofile_update()
        {
            int retval = 0;
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            objdb.command.Parameters.AddWithValue("@photo", photo);
            objdb.command.Parameters.AddWithValue("@firstname", firstname);
            objdb.command.Parameters.AddWithValue("@middlename", middlename);
            objdb.command.Parameters.AddWithValue("@lastname", lastname);
            objdb.command.Parameters.AddWithValue("@gender", gender);
            objdb.command.Parameters.AddWithValue("@dateofbirth", dateofbirth);
            objdb.command.Parameters.AddWithValue("@city", city);
            objdb.command.Parameters.AddWithValue("@state", state);
            objdb.command.Parameters.AddWithValue("@pin", pin);
            objdb.command.Parameters.AddWithValue("@mobileno", mobileno);
            retval = objdb.ExeScalarSP("proc_socialnetwork_tblprofile_update");
            return retval;
        }

        public DataTable proc_socialnetwork_tblprofile_selectmobileno()
        {
            
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@mobileno", mobileno);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblprofile_selectmobileno");
          return dt;
        }
        //public DataTable proc_socialnetwork_tblprofile_selectphoneno()
        //{

        //    objdb.command.Parameters.Clear();
        //    objdb.command.Parameters.AddWithValue("@phoneno", phoneno);
        //    DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblprofile_selectphoneno");
        //    return dt;
        //}
       public DataTable proc_socialnetwork_tblprofile_selectuserid()
        {
            
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@userid", userid);
            DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblprofile_selectuserid");
          return dt;
        }
       public DataTable proc_socialnetwork_tblprofile_selectbyname()
       {

           objdb.command.Parameters.Clear();
           objdb.command.Parameters.AddWithValue("@firstname", firstname);
           objdb.command.Parameters.AddWithValue("@middlename",middlename);
           objdb.command.Parameters.AddWithValue("@lastname",lastname);
          DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblprofile_selectbyname");
           return dt;
       }
       public DataTable proc_socialnetwork_tbllogin_forget()
       {

           objdb.command.Parameters.Clear();
           objdb.command.Parameters.AddWithValue("@userid", userid);
           DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tbllogin_forget");
           return dt;
       }


       public DataTable proc_socialnetwork_tbllogin_passworddisplay()
       {

           objdb.command.Parameters.Clear();
           objdb.command.Parameters.AddWithValue("@userid", userid);
           objdb.command.Parameters.AddWithValue("@sequrityans", sequrityans);
           DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tbllogin_passworddisplay");
           return dt;
       }


       public DataTable proc_socialnetwork_tbllogin_selectforpassword()
       {
           objdb.command.Parameters.Clear();
           objdb.command.Parameters.AddWithValue("@userid", userid);
           DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tbllogin_selectforpassword");
           return dt;
      
       }

       public DataTable proc_socialnetwork_tbluprofile_selectuserid()
       {
           objdb.command.Parameters.Clear();
           objdb.command.Parameters.AddWithValue("@userid", userid);
           DataTable dt = objdb.GetDataTableSP("proc_socialnetwork_tblprofile_selectuserid");
           return dt;
       
       }
    }

}

