using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Asp_Project_Alamgir.UserControl
{
    public partial class CommonUser : System.Web.UI.UserControl
    {
        string cs = ConfigurationManager.ConnectionStrings["DbCon"].ConnectionString;
        SqlConnection con;
        private string query;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        DataRow dr;

        public void GetDepartmentID()
        {
            using (con = new SqlConnection(cs))
            {


                con.Open();
                cmd = new SqlCommand("Select * From Department", con);
                adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                ddlDepartment.DataValueField = "DepartmentID";
                ddlDepartment.DataTextField = "DepartmentName";
                ddlDepartment.DataSource = ds;
                ddlDepartment.DataBind();

                con.Close();
            }
        }

        public void ClearAllData()
        {

            txtName.Text = "";
            txtEmail.Text = "";
            txtContactNo.Text = "";
            txtUserName.Text = "";
            ddlDepartment.Text = ddlDepartment.SelectedValue.ToString();
            txtPassword.Text = "";
            chkAggree.Checked=false;
           

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDepartmentID();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            if (chkAggree.Checked !=false && txtName.Text != "" && txtContactNo.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO Employee (Name,Email,ContactNo,DepartmentID,Username,Password) Values (@name,@email,@contactno,@departmentid,@username,@password)", con);

                    //query = "sp_hospital_empsignup";
                    //cmd = new SqlCommand(query, con);
                    //cmd.CommandType = CommandType.StoredProcedure;


                    cmd.Parameters.AddWithValue("@name", txtName.Text.ToString());
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text.ToString());
                    cmd.Parameters.AddWithValue("@contactno", txtContactNo.Text.ToString());
                    cmd.Parameters.AddWithValue("@departmentid", ddlDepartment.SelectedValue.ToString());

                    cmd.Parameters.AddWithValue("@username", txtUserName.Text.ToString());
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text.ToString());
                    

                    cmd.ExecuteNonQuery();
                    con.Close();

                    ClearAllData();
                }
                lblMessage.Text = "Your data inserted successfully!!!!!!";

            }
            else
            {
                lblMessage.Text = "Please provide all data";
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }
    }
}