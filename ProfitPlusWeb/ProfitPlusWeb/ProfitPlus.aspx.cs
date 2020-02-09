using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
//using System.Web.UI.Timer;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Drawing.Imaging;
using System.Timers;
using System.Threading;

namespace ProfitPlusWeb
{
    public partial class ProfitPlus : System.Web.UI.Page
    {
        string sessionId;
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserSession"] != null)
            {
                sessionId = Session["UserSession"].ToString();
                clearLabels(sender,e);
                DashboardPanel.Visible = true;
                incommingPanel.Visible = false;
                confPmtPanel.Visible = false;
                changePackagePanel.Visible = false;
                imagePanel1.Visible = false;
                imagePanel2.Visible = false;
                recycleButton.Visible = false;
                outButton.Visible = false;
                //purgeButton1.Visible = false;
                //purgeButton2.Visible = false;
                //create a function to clear the page, enter all textboxes and labels to be made empty
                purgCrit(sender, e);
                getUserDetails(sender, e);
                checkStatus(sender, e);
                getCount2(sender, e);
                getCount1(sender, e);
                getCount3(sender, e);
                //if (textBox2.Text == "admin" && textBox1.Text == "admin")
                if (Label7.Text == "Payment Confirmed" && Label8.Text == "Payment Confirmed")
                {
                    outgoingPanel.Visible = false;
                    incommingPanel.Visible = false;
                    setState1(sender, e);
                    setState2(sender, e);
                    changePackagePanel.Visible = true;
                    //enable package change and cycle out
                }
            }
            else
            {
                Response.Redirect("~/Reguser.aspx");
            } //end else 
        }//end page_load

        protected void clearLabels(object sender, EventArgs e)
        {
            confPmt.Text = "";
            Label10.Text = "";
            incDisplay1.Text = "";
            Label7.Text = "";
            incDisplay2.Text = "";
            Label8.Text = "";
        }
        protected void purgCrit(object sender, EventArgs e)
        {
            Label28.Text = "";
            Label29.Text = "";
        }
        
        protected void clearIncoming1()
        {
            Label19.Visible = false;
            incName.Visible = false;
            Label20.Visible = false;
            IncPhone1.Visible = false;
            Label21.Visible = false;
            IncPhone2.Visible = false;
            Label22.Visible = false;
            incPackage.Visible = false;
        }

        protected void clearIncoming2()
        {
            Label23.Visible = false;
            inc2Name.Visible = false;
            Label24.Visible = false;
            Inc2Phone1.Visible = false;
            Label25.Visible = false;
            Inc2Phone2.Visible = false;
            Label26.Visible = false;
            inc2Package.Visible = false;

        }

        protected void clearOutgoingPanel()
        {
            outgoingPanel.Visible = true;
            confPmtPanel.Visible = false;
            Label9.Visible = false;
            Label13.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
            outName.Visible = false;
            outBank.Visible = false;
            outAccNo.Visible = false;
            outPhone1.Visible = false;
            outPhone2.Visible = false;
            outPackage.Visible = false;
        }
        
        protected void clearIncomingPanel()
        {
            outgoingPanel.Visible = false;
            incommingPanel.Visible = true;
            Label19.Visible = false;
            Label20.Visible = false;
            Label21.Visible = false;
            Label22.Visible = false;
            incName.Visible = false;
            IncPhone1.Visible = false;
            IncPhone2.Visible = false;
            incPackage.Visible = false;
            incDisplay1.Visible = true;
            confirmButton1.Visible = false;
            Label7.Visible = false;
            Image1.Visible = false;
            Button2.Visible = false;
            Button4.Visible = false;
            Label23.Visible = false;
            Label24.Visible = false;
            Label25.Visible = false;
            Label26.Visible = false;
            inc2Name.Visible = false;
            Inc2Phone1.Visible = false;
            Inc2Phone2.Visible = false;
            inc2Package.Visible = false;
            incDisplay2.Visible = true;
            confirmButton2.Visible = false;
            Label8.Visible = false;
            Image2.Visible = false;
            Button3.Visible = false;
            Button5.Visible = false;

        }
        
        //populate user details
        protected void getUserDetails(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_UserDetails"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader sdr;
                        sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            int pkg = 0;
                            Label3.Text = sdr["firstName"].ToString();
                            userNameLbl1.Text = sdr["firstName"].ToString();
                            emailLbl1.Text = sdr["email"].ToString();
                            phoneLbl1.Text = sdr["phone1"].ToString();
                            phone2Lbl1.Text = sdr["phone2"].ToString();
                            bankLbl1.Text = sdr["bankName"].ToString();
                            accNoLbl1.Text = sdr["accNo"].ToString();
                            pkgHolder.Text = sdr["package"].ToString();
                            pkg = Convert.ToInt32(sdr["package"].ToString());
                            packageLbl1.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                            //userId1 = Convert.ToInt32(sdr["userId1"].ToString());
                            //userEmail = sdr["userEmail"].ToString();
                            //confPmt.Text = "Waiting to be merged.";
                        }
                        con.Close();
                    }
                }
            }
        }//end user details

        protected void checkStatus(object sender, EventArgs e)
        {
            int ID;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_CheckStatus1"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@email", emailLbl1.Text.Trim());
                        cmd.Parameters.AddWithValue("@package", pkgHolder.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        ID = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }//end command
                switch (ID)
                {
                    case -1:
                        //outgoingPanel.Visible = false;
                        //incommingPanel.Visible = false;
                       // changePackagePanel.Visible = true;
                        outgoingPanel.Visible = false;
                        incommingPanel.Visible = true;
                        getInPayments(sender, e);
                        //getInPayments(sender, e);
                        //function to check incomming payment status - enable confirm buttons
                        break;
                    case -2:
                        outgoingPanel.Visible = false;
                        incommingPanel.Visible = true;
                        getInPayments(sender, e);
                        break;
                    case -3:
                        outgoingPanel.Visible = false;
                        incommingPanel.Visible = true;
                        getInPayments(sender, e);
                        break;
                    case -4:
                        outgoingPanel.Visible = false;
                        incommingPanel.Visible = true;
                        getInPayments(sender, e);
                        break;
                    case -5:
                        outgoingPanel.Visible = true;
                        incommingPanel.Visible = false;
                        getMergedDetails(sender, e);
                        //clearOutgoingPanel();
                        //confPmt.Text = "Waiting to be merged";
                        break;
                    case -6:
                        outgoingPanel.Visible = true;
                        incommingPanel.Visible = false;
                        getMergedDetails(sender, e);
                        //outButton.Visible = false;
                        //confPmt.Text = "Waitinf for Confirmation";
                        break;
                    default:
                        outgoingPanel.Visible = true;
                        incommingPanel.Visible = false;
                        changePackagePanel.Visible = false;
                        getMergedDetails(sender, e);
                        break;
                }//end switch
            }
        }//end check status

        protected void getMergedDetails(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_GetMergedDetails1"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        //cmd.Parameters.AddWithValue("@email", emailLbl1.Text.Trim());
                        //cmd.Parameters.AddWithValue("@package", pkgHolder.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader sdr;
                        sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            int pkg = 0;
                            int id = 0;
                            string fnm;
                            string lnm;
                            string paid;
                            fnm = sdr["firstName"].ToString();
                            lnm = sdr["lastName"].ToString();
                            //get outpayment email
                            id = Convert.ToInt32(sdr["ID"].ToString());
                            Label4.Text = Convert.ToDecimal(id).ToString();
                            Label27.Text = sdr["ID"].ToString();
                            outEmail.Text = sdr["email"].ToString();
                            outName.Text = fnm + " " + lnm;
                            outBank.Text = sdr["bankName"].ToString();
                            outAccNo.Text = sdr["accNo"].ToString();
                            outPhone1.Text = sdr["phone1"].ToString();
                            outPhone2.Text = sdr["phone2"].ToString();
                            pkg = Convert.ToInt32(sdr["package"].ToString());
                            outPackage.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                            paid = sdr["payStat"].ToString();

                            if (paid == null || paid == String.Empty)
                            {
                                outButton.Visible = true;
                            }
                            else
                            {
                                outButton.Visible = false;
                                confPmt.Text = "Please wait for confirmation";
                            }

                        }
                        else
                        {
                            clearOutgoingPanel();
                            confPmt.Text = "Waiting to be merged";
                        }
                        
                        con.Close();
                    }
                }
            }
        }//end get merged details

        protected void outButton_Click(object sender, EventArgs e)
        {
            depName.Enabled = true;
            recName.Enabled = true;
            tellNo.Enabled = true;
            refCode.Visible = false;
            Label12.Visible = false;
            madePmtPanel.Visible = false;
            confPmtPanel.Visible = true;
            
        }

        protected void setOutMembers()
        {
            Label9.Visible = false;
            Label13.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
        }

        protected void madePayment(object sender, EventArgs e)
        {
            int userId = 0;
            int userId2 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_MadePayment"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@phId", p1);
                        //cmd.Parameters.AddWithValue("@email", emailLbl1.Text.Trim());
                        int p2 = Int32.Parse(Label27.Text.Trim());
                        cmd.Parameters.AddWithValue("@ghId", p2);
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
            }
        }// end made payment

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string check = DropDownList1.SelectedItem.Text;
            if(DropDownList1.SelectedValue=="1")
            {
                depName.Enabled = true;
                recName.Enabled = true;
                tellNo.Enabled = true;
                refCode.Enabled = false;
                incommingPanel.Visible = false;
                outgoingPanel.Visible = true;
            }
            else if (DropDownList1.SelectedValue == "2")
            {
                depName.Enabled = true;
                recName.Enabled = true;
                tellNo.Enabled = false;
                refCode.Enabled = true;
                incommingPanel.Visible = false;
                outgoingPanel.Visible = true;
            }
            else{
                    depName.Enabled = false;
                    recName.Enabled = false;
                    tellNo.Enabled = false;
                    refCode.Enabled = false;
                    incommingPanel.Visible = false;
                    outgoingPanel.Visible = true;
                }
        }//end dropdownlist selection

        protected void Button1_Click(object sender, EventArgs e)
        {
            confPmtPanel.Visible = false;
            madePmtPanel.Visible = true;
            madePayment(sender, e);            
            uploadPayment(sender, e);
            //setOutMembers();
            outButton.Visible = false;
            confPmt.Text = "Waiting for confirmation..";
        }

        protected void uploadPayment(object sender, EventArgs e)
        {
            int userId = 0;
            MemoryStream ms;

            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_UploadPayment"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@phId", p1);
                        cmd.Parameters.AddWithValue("@phEmail", emailLbl1.Text.Trim());
                        cmd.Parameters.AddWithValue("@ghId", Label27.Text.Trim());
                        
                        cmd.Parameters.AddWithValue("@ghEmail", outEmail.Text.Trim());
                        cmd.Parameters.AddWithValue("@depName", depName.Text.Trim());
                        cmd.Parameters.AddWithValue("@recName", recName.Text.Trim());
                        cmd.Parameters.AddWithValue("@tellerNo", tellNo.Text.Trim());
                        cmd.Parameters.AddWithValue("@refCode", refCode.Text.Trim());
                        cmd.Parameters.AddWithValue("@package", pkgHolder.Text.Trim());
                        ms = new MemoryStream(pmtImageUpload.FileBytes);
                        byte[] pic = new byte[ms.Length];
                        ms.Position = 0;
                        ms.Read(pic, 0, pic.Length);
                        cmd.Parameters.AddWithValue("@paymentUpload", pic);
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }

            }
        }

        protected void getInPayments(object sender, EventArgs e)
        {
            globalId1.Text = "a";
            globalId2.Text = "b";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_InPayment1"))//include mergeDate thats where we are now
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@ghEmail", emailLbl1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader sdr;
                        sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                            {
                                int pkg = 0;
                                string fnm;
                                string lnm;
                                string pay = "";
                                string verif="";
                                string loc;
                                incDisplay1.Text = "";
                                incEmail1.Text = sdr["email"].ToString();
                                fnm = sdr["firstName"].ToString();
                                lnm = sdr["lastName"].ToString();
                                incName.Text = fnm + " " + lnm;
                                IncPhone1.Text = sdr["phone1"].ToString();
                                IncPhone2.Text = sdr["phone2"].ToString();
                                pkg = Convert.ToInt32(sdr["package"].ToString());
                                incPackage.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                                incDisplay1.Visible = false;
                                pay = sdr["payStat"].ToString();
                                verif = sdr["verifiedPayment"].ToString();
                                Label28.Text = sdr["ID"].ToString();
                                loc=sdr["stat2"].ToString();
                                //check if payment has been made then enable view and confirm button
                                if (pay == null || pay == String.Empty)
                                {
                                    Label7.Text = "Awaiting Payment";
                                    confirmButton1.Visible = false;
                                }
                                else
                                {
                                    if (verif == null || verif == String.Empty)
                                    {
                                        confirmButton1.Visible = true;
                                        purgeButton1.Visible = false;
                                    }
                                    else
                                    {
                                        if(loc==null|loc==String.Empty)
                                        {
                                            confirmButton1.Visible = false;
                                            purgeButton1.Visible = false;
                                            Label7.Text = "Payment Confirmed";
                                            //verifyUser1(sender, e);
                                            //globalId1.Text = "orhien";
                                            //run method to verify user
                                        }
                                        else
                                        {
                                            globalId1.Text = "orhien";
                                            confirmButton1.Visible = false;
                                            purgeButton1.Visible = false;
                                            Label7.Text = "Payment Confirmed";
                                        }
                                        
                                    }                                    
                                }
                        }
                        else
                        {
                            clearIncoming1();
                            confirmButton1.Visible = false;
                            incDisplay1.Text = "Waiting to be merged";
                            purgeButton1.Visible = false;
                        }
                        con.Close();
                    }
                }

                using (SqlCommand cmd = new SqlCommand("SP_InPayment2"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@ghEmail", emailLbl1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader sdr;
                        sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            int pkg = 0;
                            string fnm;
                            string lnm;
                            string pay = "";
                            string verif = "";
                            string loc;
                            incDisplay2.Text = "";
                            inc2Email.Text = sdr["email"].ToString();
                            fnm = sdr["firstName"].ToString();
                            lnm = sdr["lastName"].ToString();
                            inc2Name.Text = fnm + " " + lnm;
                            Inc2Phone1.Text = sdr["phone1"].ToString();
                            Inc2Phone2.Text = sdr["phone2"].ToString();
                            pkg = Convert.ToInt32(sdr["package"].ToString());
                            inc2Package.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                            pkg = Convert.ToInt32(sdr["package"].ToString());
                            incDisplay2.Visible = false;
                            pay = sdr["payStat"].ToString();
                            verif = sdr["verifiedPayment"].ToString();
                            Label29.Text = sdr["ID"].ToString();
                            loc = sdr["stat2"].ToString();
                            //Label30.Text = sdr["stat2"].ToString();
                            //check if payment has been made then enable view and confirm button
                            if (pay == null || pay == String.Empty)
                            {
                                Label8.Text = "Awaiting Payment";
                                confirmButton2.Visible = false;
                            }
                            else
                            {
                                if (verif == null || verif == String.Empty)
                                {
                                    confirmButton2.Visible = true;
                                    purgeButton2.Visible = false;
                                }
                                else
                                {
                                    if (loc == null | loc == String.Empty)
                                    {
                                        confirmButton2.Visible = false;
                                        purgeButton2.Visible = false;
                                        //incDisplay1.Text = "Payment Confirmed";
                                        Label8.Text = "Payment Confirmed";
                                        //globalId2.Text = "orhien";
                                        //verifyUser2(sender, e);
                                        //run method to verify user
                                    }
                                    else
                                    {
                                        globalId2.Text = "orhien";
                                        confirmButton2.Visible = false;
                                        purgeButton2.Visible = false;
                                        Label8.Text = "Payment Confirmed";
                                    }
                                }
                            }
                        }
                        else
                        {
                            clearIncoming2();
                            confirmButton2.Visible = false;
                            incDisplay2.Text = "Waiting to be merged";
                            purgeButton2.Visible = false;
                        }
                        con.Close();
                    }
                }
                //if(globalId1.Text==globalId2.Text)
                //{
                //    outgoingPanel.Visible = false;
                //    incommingPanel.Visible = false;
                //    changePackagePanel.Visible = true;
                //    //enable package change and cycle out
                //}
            }
        }

        protected void confirmButton1_Click(object sender, EventArgs e)
        {
            imagePanel1.Visible = true;            
            viewPayment1(sender, e);
            incDisplay1.Text = "Payment Confirmed";
        }

        protected void viewPayment1(object sender, EventArgs e)
        {
            int userId = 0;
            MemoryStream ms;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_ViewPayment1"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@phEmail", incEmail1.Text.Trim());
                        cmd.Parameters.AddWithValue("@ghEmail", emailLbl1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader sdr;
                        sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            byte[] img = (byte[])(sdr["paymentUpload"]);
                            ms = new MemoryStream(img);
                            string base64String = Convert.ToBase64String(img, 0, img.Length);
                            Image1.ImageUrl = "data:image/png;base64," + base64String;
                            confirmButton1.Visible = false;
                            incDisplay1.Text = "Payment Confirmed";
                            //System.Drawing.Image pic = System.Drawing.Image.FromStream(ms);
                        }
                        con.Close();
                    }
                }

            }
        }

        protected void confirmButton2_Click(object sender, EventArgs e)
        {
            imagePanel2.Visible = true;            
            viewPayment2(sender, e);
            incDisplay2.Text = "Payment Confirmed";
        }

        protected void viewPayment2(object sender, EventArgs e)
        {
            int userId = 0;
            MemoryStream ms;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_ViewPayment1"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@phEmail", inc2Email.Text.Trim());
                        cmd.Parameters.AddWithValue("@ghEmail", emailLbl1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader sdr;
                        sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            byte[] img = (byte[])(sdr["paymentUpload"]);
                            ms = new MemoryStream(img);
                            string base64String = Convert.ToBase64String(img, 0, img.Length);
                            Image2.ImageUrl = "data:image/png;base64," + base64String;
                            confirmButton2.Visible = false;
                            incDisplay2.Text = "Payment Confirmed";
                            //System.Drawing.Image pic = System.Drawing.Image.FromStream(ms);
                        }
                        con.Close();
                    }
                }

            }
        }

        protected void verifyUser1(object sender, EventArgs e)
        {
            //string stat1 = "merged";
            int userId = 0;
            int p1 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_VerifyUser"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@phId", p1);
                        cmd.Parameters.AddWithValue("@ghId", Label28.Text.Trim());
                        cmd.Parameters.AddWithValue("@phEmail", emailLbl1.Text.Trim());
                        cmd.Parameters.AddWithValue("@ghEmail", incEmail1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                        incDisplay1.Text = "Payment Confirmed";
                        Button2.Visible = false;
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            verifyUser1(sender, e);
            confirmButton1.Visible = false;
            Label7.Text = "Payment Confirmed";
            //this.Page_Load(null, null);
        }

        protected void verifyUser2(object sender, EventArgs e)
        {
            //string stat1 = "merged";
            int userId = 0;
            int p1 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_VerifyUser"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@phId", p1);
                        cmd.Parameters.AddWithValue("@phEmail", emailLbl1.Text.Trim());
                        cmd.Parameters.AddWithValue("@ghId", Label29.Text.Trim());
                        cmd.Parameters.AddWithValue("@ghEmail", inc2Email.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                        confirmButton2.Visible = false;
                        Label8.Text = "Payment Confirmed";
                    }
                }
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            verifyUser2(sender, e);
            confirmButton2.Visible = false;
            Label8.Text = "Payment Confirmed";
            //this.Page_Load(null, null);
        }

        protected void getCount1(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                int pkg = 0;
                using (SqlCommand cmd = new SqlCommand("SP_CountPaid"))
                {

                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@email", emailLbl1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader sdr;
                        sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            pkg = Int32.Parse(sdr["Count"].ToString());
                            if (pkg <= -1)
                            {
                                totalPaid1.Text = "0.00";
                            }
                            else
                            {
                                totalPaid1.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                            }
                        }
                        con.Close();
                    }
                }

            }
        }

        protected void getCount2(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_CountReceived"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@email", emailLbl1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader sdr3;
                        sdr3 = cmd.ExecuteReader();
                        if (sdr3.Read())
                        {
                            long pkg = 0;
                            pkg = Int32.Parse(sdr3["Count"].ToString());
                            if (pkg <= -1)
                            {
                                totalRec1.Text = "0.00";
                            }
                            else
                            {
                                totalRec1.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                            }
                            //pkg = Convert.ToInt32(sdr["Count"].ToString());
                            // totalRec1.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                        }
                        con.Close();
                    }
                }
            }
        }

        protected void getCount3(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_CountCycle"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@email", emailLbl1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader sdr;
                        sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            int pkg = 0;
                            pkg = Convert.ToInt32(sdr["Count2"].ToString()) / 2;
                            if (pkg <= -1)
                            {
                                cycleMade1.Text = "0";
                            }
                            else
                            {
                                cycleMade1.Text = Convert.ToDecimal(pkg).ToString();
                            }

                            //pkg1 = Math.Round(pkg,MidpointRounding.ToEven);
                            //cycleMade1.Text = Convert.ToDecimal(pkg).ToString();
                        }
                        con.Close();
                    }
                }
            }
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            NewCycle(sender, e);
            changePackagePanel.Visible = false;
            incommingPanel.Visible = false;
            outgoingPanel.Visible = true;
            getMergedDetails(sender, e);
        }

        protected void NewCycle(object sender, EventArgs e)
        {
            //string stat1 = "merged";
            int userId = 0;
            int p1 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_NewCycle"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@phId", p1);
                        cmd.Parameters.AddWithValue("@phEmail", emailLbl1.Text.Trim());
                        int p2 = Int32.Parse(packageDrpDwn.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@package",p2);
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
            }
        }

        protected void Purge1(object sender, EventArgs e)
        {
            //string stat1 = "merged";
            int userId = 0;
            int p1 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_Purge"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ghId", p1);
                        cmd.Parameters.AddWithValue("@ghEmail", emailLbl1.Text.Trim());
                        cmd.Parameters.AddWithValue("@phId", Label28.Text.Trim());
                        cmd.Parameters.AddWithValue("@phEmail", incEmail1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
            }

        }
        protected void Purge2(object sender, EventArgs e)
        {
            //string stat1 = "merged";
            int userId = 0;
            int p1 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_Purge"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ghId", p1);
                        cmd.Parameters.AddWithValue("@ghEmail", emailLbl1.Text.Trim());
                        cmd.Parameters.AddWithValue("@phId", Label29.Text.Trim());
                        cmd.Parameters.AddWithValue("@phEmail", inc2Email.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
            }

        }


        
        
        protected void purgeButton1_Click(object sender, EventArgs e)
        {
            Purge1(sender, e);
            getInPayments(sender, e);
            Label7.Text = "Please wait, you will soon be merged to recieve";
            //purgeButton1_Click.visible = false;
        }

        protected void purgeButton2_Click(object sender, EventArgs e)
        {
            Purge2(sender, e);
            getInPayments(sender, e);
            Label8.Text = "Please wait, you will soon be merged to recieve";
            //incDisplay2.Text = "Please wait, you will soon be merged to recieve";            
        }

        protected void setState1(object sender, EventArgs e)
        {
            //string stat1 = "merged";
            int userId = 0;
            int p1 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_SetState"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ghId", p1);
                        cmd.Parameters.AddWithValue("@ghEmail", emailLbl1.Text.Trim());
                        cmd.Parameters.AddWithValue("@phId", Label28.Text.Trim());
                        cmd.Parameters.AddWithValue("@phEmail", incEmail1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
            }
        }
        protected void setState2(object sender, EventArgs e)
        {
            //string stat1 = "merged";
            int userId = 0;
            int p1 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("SP_SetState"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@ghId", p1);
                        cmd.Parameters.AddWithValue("@ghEmail", emailLbl1.Text.Trim());
                        cmd.Parameters.AddWithValue("@phId", Label29.Text.Trim());
                        cmd.Parameters.AddWithValue("@phEmail", inc2Email.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
            }
        }

    }
}