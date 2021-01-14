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
    public partial class MyLogin : System.Web.UI.Page
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

            }
        }


        public void CleanAllControl()
        {
            txtEmail.Text = "";
            txtPassword.Text = "";
            

            ddlUserType.Text = ddlUserType.Items[0].ToString();
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text != "" && txtPassword.Text != "" && ddlUserType.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    
                    if (ddlUserType.SelectedValue == "Doctor")
                    {

                        con.Open();


                        cmd = new SqlCommand("Select * From Doctor Where Email=@email  and Password =@password", con);
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@password", txtPassword.Text);


                        adapter = new SqlDataAdapter(cmd);
                        dt = new DataTable();
                        adapter.Fill(dt);
                        cmd.ExecuteNonQuery();

                        if (dt.Rows.Count > 0)
                        {
                            Response.Write("<script>alert('You are login successfully as a doctor')</script>");
                            Response.Redirect("~/ContentPages/RegAll.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('error in login')</script>");

                        }
                        con.Close();


                        CleanAllControl();

                    }     


                    if (ddlUserType.SelectedValue == "Employee")
                    {

                        con.Open();
                        cmd = new SqlCommand("Select * From Employee Where Email=@email  and Password =@password", con);
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                        adapter = new SqlDataAdapter(cmd);
                        dt = new DataTable();
                        adapter.Fill(dt);
                        cmd.ExecuteNonQuery();

                        if (dt.Rows.Count > 0)
                        {
                            Response.Write("<script>alert('You are login successfully as a employee')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('error in login')</script>");
                            Response.Redirect("~/ContentPages/RegAll.aspx");


                        }

                        con.Close();


                        CleanAllControl();
                    }
                    

                    if (ddlUserType.SelectedValue == "User")
                    {

                        con.Open();
                        cmd = new SqlCommand("Select * From AspNetUsers Where Email=@email  and PasswordHash =@passwordhash", con);
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@passwordhash", txtPassword.Text);
                        adapter = new SqlDataAdapter(cmd);
                        dt = new DataTable();
                        adapter.Fill(dt);
                        cmd.ExecuteNonQuery();

                        if (dt.Rows.Count > 0)
                        {
                            Response.Write("<script>alert('You are login successfully as a User')</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('error in login')</script>");
                            Response.Redirect("~/ContentPages/Home.aspx");

                        }

                        CleanAllControl();
                    }
                    

                }
            }
            else
            {
                lblMessage.Text = "Please provide all information ";

            }

        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            CleanAllControl();
        }
    }
    
}