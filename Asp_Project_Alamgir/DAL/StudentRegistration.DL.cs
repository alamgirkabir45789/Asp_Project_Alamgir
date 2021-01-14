using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace Asp_Project_Alamgir.DAL
{
    public class StudentRegistration
    {

        public bool RegisterData(string FullName, string EmailAddress, string BatchNo, string PhoneNumber, string Message)
        {
            conString.con.Open();
            try
            {
                string query = "Insert Into ReunionRegistration Values('" + FullName + "','" + EmailAddress + "','" + BatchNo + "','" + PhoneNumber + "','" + Message + "')";
                SqlCommand cmd = new SqlCommand(query, conString.con);
                cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
            finally
            {
                conString.con.Close();
                //conString.con.Dispose();
            }
        }




        public bool RegisterDataUpdate(string FullName, string EmailAddress, string BatchNo, string PhoneNumber, string Message, int ReunionRegistrationID)
        {
            conString.con.Open();
            try
            {
                string query = "Update  ReunionRegistration Set FullName ='" + FullName + "',EmailAddress='" + EmailAddress + "',BatchNo ='" + BatchNo + "',PhoneNumber ='" + PhoneNumber + "', Message ='" + Message + "' Where  ReunionRegistrationID = '"+  ReunionRegistrationID + "')";
                SqlCommand cmd = new SqlCommand(query, conString.con);
                cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
            finally
            {
                conString.con.Close();
                //conString.con.Dispose();
            }
        }


        public bool RegisterDataDelete(string FullName, string EmailAddress, string BatchNo, string PhoneNumber, string Message, int ReunionRegistrationID)
        {
            conString.con.Open();
            try
            {
                string query = "Delete From  ReunionRegistration  Where  ReunionRegistrationID = '" + ReunionRegistrationID + "')";
                SqlCommand cmd = new SqlCommand(query, conString.con);
                cmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
            finally
            {
                conString.con.Close();
                //conString.con.Dispose();
            }
        }


    }
}