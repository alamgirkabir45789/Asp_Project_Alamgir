using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Project_Alamgir.ContentPages
{
    public partial class RegAll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorRegistration.aspx");
        }

        protected void btnDepartment_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeReg.aspx");

        }

        protected void btnStaff_Click(object sender, EventArgs e)
        {
            Response.Redirect("HospitalDepartment.aspx");

        }

        protected void btnPatient_Click(object sender, EventArgs e)
        {
            Response.Redirect("IndoorPatientReg.aspx");

        }

        protected void btnBloodReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("ReunionRegistration.aspx");

        }
    }
}