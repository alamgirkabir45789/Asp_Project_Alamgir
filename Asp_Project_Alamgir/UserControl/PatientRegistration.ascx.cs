using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//This is Aditional
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Asp_Project_Alamgir.UserControl
{
    public partial class PatientRegistration : System.Web.UI.UserControl
    {
        PatientRegDataContext pdx = new PatientRegDataContext();

               

        private void ClearData()
        {
            txtName.Text = "";
            txtEmail.Text = "";

            radBtnGender.ClearSelection();
            txtAge.Text = "";
            txtContactNo.Text = "";
            chkAgree.Checked = false;
            txtVisitingDate.Text = "";
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowDepartment();
            }


        }



        private void ShowDepartment()

        {
            //create new instance of the the DataContext class that we have just created

            PatientRegDataContext db = new PatientRegDataContext();

            FillListBox(db);
        }

        private void FillListBox(PatientRegDataContext db)

        {
            //LINQ syntax

            //Select the ProductID and ProductName from Products

            var departmentName = from c in db.Departments
                                 select new

                                 {
                                     DepartmentID = c.DepartmentID,

                                     DepartmentName = c.DepartmentName,
                                 };

            //Bind the DropDownList

            ddlDepartment.DataSource = departmentName;

            ddlDepartment.DataTextField = "DepartmentName";

            ddlDepartment.DataValueField = "DepartmentID";

            ddlDepartment.DataBind();

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (chkAgree.Checked && txtName.Text != "" && ddlDepartment.SelectedValue != "")
            {

                using (pdx = new PatientRegDataContext())
                {
                    Patient patient = new Patient
                    {
                        Name = txtName.Text,
                        Age = txtAge.Text,
                        Gender = radBtnGender.SelectedValue,
                        Email = txtEmail.Text,
                        ContactNo = txtContactNo.Text,
                        DepartmentID = Convert.ToInt32(ddlDepartment.SelectedValue),
                        VisitingDate=txtVisitingDate.Text


                    };

                    pdx.Patients.InsertOnSubmit(patient);
                    pdx.SubmitChanges();
                }

                //DataLoad();
                ClearData();


                lblMessage.Text = "Your data inserted successfully";

            }
            else
            {
                lblMessage.Text = "Please fill all information";


            }



        }

        protected void ddlDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }       


        protected void btnEdit_Click(object sender, EventArgs e)
        {

            

        }

        protected void btnDelete_Click1(object sender, EventArgs e)
        {

           

        }

        protected void dgViewPatient_SelectedIndexChanged(object sender, EventArgs e)
        {

            

        }


    }
}