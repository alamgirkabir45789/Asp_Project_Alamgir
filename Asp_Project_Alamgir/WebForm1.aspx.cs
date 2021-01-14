using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Project_Alamgir
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        MedicoHospital_DBEntities6 medicoHospital;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (medicoHospital = new MedicoHospital_DBEntities6())
            {

                LabReport lab = new LabReport();
                lab.PatientName = txtPatientName.Text;
                lab.Age = txtAge.Text;
                lab.Gender = ddlGender.SelectedValue;
                lab.Email = txtEmail.Text;
                lab.ContactNo = txtContactNo.Text;
                lab.VisitingDate = txtVisitingDate.Text;
                lab.ExamName = txtExamName.Text;
                lab.Price = txtPrice.Text;

                medicoHospital.LabReports.Add(lab);
                medicoHospital.SaveChanges();



            }
        }
    }
}