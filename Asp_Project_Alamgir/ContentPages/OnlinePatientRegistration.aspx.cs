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
using System.Configuration;
using System.Data;


namespace Asp_Project_Alamgir.ContentPages
{
    public partial class OnlinePatientRegistration : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString;

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        DataRow dr;
        DataSet ds;

        public void GetDepartmentID()
        {
            using (con = new SqlConnection(cs))
            {


                //con.Open();
                cmd = new SqlCommand("Select * From Department", con);
                adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                ddlDepartment.DataValueField = "DepartmentID";
                ddlDepartment.DataTextField = "DepartmentName";
                ddlDepartment.DataSource = ds;
                ddlDepartment.DataBind();

               
            }
        }

        public void ClearAllData()
        {

            txtName.Text = "";
            txtEmail.Text = "";
            txtContactNo.Text = "";
            txtVisitingDate.Text = "";
            ddlDepartment.Text = ddlDepartment.SelectedValue.ToString();
            radBtnGender.Text = "";
            txtAge.Text = "";
            lblMessage.Text = "";
            emailSend.Text = "";
            radBtnGender.ClearSelection();
        }



        protected void sendEmailToClient()
        {
            var fromAddress = "1257363alamgir@gmail.com";
            const string fromPassword = "nvit-r44";
            var toAddress = txtEmail.Text.ToString();  // where the email will be sending
            string subject = "Online Patient Registration";
            string body = "Thank you " + txtName.Text + " for your online registration in Medico Hospital. " + "\n";
            body += "Looking forword to see you on visiting day." + "\n\n";
            body += "==============  Details ===============" + "\n";
            body += " Address : Medico Medical College and Hospital, 110 CDA Avenue, Nasirabad, (Opposite CTG Shopping Complex) Dhaka - 4000\n";
            //body += "Event Date : Friday, 02 December 2020\n";
            //body += "Event Start Time : Start from 02:00 PM onwards\n";
            body += "Please feel free to call me on(+8801747 193 694) or contact by(alamgirkabir45389@gmail.com), if you require any further information.\n";

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
            string subject = "Online Patient Registration";

            string body = txtName.Text + " is successfully registered to Medico Hospital.\n";
            body += "His/her personal information is like as below-\n";
            body += "Patient Name : " + txtName.Text + "\n";
            body += "Age : " + txtAge.Text + "\n";
            body += "Gender : " + radBtnGender.Text + "\n";
            body += "Email Address : " + txtEmail.Text + "\n";
            body += "Contact Number : " + txtContactNo.Text + "\n";
            body += "Department Name : " + ddlDepartment.Text + "\n";
            body += "Visiting Date : " + txtVisitingDate.Text;
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
                          
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDepartmentID();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
                if ( txtName.Text != "" && txtContactNo.Text != "")
                {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO OnlinePatientReg (Name, Age, Gender, Email, ContactNo,DepartmentID,VisitingDate) Values (@name, @age, @gender, @email, @contactno,@departmentid,@visitingdate)", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@age", txtAge.Text);
                    cmd.Parameters.AddWithValue("@gender", radBtnGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@contactno", txtContactNo.Text);
                    cmd.Parameters.AddWithValue("@departmentid", ddlDepartment.SelectedValue);
                    cmd.Parameters.AddWithValue("@visitingdate", txtVisitingDate.Text);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    sendEmailToAuthority();
                    sendEmailToClient();
                    ClearAllData();
                    lblMessage.Text = "";

                }
                    lblMessage.Text = "Your are successfully registered.Please check your email adddress!!";

                }
                else
                {
                    lblMessage.Text = "Please provide all data";
                }           


        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ClearAllData();
        }
    }
}