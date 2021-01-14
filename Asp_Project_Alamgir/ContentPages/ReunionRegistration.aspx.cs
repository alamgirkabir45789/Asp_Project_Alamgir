using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//For Mail Configuration
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using Asp_Project_Alamgir.Bl;

namespace Asp_Project_Alamgir.ContentPages
{
    public partial class ReunionRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\aspnet-Asp_Project_Alamgir-20201028112215.mdf;Initial Catalog=aspnet-Asp_Project_Alamgir-20201028112215;Integrated Security=True");
        SqlCommand cmd;

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                dgViewReunionInfo.DataBind();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            DataLoad();
        }


        protected void sendEmailToClient()
        {
            var fromAddress = "1257363alamgir@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = txtEmail.Text.ToString();  // where the email will be sending
            string subject = "Medico Hospital Report Delivery Team";
            string body = "Thank you " + txtFullName.Text + " for visit our hospital. " + txtMessage.Text + "\n";
            body += "Looking forword to see you on the report collected day." + "\n\n";
            body += "==============  Details ===============" + "\n";
            body += " Address : Medico Medical College and Hospital, 110 CDA Avenue, Nasirabad, (Opposite CTG Shopping Complex) Dhaka - 4000\n";
            body += " Report Delivery Time : Start from 08:00 AM To 08:00 PM \n";
            body += "Please  call me on(+8801747 193 694) if you face any problem or contact by(alamgirkabir45389@gmail.com), if you require any further information.\n";

            // smtp settings
            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }




        protected void sendEmailToAuthority()
        {
            var fromAddress = "1257363alamgir@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = "alamgirkabir45389@gmail.com";  // where the email will be sending
            string subject = "Reunion Program-2020";

            string body = txtFullName.Text + " is comming to the Medico Hospital\n";
            body += "His/her personal information is like as below-\n";
            body += "Patient Name : " + txtFullName.Text + "\n";
            body += "Email Address : " + txtEmail.Text + "\n";
            body += "Patient ID : " + txtBatchNo.Text + "\n";
            body += "Phone Number : " + txtPhoneNo.Text + "\n";
            body += "Message : " + txtMessage.Text;
            // smtp settings
            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }


        private void ShowAlert(string strmsg)
        {
            string str1;
            str1 = "<script language = 'javascript' type = 'text/javascript'> alert('" + strmsg + "');</script>";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "JS", str1);
        }

        public void ClearAllData()
        {

            txtFullName.Text = "";
            txtEmail.Text = "";
            txtBatchNo.Text = "";
            txtPhoneNo.Text = "";
            txtMessage.Text = "";
            chkAgree.Checked = false;
            rtnMessage.Text = "";
            emailSendSuccess.Text = "";

        }



        protected void btnSave_Click(object sender, EventArgs e)
        {
          

                try
                {
                if (chkAgree.Checked && txtFullName.Text != "" && txtPhoneNo.Text != "")
                {

                    StudentReg reg = new StudentReg();
                    reg.FullName = txtFullName.Text;
                    reg.EmailAddress = txtEmail.Text;
                    reg.BatchNo = txtBatchNo.Text;
                    reg.PhoneNumber = txtPhoneNo.Text;
                    reg.Message = txtMessage.Text;

                    bool status = reg.Save();

                    if (status == true)
                    {
                        ShowAlert("Email Send Successfully ");
                        sendEmailToAuthority();
                        sendEmailToClient();
                        ClearAllData();
                        DataLoad();

                    }
                    else
                    {
                        ShowAlert("Failed To Send Email");
                    }
                }
                else
                {
                    rtnMessage.Text = "Please provide all data";
                }

            }
                catch (Exception ex)
                {
                    ShowAlert(ex.Message.ToString());
                }

           

           

        }

        protected void dgViewReunionInfo_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtPhoneNo.Text = dgViewReunionInfo.SelectedRow.Cells[5].Text;
            txtFullName.Text = dgViewReunionInfo.SelectedRow.Cells[2].Text;
            txtEmail.Text = dgViewReunionInfo.SelectedRow.Cells[3].Text;
            txtBatchNo.Text = dgViewReunionInfo.SelectedRow.Cells[4].Text;
            txtMessage.Text = dgViewReunionInfo.SelectedRow.Cells[6].Text;
            lblRID.Text = dgViewReunionInfo.SelectedRow.Cells[1].Text;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            try
            {
                

                    StudentReg reg = new StudentReg();
                reg.ReunionRegistrationID = Convert.ToInt32(lblRID.Text);


                    bool status = reg.Save();

                    if (status == true)
                    {
                        ShowAlert("You Data Successfully Deleted");
                        sendEmailToAuthority();
                        sendEmailToClient();
                        ClearAllData();
                        DataLoad();

                    }
                    else
                    {
                        ShowAlert("Deletion Completed");
                    }
               

            }
            catch (Exception ex)
            {
                ShowAlert(ex.Message.ToString());
            }



        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            try
            {
                if (chkAgree.Checked && txtFullName.Text != "" && txtPhoneNo.Text != "")
                {

                    StudentReg reg = new StudentReg();
                    reg.FullName = txtFullName.Text;
                    reg.EmailAddress = txtEmail.Text;
                    reg.BatchNo = txtBatchNo.Text;
                    reg.PhoneNumber = txtPhoneNo.Text;
                    reg.Message = txtMessage.Text;
                    reg.ReunionRegistrationID = Convert.ToInt32(lblRID.Text);
                                       
                    bool status = reg.Save();

                    if (status == true)
                    {
                        ShowAlert("Your Data  Successfully Updated");
                        sendEmailToAuthority();
                        sendEmailToClient();
                        ClearAllData();
                        DataLoad();

                    }
                    else
                    {
                        ShowAlert("Updation To Complete");
                    }
                }
                else
                {
                    rtnMessage.Text = "Please provide all data";
                }

            }
            catch (Exception ex)
            {
                ShowAlert(ex.Message.ToString());
            }


        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ClearAllData();
        }
    }
}