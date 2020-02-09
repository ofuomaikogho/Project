using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
 
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Web.SessionState;
 
using DHMLDATAACCESS;
using DHMLENTITIES;
using DHMLFACADE;
using System.Collections;

public partial class indexVerification2 : System.Web.UI.Page
{
    public Enrolee SelectedEnrolee = new Enrolee();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["LogonUserName"] != null)
            {
                DhmlSystemWebPortal.kstring = "Data Source=tcp:s09.winhost.com;Initial Catalog=DB_71498_dhml;User ID=DB_71498_dhml_user;Password=Welcome1979!;Integrated Security=False;";
                //DhmlSystemWebPortal.kstring = "Data Source=OFUOMA-PC;Initial Catalog=DHMLDB;Integrated Security=False;User ID=sa;Password=Welcome1979!;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";
                //DhmlSystemWebPortal.kstring = "Data Source=samad-PC;Initial Catalog=DHMLDB;Integrated Security=False;User ID=sa;Password=p455.p455;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False";

                LoadSearchVar();
                //PopulateTreeViewControl();
            }
            else
            {
                Response.Redirect("index.aspx");
            }
        }
    }

    void LoadSearchVar()
    {
        SearchDDL.Items.Clear();
        SearchDDL.Items.Add("");
        SearchDDL.Items.Add("All");
        SearchDDL.Items.Add("ServiceNumber");
        SearchDDL.Items.Add("Surname");
        SearchDDL.Items.Add("FirstName");
        SearchDDL.Items.Add("StateOfRes");
        SearchDDL.Items.Add("HPCName");
        SearchDDL.Items.Add("Tel");
        SearchDDL.Items.Add("Localgovernment");
        SearchDDL.Items.Add("State");
        SearchDDL.Items.Add("Barcode");
        SearchDDL.Items.Add("Status");
        SearchDDL.Items.Add("AdminStatus");
        SearchDDL.Text = "All";
    }

   
   
    protected void CheckBox22_CheckedChanged(object sender, EventArgs e)
    {
        //NonVerifReason.Enabled = true;
    }
    protected void SearchButton_Click(object sender, EventArgs e)
    {
        string sqlString = string.Empty;

        if (SearchDDL.Text =="")
        {
            
        }
        else if (SearchDDL.Text =="All")
        {
            sqlString = "  select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v " +
                    "where e.ServiceNumber = v.ServiceNumber and " +
                    "(e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%' or " +
                    "e.Surname like '%" + TxtSearch.Text.Trim() + "%' or " +
                     "e.FirstName like '%" + TxtSearch.Text.Trim() + "%' or " +
                      "e.Rank like '%" + TxtSearch.Text.Trim() + "%' or " +
                       "e.StateOfRes like '%" + TxtSearch.Text.Trim() + "%' or " +
                        "e.NHISNumber like '%" + TxtSearch.Text.Trim() + "%' or " +
                         "e.HPCName like '%" + TxtSearch.Text.Trim() + "%' or " +
                          "e.Tel like '%" + TxtSearch.Text.Trim() + "%' or " +
                           "e.Localgovernment like '%" + TxtSearch.Text.Trim() + "%' or " +
                            "e.State like '%" + TxtSearch.Text.Trim() + "%' or " +
                             "e.Country like '%" + TxtSearch.Text.Trim() + "%' or " +
                             "e.Barcode like '%" + TxtSearch.Text.Trim() + "%' or " +
                             "v.Status like '%" + TxtSearch.Text.Trim() + "%' or " +
                              "v.AdminStatus like '%" + TxtSearch.Text.Trim() + "%')";
        } 
        else if (SearchDDL.Text =="ServiceNumber")
        {
            sqlString = " select v.Status, v.Reason,v.AdminStatus, v.AdminReason,e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                        "e.MaritalStatus from Enrolee e, Verification v" +
                     "where e.ServiceNumber = v.ServiceNumber  and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        }
        else if (SearchDDL.Text =="Surname")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        }
        else if (SearchDDL.Text =="FirstName")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        }
        else if (SearchDDL.Text =="Rank")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
         }
        else if (SearchDDL.Text =="StateOfRes")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        
        }
        else if (SearchDDL.Text =="NHISNumber")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        
       
        }
        else if (SearchDDL.Text =="HPCName")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        
        }
        
        else if (SearchDDL.Text =="Tel")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        
        }
        else if (SearchDDL.Text =="Localgovernment")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        
        }
        else if (SearchDDL.Text =="State")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        
        }
        else if (SearchDDL.Text =="Country")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        
        }
        else if (SearchDDL.Text =="Barcode")
        {
            sqlString = "select v.Status, v.Reason,v.AdminStatus,v.AdminReason, e.ServiceNumber, e.Surname, e.MidName, e.FirstName, e.Rank ,e.DOB, e.Gender," +
                       "e.MaritalStatus from Enrolee e, Verification v" +
                    "where e.ServiceNumber = v.ServiceNumber and e.ServiceNumber like '%" + TxtSearch.Text.Trim() + "%'";
        
        }
        Session["sqlString"] = sqlString;
        GetEnroleeSuperAdmin_NoVerifiedList(sqlString);
    }

    protected void GetEnroleeSuperAdmin_NoVerifiedList(string sql)
    {
        List<EnroleeEntityWebPortalSuperAdmin> enroleeNonVerifyObjList = new List<EnroleeEntityWebPortalSuperAdmin>();
        enroleeNonVerifyObjList = DhmlSystemWebPortal.GetEnroleeSuperAdmin(sql);
        SearchDetailsGVSuperAdmin.DataSource = enroleeNonVerifyObjList;
        SearchDetailsGVSuperAdmin.DataBind();

        Session["verificationListObj"] = enroleeNonVerifyObjList;
    }

     
    protected void SearchDetailsTV_SelectedNodeChanged(object sender, EventArgs e)
    {
         
       // TextBox32.Text = SearchDetailsTV.SelectedNode.Parent.Text.ToString();
           
    }

    protected void getEnroleeNonVerifyDetails(string serviceNum)
    {
       
        SelectedEnrolee = DhmlSystemWebPortal.GetEnroleeDetails("select * from Enrolee e, verification v where e.ServiceNumber = v.ServiceNumber and v.ServiceNumber= '" + serviceNum + "'");
        SetEnroleeVisual(SelectedEnrolee);
        setEnroleeDependantVisual(SelectedEnrolee.Id.ToString());
        clear_Document_verification();
        get_Verification_Visual(SelectedEnrolee.Id.ToString());
    }

    protected void get_Verification_Visual(string D_RetireeId)
    {
        EnroleeVerification VerificationObjList = new EnroleeVerification();
        VerificationObjList = DhmlSystemWebPortal.GetEnrolee_Verification_List("select * from verification where EnroleeId = '" + D_RetireeId + "'");

        VerificationObjList.Id = 0;
        txtVerificationId.Text = VerificationObjList.EnroleeId.ToString();
        txtServiceNumber.Text = VerificationObjList.ServiceNumber.ToString();
        FinalVerifRadioButtonList.Items[0].Selected = (VerificationObjList.Status == "true")? true: false;
        NonVerifReason.Text = VerificationObjList.Reason.ToString();
        txtTel.Text = VerificationObjList.Tel.ToString();
        VerificationObjList.AdminReason = VerificationObjList.AdminReason;
        SuperAdminConfirmRB.Items[0].Selected = (VerificationObjList.AdminStatus == "true") ? true : false;
        IDCardRadioButtonList.Items[0].Selected = (VerificationObjList.IdCard == "true") ? true : false;
        MCertRadioButtonList.Items[0].Selected =(VerificationObjList.MarriageCert == "true") ? true : false; 
        NoKRadioButtonList.Items[0].Selected=(VerificationObjList.NoKLetter == "true") ? true : false;  ;
        DCertRadioButtonList.Items[0].Selected  =(VerificationObjList.DeathCert == "true") ? true : false;  
        CondRadioButtonList.Items[0].Selected  =(VerificationObjList.CondLetter == "true") ? true : false; 
        SpouseRadioButtonList.Items[0].Selected  =(VerificationObjList.SpouseCert == "true") ? true : false; 
        Ch1RadioButtonList.Items[0].Selected  =(VerificationObjList.ChildCert1 == "true") ? true : false; 
        Ch2RadioButtonList.Items[0].Selected  =(VerificationObjList.ChildCert2 == "true") ? true : false; 
        Ch3RadioButtonList.Items[0].Selected  =(VerificationObjList.ChildCert3 == "true") ? true : false;
        Ch4RadioButtonList1.Items[0].Selected=(VerificationObjList.ChildCert4 == "true") ? true : false; 
         
    }

    protected void setEnroleeDependantVisual(string D_RetireeId)
    {
        
        List<Dep_entityportal> DependantObjList = new List<Dep_entityportal>();
        DependantObjList = DhmlSystemWebPortal.GetEnrolee_Dep_entityportal_DependantList("select * from Dependant d,verification v where d.D_ServiceNumber = v.ServiceNumber and d.D_RetireeId = " + D_RetireeId);
        foreach (Dep_entityportal Dependantobj in DependantObjList)
        {
            if (Dependantobj.D_Relationship == "Spouse")
            {
                txtFirstNameSpouse.Text = Dependantobj.D_Firstname.ToString();
                txtRelSpouse.Text = Dependantobj.D_Relationship.ToString();               
                txtDOBSpouse.Text = Dependantobj.D_DateOfBirth.ToString("dd/MMM/yyyy");
                txtGenderSpouse.Text = Dependantobj.D_Gender.ToString();
                txtHCPSpouse.Text = Dependantobj.D_AlternativeProviderName.ToString();

                Session["SpouseVerImageByte"] = Dependantobj.D_Passport;
                imgSpouse.ImageUrl = "~/SpouseVerPassportImageHandler.ashx";

                Session["SpouseBirthCertVerImageByte"] = Dependantobj.D_Passport;
                TempSpouseBirthCertImage.ImageUrl = "~/SpouseBirthCertVerImageHandler.ashx";


            }
            else if (Dependantobj.D_Relationship == "Child 1")
            {
                txtFirstNameChild1.Text = Dependantobj.D_Firstname.ToString();
                txtRelChild1.Text = Dependantobj.D_Relationship.ToString();
                txtDOBChild1.Text = Dependantobj.D_DateOfBirth.ToString("dd/MMM/yyyy");
                txtGenderChild1.Text = Dependantobj.D_Gender.ToString();
                txtHCPChild1.Text = Dependantobj.D_AlternativeProviderName.ToString();
               
                Session["Child1VerImageByte"] = Dependantobj.D_Passport;
                imgChild1.ImageUrl = "~/Child1VerPassportImageHandler.ashx";

                Session["Child1BirthCertVerImageByte"] = Dependantobj.D_Passport;
                TempChild1BirthCertImage.ImageUrl = "~/Child1BirthCertVerImageHandler.ashx";
 
            }
            else if (Dependantobj.D_Relationship == "Child 2")
            {
                txtFirstNameChild2.Text = Dependantobj.D_Firstname.ToString();
                txtRelChild2.Text = Dependantobj.D_Relationship.ToString();
                txtDOBChild2.Text = Dependantobj.D_DateOfBirth.ToString("dd/MMM/yyyy");
                txtGenderChild2.Text = Dependantobj.D_Gender.ToString();
                txtHCPChild2.Text = Dependantobj.D_AlternativeProviderName.ToString();

                Session["Child2VerImageByte"] = Dependantobj.D_Passport;
                imgChild2.ImageUrl = "~/Child2VerPassportImageHandler.ashx";

                Session["Child2BirthCertVerImageByte"] = Dependantobj.D_Passport;
                TempChild2BirthCertImage.ImageUrl = "~/Child2BirthCertVerImageHandler.ashx";
            }
            else if (Dependantobj.D_Relationship == "Child 3")
            {
                txtFirstNameChild3.Text = Dependantobj.D_Firstname.ToString();
                txtRelChild3.Text = Dependantobj.D_Relationship.ToString();
                txtDOBChild3.Text = Dependantobj.D_DateOfBirth.ToString("dd/MMM/yyyy");
                txtGenderChild3.Text = Dependantobj.D_Gender.ToString();
                txtHCPChild3.Text = Dependantobj.D_AlternativeProviderName.ToString();

                Session["Child3VerImageByte"] = Dependantobj.D_Passport;
                imgChild3.ImageUrl = "~/Child3VerPassportImageHandler.ashx";

                Session["Child3BirthCertVerImageByte"] = Dependantobj.D_Passport;
                TempChild3BirthCertImage.ImageUrl = "~/Child3BirthCertVerImageHandler.ashx";
            }
            else if (Dependantobj.D_Relationship == "Child 4")
            {
                txtFirstNameChild3.Text = Dependantobj.D_Firstname.ToString();
                txtRelChild3.Text = Dependantobj.D_Relationship.ToString();
                txtDOBChild3.Text = Dependantobj.D_DateOfBirth.ToString("dd/MMM/yyyy");
                txtGenderChild3.Text = Dependantobj.D_Gender.ToString();
                txtHCPChild4.Text = Dependantobj.D_AlternativeProviderName.ToString();

                Session["Child4VerImageByte"] = Dependantobj.D_Passport;
                imgChild4.ImageUrl = "~/Child4VerPassportImageHandler.ashx";

                Session["Child4BirthCertVerImageByte"] = Dependantobj.D_Passport;
                imgChild4.ImageUrl = "~/Child4BirthCertVerImageHandler.ashx";
            }
            
        }
    }

    
    protected void SearchDetailsGVSuperAdmin_SelectedIndexChanged(object sender, EventArgs e)
    {
        string serviceNum = SearchDetailsGVSuperAdmin.SelectedRow.Cells[5].Text;
        getEnroleeNonVerifyDetails(serviceNum);
        
    }

    private void SetEnroleeVisual(Enrolee EnroleeObj)
    {
        txtVerificationId.Text = (EnroleeObj.Id == null) ? "0" : EnroleeObj.Id.ToString();
        //txtAddressLine.Text = (EnroleeObj.AddressLine == null) ? "" : EnroleeObj.AddressLine.ToString();
        txtServiceNumber.Text = (EnroleeObj.ServiceNumber == null) ? "" : EnroleeObj.ServiceNumber.ToString();
        txtSurname.Text = (EnroleeObj.Surname == null) ? "" : EnroleeObj.Surname.ToString();
        txtMidName.Text = (EnroleeObj.MidName == null) ? "" : EnroleeObj.MidName.ToString();
        txtFirstName.Text = (EnroleeObj.FirstName == null) ? "" : EnroleeObj.FirstName.ToString();
        CmbRank.Text = (EnroleeObj.Rank == null) ? "" : EnroleeObj.Rank.ToString();
        cmbemploymentStatus.Text = (EnroleeObj.EmploymentStatus == null) ? "" : EnroleeObj.EmploymentStatus.ToString();
        cmbMilitaryArm.Text = (EnroleeObj.ArmOfService == null) ? "" : EnroleeObj.ArmOfService.ToString();
        //CmbStateOfRes.Text = (EnroleeObj.StateOfRes == null) ? "" : EnroleeObj.StateOfRes.ToString();
        TxtDOB.Text = (EnroleeObj.DOB == DateTime.MinValue) ? "" : EnroleeObj.DOB.ToString("dd/MM/yyyy"); //= (TxtDOB.Text.Trim() == "") ? DateTime.MinValue : DateTime.Parse(TxtDOB.Text.Trim());
        CmbGender.Text = (EnroleeObj.Gender == null) ? "" : EnroleeObj.Gender.ToString();
        CmbMaritalStatus.Text = (EnroleeObj.MaritalStatus == null) ? "" : EnroleeObj.MaritalStatus.ToString();
        //   retireeObj.Age=NUpDAge.Value;
        //CmbBloodGroup.Text = (EnroleeObj.BloodGroup == null) ? "" : EnroleeObj.BloodGroup.ToString();
        //txtNatId.Text = (EnroleeObj.NatId == null) ? "" : EnroleeObj.NatId.ToString();
        txtTel.Text = (EnroleeObj.Tel == null) ? "" : EnroleeObj.Tel.ToString();
        //txtAddressLine.Text = (EnroleeObj.AddressLine == null) ? "" : EnroleeObj.AddressLine.ToString();
        //txtStreet.Text = (EnroleeObj.Street == null) ? "" : EnroleeObj.Street.ToString();
        //txtTownCity.Text = (EnroleeObj.City == null) ? "" : EnroleeObj.City.ToString();
        //CmbLga.Text = (EnroleeObj.Localgovernment == null) ? "" : EnroleeObj.Localgovernment.ToString();
        //TxtState.Text = (EnroleeObj.State == null) ? "" : EnroleeObj.State.ToString();
        //txtCountry.Text = "Nigeria";// (EnroleeObj.Country == null) ? "" : EnroleeObj.Country.ToString();
        //txtEmpCode.Text = (EnroleeObj.EmpCode == null) ? "" : EnroleeObj.EmpCode.ToString();
        txtHCPPrincipal.Text = (EnroleeObj.HPCName == null) ? "" : EnroleeObj.HPCName.ToString();

        //CheckboxDiabetes.Checked = (EnroleeObj.Diabetes == "Yes") ? true : false;
        //checkBoxEpilepsy.Checked = (EnroleeObj.Epilepsy == "Yes") ? true : false;
        //checkBoxHypertension.Checked = (EnroleeObj.Hypertension == "Yes") ? true : false;
        //checkBoxSickleCell.Checked = (EnroleeObj.SickleCell == "Yes") ? true : false;
        //checkBoxAllergies.Checked = (EnroleeObj.Allergies == "Yes") ? true : false;

        Session["EnroleeImageByte"] = (byte[] )EnroleeObj.EnroleePassport;
        imgEnrolee.ImageUrl = "~/EnroleePassportImageHandler.ashx";

        Session["IDCardVerImageByte"] = EnroleeObj.DocImage1;
        TempIDCardImage.ImageUrl = "~/IDCardVerImageHandler.ashx";

        Session["MarriageCertVerImageByte"] = EnroleeObj.DocImage2;
        TempMariageCertImage.ImageUrl = "~/MarriageCertVerImageHandler.ashx";

        Session["NoKinLetterVerImageByte"] = EnroleeObj.DocImage3;
        TempNoKImage.ImageUrl = "~/NoKinLetterVerImageHandler.ashx";

        Session["DeathCertVerImageByte"] = EnroleeObj.DocImage4;
        TempDeathCertImage.ImageUrl = "~/DeathCertVerImageHandler.ashx";

        Session["CondLetterVerImageByte"] = EnroleeObj.DocImage1;
        TempCondImage.ImageUrl = "~/CondLetterVerImageHandler.ashx";

        //txtStreet.Text = (EnroleeObj.Street == null) ? "" : EnroleeObj.Street.ToString();
        //txtTownCity.Text = (EnroleeObj.City == null) ? "" : EnroleeObj.City.ToString();

        PersonnelbarCode.Text = (EnroleeObj.Barcode == null) ? "" : EnroleeObj.Barcode.ToString();
        //txtemail.Text = (EnroleeObj.Email == null) ? "" : EnroleeObj.Email.ToString();
    }
    protected void PrincipalIdCard_Click(object sender, EventArgs e)
    {
         DocPreviewImage1.ImageUrl=TempIDCardImage.ImageUrl;
     }
    protected void MarriageCert_Click(object sender, EventArgs e)
    {
        DocPreviewImage1.ImageUrl = TempMariageCertImage.ImageUrl;
    }
    protected void NoKLetter_Click(object sender, EventArgs e)
    {
        DocPreviewImage1.ImageUrl = TempNoKImage.ImageUrl;
    }
    protected void DeathCert_Click(object sender, EventArgs e)
    {
        DocPreviewImage1.ImageUrl = TempDeathCertImage.ImageUrl;
    }
    protected void CondoLetter_Click(object sender, EventArgs e)
    {
        DocPreviewImage1.ImageUrl = TempCondImage.ImageUrl;
    }
    protected void SpouseBirthCert_Click(object sender, EventArgs e)
    {
        DocPreviewImage1.ImageUrl = TempSpouseBirthCertImage.ImageUrl;
    }
    protected void BirthCert1_Click(object sender, EventArgs e)
    {
        DocPreviewImage1.ImageUrl = TempChild1BirthCertImage.ImageUrl;
    }
    protected void BirthCert2_Click(object sender, EventArgs e)
    {
        DocPreviewImage1.ImageUrl = TempChild2BirthCertImage.ImageUrl;
    }
    protected void BirthCert3_Click(object sender, EventArgs e)
    {
        DocPreviewImage1.ImageUrl = TempChild3BirthCertImage.ImageUrl;
    }
    protected void BirthCert4_Click(object sender, EventArgs e)
    {
        DocPreviewImage1.ImageUrl = TempChild4BirthCertImage.ImageUrl;
    }

    protected void Check_Verification_Status()
    {
        if (IDCardRadioButtonList.Items[0].Selected == true && MCertRadioButtonList.Items[0].Selected == true && NoKRadioButtonList.Items[0].Selected == true && DCertRadioButtonList.Items[0].Selected == true && CondRadioButtonList.Items[0].Selected == true && SpouseRadioButtonList.Items[0].Selected == true && Ch1RadioButtonList.Items[0].Selected == true && Ch2RadioButtonList.Items[0].Selected == true && Ch3RadioButtonList.Items[0].Selected == true && Ch4RadioButtonList1.Items[0].Selected == true)
        {
            FinalVerifRadioButtonList.Items[1].Selected = false;
            FinalVerifRadioButtonList.Items[0].Selected = true;
        }
        else
        {
            FinalVerifRadioButtonList.Items[0].Selected = false;
            FinalVerifRadioButtonList.Items[1].Selected = true;
        }         
    }

    protected void IDCardRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Check_Verification_Status();
    }
    protected void MCertRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Check_Verification_Status();
    }
    protected void NoKRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Check_Verification_Status();
    }
    protected void DCertRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Check_Verification_Status();
    }
    protected void CondRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Check_Verification_Status();
    }
    protected void SpouseRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Check_Verification_Status();
    }
    protected void Ch1RadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Check_Verification_Status();
    }
    protected void Ch2RadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Check_Verification_Status();
    }
    protected void Ch3RadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Check_Verification_Status();
    }
    protected void Ch4RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Check_Verification_Status();
    }
     
    protected void Submit_Verification_Click(object sender, EventArgs e)
    {
           try
                    {
                        EnroleeVerification EnroleeVerificationObj = new EnroleeVerification();
                        // save info
                        EnroleeVerificationObj = Get_Enrolee_Verification_Viaual("User");

                        txtVerificationId.Text = DhmlSystemWebPortal.Save_Enrolee_Verification_Information(EnroleeVerificationObj).ToString();

                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "This record has been verified." + "');", true);
                        Clear_Enrolee_Verification_Viaual();
                    }
                    catch (Exception ex)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message.ToString() + "');", true);
                    }
    }

    void clear_Document_verification()
    {
        
     
   //long.Parse(txtVerificationId.Text); // create txtId on the form
       txtServiceNumber.Text.Trim();
       FinalVerifRadioButtonList.Items[0].Selected = false; 
       FinalVerifRadioButtonList.Items[1].Selected = false; 
       NonVerifReason.Text="";

       IDCardRadioButtonList.Items[0].Selected = false;
       IDCardRadioButtonList.Items[1].Selected = false;

       MCertRadioButtonList.Items[0].Selected = false;
       MCertRadioButtonList.Items[1].Selected = false;

       NoKRadioButtonList.Items[0].Selected =false;
       NoKRadioButtonList.Items[1].Selected =false;

       DCertRadioButtonList.Items[0].Selected=false;
       DCertRadioButtonList.Items[1].Selected=false;

       CondRadioButtonList.Items[0].Selected =false;
       CondRadioButtonList.Items[1].Selected =false;

       SpouseRadioButtonList.Items[0].Selected =false;
       SpouseRadioButtonList.Items[1].Selected =false;

       Ch1RadioButtonList.Items[0].Selected=false;
       Ch1RadioButtonList.Items[1].Selected=false;

       Ch2RadioButtonList.Items[0].Selected =false;
       Ch2RadioButtonList.Items[1].Selected =false;

       Ch3RadioButtonList.Items[0].Selected=false;
       Ch3RadioButtonList.Items[1].Selected=false;

       Ch4RadioButtonList1.Items[0].Selected = false;
       Ch4RadioButtonList1.Items[1].Selected = false;

       SuperAdminConfirmRB.Items[0].Selected = false;
       SuperAdminConfirmRB.Items[1].Selected = false;

    }

    private EnroleeVerification Get_Enrolee_Verification_Viaual(string appUser)
    {
        EnroleeVerification EnroleeVerificationObj = new EnroleeVerification();
        EnroleeVerificationObj.Id = 0;
        EnroleeVerificationObj.EnroleeId = long.Parse(txtVerificationId.Text); // create txtId on the form
        EnroleeVerificationObj.ServiceNumber= txtServiceNumber.Text.Trim();
        EnroleeVerificationObj.Status = (FinalVerifRadioButtonList.Items[0].Selected==true)? "true": "false";
        EnroleeVerificationObj.Reason= NonVerifReason.Text.Trim();
        EnroleeVerificationObj.Tel = txtTel.Text.Trim();
        EnroleeVerificationObj.AdminReason = "Non Verified";
        EnroleeVerificationObj.IdCard = (IDCardRadioButtonList.Items[0].Selected==true)? "true": "false";
        EnroleeVerificationObj.MarriageCert =(MCertRadioButtonList.Items[0].Selected==true)? "true": "false";
        EnroleeVerificationObj.NoKLetter= (NoKRadioButtonList.Items[0].Selected==true)? "true": "false";
        EnroleeVerificationObj.DeathCert= (DCertRadioButtonList.Items[0].Selected==true)? "true": "false";
        EnroleeVerificationObj.CondLetter= (CondRadioButtonList.Items[0].Selected==true)? "true": "false";
        EnroleeVerificationObj.SpouseCert= (SpouseRadioButtonList.Items[0].Selected==true)? "true": "false";
        EnroleeVerificationObj.ChildCert1= (Ch1RadioButtonList.Items[0].Selected==true)? "true": "false";
        EnroleeVerificationObj.ChildCert2= (Ch2RadioButtonList.Items[0].Selected==true)? "true": "false";
        EnroleeVerificationObj.ChildCert3= (Ch3RadioButtonList.Items[0].Selected==true)? "true": "false";
        EnroleeVerificationObj.ChildCert4= (Ch4RadioButtonList1.Items[0].Selected==true)? "true": "false";

        return EnroleeVerificationObj;
     }

    void Clear_Enrolee_Verification_Viaual()
    {
        txtId.Text = "0";
        txtVerificationId.Text="0"; // create txtId on the form
        txtServiceNumber.Text = "";
        FinalVerifRadioButtonList.Items[1].Selected = true ;
        NonVerifReason.Text.Trim();
        txtTel.Text.Trim();
        //EnroleeVerificationObj.AdminStatus = "Non Verified";
        IDCardRadioButtonList.Items[1].Selected = true;  
        MCertRadioButtonList.Items[1].Selected = true; 
        NoKRadioButtonList.Items[1].Selected = true; 
        DCertRadioButtonList.Items[1].Selected = true; 
        CondRadioButtonList.Items[1].Selected = true; 
        SpouseRadioButtonList.Items[1].Selected = true; 
        Ch1RadioButtonList.Items[1].Selected = true; 
        Ch2RadioButtonList.Items[1].Selected = true; 
        Ch3RadioButtonList.Items[1].Selected = true; 
        Ch4RadioButtonList1.Items[1].Selected = true; ;

        imgEnrolee.ImageUrl = "images/ads/300x250.gif";
        imgSpouse.ImageUrl = "images/ads/300x250.gif";
        imgChild1.ImageUrl = "~/images/ads/child.gif";
        imgChild2.ImageUrl = "~/images/ads/child.gif";
        imgChild3.ImageUrl = "~/images/ads/child.gif";
        imgChild4.ImageUrl = "~/images/ads/child.gif";
        DocPreviewImage1.ImageUrl = null;

        txtServiceNumber.Text="";
        txtFirstName.Text="";
        txtMidName.Text="";
        txtSurname.Text="";
        cmbemploymentStatus.Text="";
        cmbMilitaryArm.Text="";
        CmbRank.Text="";
        TxtDOB.Text="";
        CmbGender.Text="";
        CmbMaritalStatus.Text="";
        txtTel.Text="";
        txtFirstNameSpouse.Text="";
        txtRelSpouse.Text="";
        txtDOBSpouse.Text="";
        txtGenderSpouse.Text="";

        txtFirstNameChild1.Text="";
        txtRelChild1.Text="";
        txtGenderChild1.Text="";
        txtDOBChild1.Text="";

        txtFirstNameChild2.Text="";
        txtRelChild2.Text="";
        txtGenderChild2.Text="";
        txtDOBChild2.Text="";

        txtFirstNameChild3.Text="";
        txtRelChild3.Text="";
        txtGenderChild3.Text="";
        txtDOBChild3.Text="";

        txtFirstNameChild4.Text="";
        txtRelChild4.Text="";
        txtGenderChild4.Text="";
        txtDOBChild4.Text="";
    }

    protected void SuperAdminConfirmBtn_Click(object sender, EventArgs e)
    {
        try
        {
            string SuperAdminStatus;
            string SuperAdminReason;
            string ServiceNumber;
            SuperAdminStatus = (SuperAdminConfirmRB.Items[0].Selected ==true)? "true":"false";
            SuperAdminReason = SeperAdminReason.Text.Trim();
            ServiceNumber = txtServiceNumber.Text.Trim();
            string SaveId =  DhmlSystemWebPortal.Save_SuperAdmin_Verification_Information(SuperAdminStatus, SuperAdminReason, ServiceNumber).ToString();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "This record has been confirmed." + "');", true);
            Clear_SuperAdmin_Verification_Viaual();
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + ex.Message.ToString() + "');", true);
        }
    }

    void Clear_SuperAdmin_Verification_Viaual()
    {
        txtId.Text = "0";
        txtVerificationId.Text = "0"; // create txtId on the form
        txtServiceNumber.Text = "";
        FinalVerifRadioButtonList.Items[1].Selected = true;
        NonVerifReason.Text.Trim();
        txtTel.Text.Trim();
        //EnroleeVerificationObj.AdminStatus = "Non Verified";
        IDCardRadioButtonList.Items[1].Selected = true;
        MCertRadioButtonList.Items[1].Selected = true;
        NoKRadioButtonList.Items[1].Selected = true;
        DCertRadioButtonList.Items[1].Selected = true;
        CondRadioButtonList.Items[1].Selected = true;
        SpouseRadioButtonList.Items[1].Selected = true;
        Ch1RadioButtonList.Items[1].Selected = true;
        Ch2RadioButtonList.Items[1].Selected = true;
        Ch3RadioButtonList.Items[1].Selected = true;
        Ch4RadioButtonList1.Items[1].Selected = true;
        SuperAdminConfirmRB.Items[1].Selected = true;
        SeperAdminReason.Text = "";

        imgEnrolee.ImageUrl = "images/ads/300x250.gif";
        imgSpouse.ImageUrl = "images/ads/300x250.gif";
        imgChild1.ImageUrl = "~/images/ads/child.gif";
        imgChild2.ImageUrl = "~/images/ads/child.gif";
        imgChild3.ImageUrl = "~/images/ads/child.gif";
        imgChild4.ImageUrl = "~/images/ads/child.gif";
        DocPreviewImage1.ImageUrl = null;

        txtServiceNumber.Text = "";
        txtFirstName.Text = "";
        txtMidName.Text = "";
        txtSurname.Text = "";
        cmbemploymentStatus.Text = "";
        cmbMilitaryArm.Text = "";
        CmbRank.Text = "";
        TxtDOB.Text = "";
        CmbGender.Text = "";
        CmbMaritalStatus.Text = "";
        txtTel.Text = "";
        txtHCPPrincipal.Text = "";
        txtFirstNameSpouse.Text = "";
        txtRelSpouse.Text = "";
        txtDOBSpouse.Text = "";
        txtGenderSpouse.Text = "";
        txtHCPSpouse.Text = "";
        PersonnelbarCode.Text = "";

        txtFirstNameChild1.Text = "";
        txtRelChild1.Text = "";
        txtGenderChild1.Text = "";
        txtDOBChild1.Text = "";
        txtHCPChild1.Text = "";

        txtFirstNameChild2.Text = "";
        txtRelChild2.Text = "";
        txtGenderChild2.Text = "";
        txtDOBChild2.Text = "";
        txtHCPChild2.Text = "";

        txtFirstNameChild3.Text = "";
        txtRelChild3.Text = "";
        txtGenderChild3.Text = "";
        txtDOBChild3.Text = "";
        txtHCPChild3.Text = "";

        txtFirstNameChild4.Text = "";
        txtRelChild4.Text = "";
        txtGenderChild4.Text = "";
        txtDOBChild4.Text = "";
        txtHCPChild4.Text = "";
        NonVerifReason.Text = "";
        //SearchDetailsGV.DeleteRow(SearchDetailsGV.SelectedIndex);

    }
    protected void SearchDetailsGVSuperAdmin_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        SearchDetailsGVSuperAdmin.PageIndex = e.NewPageIndex;
        SearchDetailsGVSuperAdmin.DataSource = Session["verificationListObj"];
        SearchDetailsGVSuperAdmin.DataBind();
    }
}