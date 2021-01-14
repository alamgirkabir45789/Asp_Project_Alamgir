using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Asp_Project_Alamgir.DAL
{
    public class conString
    {

        public static SqlConnection con;

        static conString()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString);
        }

    }
}