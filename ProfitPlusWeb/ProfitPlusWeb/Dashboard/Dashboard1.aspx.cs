using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Drawing.Imaging;
using System.Timers;
using System.Threading;

namespace ProfitPlusWeb.Dashboard
{
    public partial class Dashboard1 : System.Web.UI.Page
    {
        string sessionId;
        int outId1 = 0;
        
        System.Windows.Forms.Timer timer = new System.Windows.Forms.Timer();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserSession"] != null)
            {
                sessionId= Session["UserSession"].ToString();
                globalId1.Text = "a";
                globalId2.Text = "b";
                recycleButton.Visible = false;
                DashboardPanel.Visible = true;
                incommingPanel.Visible = false;
                confPmtPanel.Visible = false;
                changePackagePanel.Visible = false;
                imagePanel1.Visible = false;
                imagePanel2.Visible = false;
                //outButton.Visible = false;
                //confPmt.Text = "Waiting to be merged.";
                getUserDetails(sender,e);
                getCount2(sender, e);
                getCount1(sender, e);
                getCount3(sender, e);
                verifyAccountStatus(sender, e);
                checkGobal1(sender, e);
                checkGobal2(sender, e);
                verifyIncome();
            }
            else
            {
                Response.Redirect("http://localhost:15291/Reguser.aspx"); 
            }            
        }

        protected void outButton_Click(object sender, EventArgs e)
        {
            madePayment(sender, e);
            madePmtPanel.Visible = false;
            confPmtPanel.Visible = true;
        }

        protected void getUserDetails(object sender, EventArgs e)
        {
            string userEmail = string.Empty;
            int userId = 0;
            int userId1 = 0;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                SqlDataReader sdr1;
                int p1 = Int32.Parse(sessionId);
                using (SqlCommand cmd = new SqlCommand("getUserDetailsTest1"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {                        
                        //int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Connection = con;
                        con.Open();
                        //SqlDataReader sdr;
                        sdr1 = cmd.ExecuteReader();
                        if (sdr1.Read())
                        {
                            int pkg = 0;
                            Label3.Text = sdr1["firstName"].ToString();
                            userNameLbl1.Text = sdr1["firstName"].ToString();
                            emailLbl1.Text = sdr1["email"].ToString();
                            phoneLbl1.Text = sdr1["phone1"].ToString();
                            phone2Lbl1.Text = sdr1["phone2"].ToString();
                            bankLbl1.Text = sdr1["bankName"].ToString();
                            accNoLbl1.Text = sdr1["accNo"].ToString();
                            pkgHolder.Text = sdr1["package"].ToString();
                            pkg = Convert.ToInt32(sdr1["package"].ToString());
                            packageLbl1.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                            userId1 = Convert.ToInt32(sdr1["userId1"].ToString());
                            userEmail = sdr1["userEmail"].ToString();
                            confPmt.Text = "Waiting to be merged.";
                        }                        
                        con.Close();
                    }
                }
                if (userId1==0)
                {
                    using (SqlCommand cmd = new SqlCommand("getMergedDetails"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@userEmail", userEmail.ToString());
                            cmd.Parameters.AddWithValue("@userId1", userId1.ToString());
                            cmd.Connection = con;
                            con.Open();
                            SqlDataReader sdr;
                            sdr = cmd.ExecuteReader();
                            if (sdr.Read())
                            {
                                outEmail.Text=sdr["email"].ToString();
                                outName.Text = sdr["firstName"].ToString();
                                outBank.Text = sdr["bankName"].ToString();
                                outAccNo.Text = sdr["accNo"].ToString();
                                outPhone1.Text = sdr["phone1"].ToString();
                                outPhone2.Text = sdr["phone2"].ToString();
                                outPackage.Text = sdr["package"].ToString();
                                confPmt.Text = "";
                            }
                            con.Close();
                            //con.Dispose;
                        }
                    }
                }
                else if (p1 > 0)
                {
                    using (SqlCommand cmd = new SqlCommand("getUserDetails2"))
                    {
                        using (SqlDataAdapter sda = new SqlDataAdapter())
                        {

                            //int p1 = Int32.Parse(sessionId);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@userId", p1);
                            cmd.Connection = con;
                            con.Open();
                            //SqlDataReader sdr;
                            sdr1 = cmd.ExecuteReader();
                            if (sdr1.Read())
                            {
                                int pkg = 0;
                                Label3.Text = sdr1["firstName"].ToString();
                                userNameLbl1.Text = sdr1["firstName"].ToString();
                                emailLbl1.Text = sdr1["email"].ToString();
                                phoneLbl1.Text = sdr1["phone1"].ToString();
                                phone2Lbl1.Text = sdr1["phone2"].ToString();
                                bankLbl1.Text = sdr1["bankName"].ToString();
                                accNoLbl1.Text = sdr1["accNo"].ToString();
                                pkgHolder.Text = sdr1["package"].ToString();
                                pkg = Convert.ToInt32(sdr1["package"].ToString());
                                packageLbl1.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                                confPmt.Text = "Waiting to be merged.";
                                outButton.Visible = false;
                            }
                            con.Close();
                        }
                    }
                    getOutPayment(sender, e);
                }

            }
        }

        protected void getOutPayment(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("getOutPaymentTest"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@package", pkgHolder.Text.Trim());
                        cmd.Parameters.AddWithValue("@recEmail1", emailLbl1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        SqlDataReader sdr;
                        sdr = cmd.ExecuteReader();
                        if (sdr.Read())
                        {
                            int pkg = 0;
                            string fnm;
                            string lnm;
                            fnm = sdr["firstName"].ToString();
                            lnm = sdr["lastName"].ToString();
                            //get outpayment email
                            outEmail.Text = sdr["email"].ToString();
                            outName.Text = fnm +" "+ lnm;
                            outBank.Text = sdr["bankName"].ToString();
                            outAccNo.Text = sdr["accNo"].ToString();
                            outPhone1.Text = sdr["phone1"].ToString();
                            outPhone2.Text = sdr["phone2"].ToString();
                            pkg = Convert.ToInt32(sdr["package"].ToString());
                            outPackage.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                            Label4.Text = sdr["userId"].ToString();
                            outButton.Visible = true;
                            verifyAccountStatus(sender, e);
                            checkGobal1(sender, e);
                            checkGobal2(sender, e);
                            verifyIncome();
                        }
                        con.Close();
                    }
                }
            }
        }

        protected void madePayment(object sender, EventArgs e)
        {
            int userId = 0;
            int userId2= Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("madePayment1"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@email", outEmail.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                switch (userId)
                {
                    case -1:
                            confPmt.Visible = true;
                            confPmt.Text = "Please wait for confirmation";
                            outButton.Visible = false;
                        break;
                    default:
                            confPmt.Visible = true;
                            confPmt.Text = "Please wait for confirmation";
                            outButton.Enabled = false;
                        break;
                }

                
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue=="1")
            {
                depName.Enabled = true;
                recName.Enabled = true;
                tellNo.Enabled = true;
                refCode.Enabled = false;
            }
            else if (DropDownList1.SelectedValue == "2")
            {
                depName.Enabled = true;
                recName.Enabled = true;
                tellNo.Enabled = false;
                refCode.Enabled = true;
            }
            else
            {
                depName.Enabled = false;
                recName.Enabled = false;
                tellNo.Enabled = false;
                refCode.Enabled = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            confPmtPanel.Visible = false;
            madePmtPanel.Visible = true;
            uploadPayment(sender, e);
        }
        
        protected void verifyAccountStatus(object sender, EventArgs e)
        {
            int userId = 0;
            int userId2 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("verifyStatus"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@email", incEmail1.Text.Trim());
                        cmd.Parameters.AddWithValue("@package", incEmail1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                switch (userId)
                {
                    case -1:
                        confPmtPanel.Visible = false;
                        madePmtPanel.Visible = true;
                        confPmt.Visible = true;
                        confPmt.Text = "Please wait for confirmation";
                        outButton.Enabled = false;
                        break;
                    case -2:
                        outgoingPanel.Visible = false;
                        incommingPanel.Visible = true;
                        getInPayment(sender, e);
                        //insert code to check for incomming payment
                        break;
                    default:
                        confPmt.Visible = true;
                        confPmt.Text = "";
                        outButton.Enabled = true;
                        break;
                }


            }
        }

        protected void getCount1(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                int pkg = 0;
                using (SqlCommand cmd = new SqlCommand("CountPaid"))
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
                            if (pkg<=-1)
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
                using (SqlCommand cmd = new SqlCommand("CountReceived"))
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
                using (SqlCommand cmd = new SqlCommand("CountCycle"))
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
                            pkg = Convert.ToInt32(sdr["Count2"].ToString())/2;
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

        protected void getInPayment(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("getIncomming1"))
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
                            string fnm;
                            string lnm;
                            string pay = "";
                            pkg = Convert.ToInt32(sdr["package"].ToString());
                            if (pkg <= -1)
                            {
                                confirmButton1.Visible = false;
                                incDisplay1.Text = "Waiting to be merged";
                            }
                            else
                            {
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
                                
                                //check if payment has been made then enable view and confirm button
                                if (pay == null || pay==String.Empty)
                                {
                                    Label7.Text = "Awaiting Payment";
                                    confirmButton1.Visible = false;
                                }
                                else
                                {
                                    confirmButton1.Visible = true;
                                } 
                            }
                        }
                        con.Close();
                    }
                }

                using (SqlCommand cmd = new SqlCommand("getIncomming2"))
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
                            string fnm;
                            string lnm;
                            string pay = "";
                            pkg = Convert.ToInt32(sdr["package"].ToString());
                            if (pkg <= -1)
                            {
                                confirmButton2.Visible = false;
                                incDisplay2.Text = "Waiting to be merged";
                            }
                            else
                            {
                                inc2Email.Text = sdr["email"].ToString();
                                fnm = sdr["firstName"].ToString();
                                lnm = sdr["lastName"].ToString();
                                inc2Name.Text = fnm + " " + lnm;
                                Inc2Phone1.Text = sdr["phone1"].ToString();
                                Inc2Phone2.Text = sdr["phone2"].ToString();
                                pkg = Convert.ToInt32(sdr["package"].ToString());
                                inc2Package.Text = Convert.ToDecimal(pkg).ToString("#,##0.00");
                                incDisplay2.Visible = false;
                                pay = sdr["payStat"].ToString();
                                //check if payment has been made then enable view and confirm button
                                if (pay == null || pay == String.Empty)
                                {
                                    Label8.Text = "Awaiting Payment";
                                    confirmButton2.Visible = false;
                                }
                                else
                                {
                                    confirmButton2.Visible = true;
                                } 
                            }
                        }
                        con.Close();
                    }
                }
            }
        }

        protected void confirmButton1_Click(object sender, EventArgs e)             //tyyrjrtjrjrjererhrh
        {
            imagePanel1.Visible = true;
            confirmButton1.Visible = false;
            viewPayment(sender,e);
            //System.Windows.Forms.Timer timer = new System.Windows.Forms.Timer();
            //timer.Interval = 30000; // here time in milliseconds
            //timer.Tick += timer_Tick;
            //timer.Start();
            //Button2.Enabled = false;
        }

        void timer_Tick(object sender, System.EventArgs e)
        {
            Button2.Enabled = true;
            timer.Stop();
        }

        protected void confirmButton2_Click(object sender, EventArgs e)           //yherherhrtthrthrthrthrhrhrt
        {
            imagePanel2.Visible = true;
            confirmButton2.Visible = false;
            viewPayment1(sender, e);
            //timer.Interval = 3000; // here time in milliseconds
            //timer.Tick += timer_Tick;
            //timer.Start();
            //Button3.Enabled = false;
        }

        protected void confirmPayment(object sender, EventArgs e)
        {
            int userId = 0;
            int p1 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("verifyStatus"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        incDisplay1.Visible = true;
                        incDisplay1.Text = "Payment Confirmed";
                        con.Close();
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            imagePanel1.Visible = false;
            incDisplay1.Visible = true;
            incDisplay1.Text = "Payment Confirmed";
            confirmButton1.Visible = false;
            incName.Text = "";
            IncPhone1.Text = "";
            IncPhone2.Text = "";
            incPackage.Text = "";
            verifyUser1(sender, e);
            globalId1.Text = "yes";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            imagePanel2.Visible = false;
            incDisplay2.Visible = true;
            incDisplay2.Text = "Payment Confirmed";
            confirmButton2.Visible = false;
            inc2Name.Text = "";
            Inc2Phone1.Text = "";
            Inc2Phone2.Text = "";
            inc2Package.Text = "";
            verifyUser2(sender, e);
            globalId2.Text = "yes";
        }

        protected void uploadPayment(object sender, EventArgs e)
        {
            int userId = 0;
            MemoryStream ms;

            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("uploadPayment"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@depName", depName.Text.Trim());
                        cmd.Parameters.AddWithValue("@recName", recName.Text.Trim());
                        cmd.Parameters.AddWithValue("@tellNo", tellNo.Text.Trim());
                        cmd.Parameters.AddWithValue("@refCode", refCode.Text.Trim());
                        cmd.Parameters.AddWithValue("@package", packageLbl1.Text.Trim());
                        ms = new MemoryStream(pmtImageUpload.FileBytes);
                        byte[] pic = new byte[ms.Length];
                        ms.Position = 0;
                        ms.Read(pic,0,pic.Length);
                        cmd.Parameters.AddWithValue("@paymentUpload",pic); 
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
               
            }
        }

        protected void viewPayment(object sender, EventArgs e)
        {
            int userId = 0;
            MemoryStream ms;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("viewPayment"))
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
                            byte[] img = (byte[])(sdr["paymentUpload"]);
                            ms = new MemoryStream(img);
                            string base64String = Convert.ToBase64String(img, 0, img.Length);
                            Image1.ImageUrl = "data:image/png;base64," + base64String;
                            //System.Drawing.Image pic = System.Drawing.Image.FromStream(ms);
                        }
                        con.Close();
                    }
                }

            }
        }

        protected void viewPayment1(object sender, EventArgs e)
        {
            int userId = 0;
            MemoryStream ms;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("viewPayment"))
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
                            byte[] img = (byte[])(sdr["paymentUpload"]);
                            ms = new MemoryStream(img);
                            string base64String = Convert.ToBase64String(img, 0, img.Length);
                            Image2.ImageUrl = "data:image/png;base64," + base64String;
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
                using (SqlCommand cmd = new SqlCommand("verifyUser"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@email",incEmail1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
            }
        }

        protected void verifyUser2(object sender, EventArgs e) 
        {
            //string stat1 = "merged";
            int userId = 0;
            int p1 = Int32.Parse(sessionId);
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("verifyUser1"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        //cmd.Parameters.AddWithValue("@stat1", stat1);
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
            }
        }

        protected void verifyIncome()
        {
            if (String.IsNullOrEmpty(globalId1.Text))
            {

            }
            else
            {
                imagePanel1.Visible = false;
                confirmButton1.Visible = false;
                Label7.Text = "Payment Confirmed";
            }

            if (String.IsNullOrEmpty(globalId2.Text))
            {

            }
            else
            {
                imagePanel2.Visible = false;
                confirmButton2.Visible = false;
                Label8.Text = "Payment Confirmed";
            }
            if (globalId1.Text == globalId2.Text)
            {
                recycleButton.Visible = true;
                globalId1.Text = "a";
                globalId2.Text = "b";

            }

        }

        protected void checkGobal1(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("checkGobal"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@email", incEmail1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                switch (userId)
                {
                    case -1:
                        globalId1.Text = "conf";
                        break;
                    default:
                        
                        break;
                }

            }
        }

        protected void checkGobal2(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("checkGobal"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@email", inc2Email.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                switch (userId)
                {
                    case -1:
                        globalId2.Text = "conf";
                        break;
                    default:

                        break;
                }

            }
        }

        protected void recycleButton_Click(object sender, EventArgs e)
        {
            outgoingPanel.Visible = false;
            incommingPanel.Visible = false;
            changePackagePanel.Visible = true;
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            int userId = 0;
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("cycleOut"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        int p1 = Int32.Parse(sessionId);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userId", p1);
                        cmd.Parameters.AddWithValue("@package",packageDrpDwn.Text.Trim());
                        cmd.Parameters.AddWithValue("@email",emailLbl1.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
            }
            outgoingPanel.Visible = true;
            incommingPanel.Visible = false;
            changePackagePanel.Visible = false;
            recycleButton.Visible = false;
        }



    }
}