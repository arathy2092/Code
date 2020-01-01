using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using DAL;
namespace BAL
{
    public class feed
    {
        dbservices objdb = new dbservices();
 public string name ;
public string address ;
public string city ;
public string state ;
public string mobile ;
public string fdate;
public string feedback;
public int proc_socialnetwork_tblfeedback_insert()
        {
            objdb.command.Parameters.Clear();
            objdb.command.Parameters.AddWithValue("@name", name);
            objdb.command.Parameters.AddWithValue("@address", address);
            objdb.command.Parameters.AddWithValue("@city", city);
            objdb.command.Parameters.AddWithValue("@state", state);
            objdb.command.Parameters.AddWithValue("@mobile", mobile);
            objdb.command.Parameters.AddWithValue("@fdate", fdate);
            objdb.command.Parameters.AddWithValue("@feedback", feedback);
            int retval = objdb.ExeScalarSP("proc_socialnetwork_tblfeedback_insert");
            return retval;
        }

    }

}
