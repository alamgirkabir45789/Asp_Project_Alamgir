using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Asp_Project_Alamgir.Bl
{
    public class StudentReg
    {

        private string _FullName;
        private string _EmailAddress;
        private string _BatchNo;
        private string _PhoneNumber;
        private string _Message;
        private int _ReunionRegistrationID;


        public string FullName
        {
            get { return _FullName; }
            set { _FullName = value; }
        }
        public string EmailAddress
        {
            get { return _EmailAddress; }
            set { _EmailAddress = value; }
        }
        public string BatchNo
        {
            get { return _BatchNo; }
            set { _BatchNo = value; }
        }
        public string PhoneNumber
        {
            get { return _PhoneNumber; }
            set { _PhoneNumber = value; }
        }
        public string Message
        {
            get { return _Message; }
            set { _Message = value; }
        }

        public int ReunionRegistrationID
        {
            get { return _ReunionRegistrationID; }
            set { _ReunionRegistrationID = value; }
        }


        public bool Save()
        {
            try
            {
                DAL.StudentRegistration studentRegistration = new DAL.StudentRegistration();
                studentRegistration.RegisterData(_FullName, _EmailAddress, _BatchNo, _PhoneNumber, _Message);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception("Not Executed");
            }
        }


        public bool Update()
        {
            try
            {
                DAL.StudentRegistration studentRegistration = new DAL.StudentRegistration();
                studentRegistration.RegisterDataUpdate(_FullName, _EmailAddress, _BatchNo, _PhoneNumber, _Message, _ReunionRegistrationID);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception("Not Executed");
            }
        }



        public bool Delete()
        {
            try
            {
                DAL.StudentRegistration studentRegistration = new DAL.StudentRegistration();
                studentRegistration.RegisterDataDelete(_FullName, _EmailAddress, _BatchNo, _PhoneNumber, _Message, _ReunionRegistrationID);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception("Not Executed");
            }
        }



    }
}