using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Asp_Project_Alamgir.ContentPages
{
    public partial class HospitalDepartment : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;



        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
                ListView1.DataBind();
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataLoad();
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {


            if (chkAgree.Checked && txtDepartment.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO Department (DepartmentName) VALUES(@departmentname)", con);
                    cmd.Parameters.AddWithValue("@departmentname", txtDepartment.Text);

                    cmd.ExecuteNonQuery();

                    DataLoad();
                    con.Close();
                    txtDepartment.Text = "";
                    chkAgree.Checked = false;


                }
                lblMessage.Text = "Data is Saved";
            }
            else
            {
                lblMessage.Text = "Please provide all values";
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (chkAgree.Checked && txtDepartment.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("UPDATE Department SET DepartmentName=@departmentname  WHERE DepartmentID=@departmentid", con);

                    cmd.Parameters.AddWithValue("@departmentid", lblDPID.Text);
                    cmd.Parameters.AddWithValue("@departmentname", txtDepartment.Text);

                    cmd.ExecuteNonQuery();

                    DataLoad();
                    con.Close();
                    txtDepartment.Text = "";
                    chkAgree.Checked = false;


                }
                lblMessage.Text = "Data is Updated";
            }
            else
            {
                lblMessage.Text = "Please provide all values";
            }



        }

      

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtDepartment.Text = GridView1.SelectedRow.Cells[2].Text;
            lblDPID.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}