using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using System.Data.SqlClient;
using System.Configuration;

namespace Asp_Project_Alamgir.Management
{
    public partial class ReportViewer : System.Web.UI.Page
    {
        ReportViewer rpt = new ReportViewer();
        protected void Page_Load(object sender, EventArgs e)
        {



            ReportViewer cryRpt = new ReportViewer();
            cryRpt.Load(Server.MapPath("MyReports.rpt"));
            CrystalReportViewer1.ReportSource = cryRpt;
        }

        private new void Load(string v)
        {
            throw new NotImplementedException();
        }
    }
}