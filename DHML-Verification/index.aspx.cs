using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
      
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (txtLoginUsername.Text == "user" && txtLoginPassword.Text == "user")
        {
            Session["LogonUserName"] = "user";
            Response.Redirect("indexVerification1.aspx");
        }
        else if(txtLoginUsername.Text=="admin" && txtLoginPassword.Text=="superadmin")
        {
             Session["LogonUserName"] = "admin";
             Response.Redirect("indexVerification2.aspx");
        }
    }
}