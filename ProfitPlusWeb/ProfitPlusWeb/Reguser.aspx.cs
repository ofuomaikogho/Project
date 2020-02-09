using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace ProfitPlusWeb
{
    public partial class Reguser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegPanel.Visible = false;
            LoginPanel.Visible = true;
        }

        protected void Application_Start(object sender, EventArgs e)
        {
            string JQueryVer = "1.7.1";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/Scripts/jquery-" + JQueryVer + ".min.js",
                DebugPath = "~/Scripts/jquery-" + JQueryVer + ".js",
                CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + JQueryVer + ".min.js",
                CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + JQueryVer + ".js",
                CdnSupportsSecureConnection = true,
                LoadSuccessExpression = "window.jQuery"
            });
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            RegisterUser(sender, e); //enable after fixing faults
        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            int userId = 0;

            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_InsertUser"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@firstName", firstNameTxtBox.Text.Trim());
                        cmd.Parameters.AddWithValue("@lastName", lastNameTxtBox.Text.Trim());
                        cmd.Parameters.AddWithValue("@email", emailTxtBox.Text.Trim());
                        cmd.Parameters.AddWithValue("@phone1", phone1TxtBox.Text.Trim());
                        cmd.Parameters.AddWithValue("@phone2", phone2TxtBox.Text.Trim());
                        cmd.Parameters.AddWithValue("@bankName", bankNameDrpDwn.Text.Trim());
                        cmd.Parameters.AddWithValue("@accNo ", accNoTxtBox.Text.Trim());
                        cmd.Parameters.AddWithValue("@package", packageDrpDwn.Text.Trim());
                        cmd.Parameters.AddWithValue("@date ", DateTime.Today);
                        cmd.Parameters.AddWithValue("@myPassword", passwordTxtBox.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Name already exists.\\nPlease use a different Name.";
                        break;
                    case -2:
                        message = "Email address has already been used.";
                        break;
                    default:
                        message = "Registration successful.";
                        break;
                }
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
                if (userId > 0)
                {
                    Session["UserSession"] = userId;
                    Response.Redirect("~/ProfitPlus.aspx");

                }
            }
        }

        protected void userLogin(object sender, EventArgs e)
        {
            userLogin1(sender, e); //enable after fixing faults
        }

        protected void userLogin1(object sender, EventArgs e)
        {
            int userId = 0;

            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("User_Login"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@email", loginEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@myPassword", pwdTxtBox1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                string message = string.Empty;
                if (userId > 0)
                {
                    Session["UserSession"] = userId;
                    Response.Redirect("~/ProfitPlus.aspx");
                }
                else
                {
                    message = "Login details are incorrect.\\nPlease contact support.";
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
                    RegPanel.Visible = false;
                    LoginPanel.Visible = true;
                }
            }
        }

        protected void regBtn_Click(object sender, EventArgs e)
        {
            RegPanel.Visible = true;
            LoginPanel.Visible = false;
        }
    }
}