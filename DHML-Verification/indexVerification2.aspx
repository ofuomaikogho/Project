<%@ Page Language="C#" AutoEventWireup="true" CodeFile="indexVerification2.aspx.cs" Inherits="indexVerification2" MaintainScrollPositionOnPostback="true" %>
<!DOCTYPE html  >
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head runat="server" >
<title>DHML Verification Portal</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="css/style1.css" type="text/css" media="screen" />
<link rel="icon" href="images/favicon.ico" />
<link rel="shortcut icon" href="images/favicon.ico" />
   
    <style type="text/css">
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            width: 214px;
        }
        .auto-style11 {
            width: 216px;
        }
        .auto-style12 {
            width: 59px;
        }
        .auto-style13 {
            width: 117px;
            height: 22px;
        }
        .auto-style14 {
            height: 22px;
        }
        .auto-style17 {
            height: 22px;
        }
        .auto-style19 {
        }
        .auto-style21 {
            width: 42px;
            height: 22px;
        }
        .PreviewImage {}
        .auto-style22 {
            width: 42px;
        }
        .auto-style23 {
            width: 41px;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
<div id="head" class="clearfloat">
  <div class="clearfloat">
    <div id="logo" class="left"> <a href="http://www.free-css.com/"><img src="images/DHML_LOGO1.png" width="400" height="100" alt="" /></a>
       
    </div>
    <div class="right"> &nbsp;</div>
  </div>
  <div id="navbar" class="clearfloat">
    <ul id="page-bar" class="left clearfloat">
        <li>dffdfdf</li>
       
    </ul> 
  </div>
</div>
<div id="page" class="clearfloat">

   
    <asp:Panel ID="AdminPanel" runat="server">
   <div id="middle" class="clearfloat">  
     <div>
         <%--<asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" Orientation="Horizontal" StaticSubMenuIndent="10px" Width="100%" RenderingMode="Table" StaticEnableDefaultPopOutImage="False">
             <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
             <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <DynamicMenuStyle BackColor="#E3EAEB" />
             <DynamicSelectedStyle BackColor="#1C5E55" />
             <Items>
                 <asp:MenuItem Text="Menu 1" Value="Menu 1">
                     <asp:MenuItem Text="Sub 1" Value="Sub 1"></asp:MenuItem>
                 </asp:MenuItem>
                 <asp:MenuItem Text="Menu 2" Value="Menu 2">
                     <asp:MenuItem Text="Sub 2" Value="Sub 2"></asp:MenuItem>
                 </asp:MenuItem>
                 <asp:MenuItem Text="Menu 3" Value="Menu 3">
                     <asp:MenuItem Text="Sub 3" Value="Sub 3"></asp:MenuItem>
                 </asp:MenuItem>
             </Items>
             <StaticHoverStyle BackColor="#666666" ForeColor="White" />
             <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
             <StaticSelectedStyle BackColor="#1C5E55" />
         </asp:Menu>--%>
     </div>
       <table class="auto-style9">
           <tr>
               <td class="auto-style12">
                   <asp:Label ID="Label31" runat="server" Text="Search:"></asp:Label>
               </td>
               <td class="auto-style10">
                   <asp:DropDownList ID="SearchDDL" runat="server" Width="200px">
                   </asp:DropDownList>
               </td>
               <td class="auto-style11">
                   <asp:TextBox ID="TxtSearch" runat="server" Width="200px"></asp:TextBox>
               </td>
               <td>
                   <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />
               </td>
           </tr>
       </table>

    <div id="cat-3" class="categoryX"> <span class="cat_title">Details</span>
        <asp:Panel ID="Panel5" runat="server" Height="147px" ScrollBars="Vertical" Width="100%">
            <asp:GridView ID="SearchDetailsGVSuperAdmin" runat="server" Height="80%" Width="100%" PageSize="8" AllowPaging="True" AutoGenerateSelectButton="True" BackColor="#E1F0FF" OnSelectedIndexChanged="SearchDetailsGVSuperAdmin_SelectedIndexChanged" OnPageIndexChanging="SearchDetailsGVSuperAdmin_PageIndexChanging"></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        </asp:Panel> 
    </div> 
  </div>
  <div id="bottom" class="clearfloat">
    <div id="front-list">
        <asp:Panel ID="Panel3" runat="server" Height="1000px">

            <asp:Image ID="DocPreviewImage1" runat="server" CssClass="PreviewImage" ImageUrl="~/images/ads/docImage.png" Height="791px" Width="100%" />

            <asp:Image ID="TempIDCardImage" runat="server" Visible="False" />
            <asp:Image ID="TempMariageCertImage" runat="server" Visible="False" />
            <asp:Image ID="TempNoKImage" runat="server" Visible="False" />
            <asp:Image ID="TempDeathCertImage" runat="server" Visible="False" />
            <asp:Image ID="TempCondImage" runat="server" Visible="False" />
            <asp:Image ID="TempSpouseBirthCertImage" runat="server" Visible="False" />
            <asp:Image ID="TempChild1BirthCertImage" runat="server" Visible="False" />
            <asp:Image ID="TempChild2BirthCertImage" runat="server" Visible="False" />
            <asp:Image ID="TempChild3BirthCertImage" runat="server" Visible="False" />
            <asp:Image ID="TempChild4BirthCertImage" runat="server" Visible="False" />

            <asp:TextBox ID="txtId" runat="server" Visible="False">0</asp:TextBox>
            <asp:TextBox ID="txtVerificationId" runat="server" Visible="False">0</asp:TextBox>

            <asp:Panel ID="SuperAdminDecisionPanel" runat="server" Height="170px" Width="100%">
           
        <table style="border: thin solid #808080; height: 171px; width: 300px;">
          <tr>
              <td class="auto-style19" colspan="2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Verification Status" Font-Bold="True" Font-Size="Larger"></asp:Label>
              </td>
          </tr>
           <tr>
               <td class="auto-style19">
                   <asp:Label ID="Label2" runat="server" Text="Overall Status:"></asp:Label>
               </td>
               <td class="auto-style6">
                   <asp:RadioButtonList ID="SuperAdminConfirmRB" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                       <asp:ListItem>Verified</asp:ListItem>
                       <asp:ListItem>Non Verified</asp:ListItem>
                   </asp:RadioButtonList>
                    </td>
          </tr>
          <tr>
              <td class="auto-style19" colspan="2" style="text-align: center">
                  <asp:Label ID="Label3" runat="server" Text="Reason for Non Verification:"></asp:Label>
              </td>
          </tr>
          <tr>
              <td class="auto-style19" colspan="2">
                  <asp:TextBox ID="SeperAdminReason" runat="server" Height="52px" TextMode="MultiLine" Width="100%"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="auto-style19" colspan="2" style="text-align: right">
                  <asp:Button ID="SuperAdminConfirmBtn" runat="server" Text="Confirm" OnClick="SuperAdminConfirmBtn_Click" />
              </td>
          </tr>
           </table> 

            </asp:Panel>

        </asp:Panel>
    </div>
    <div id="sidebar">
      <div id="sidebar-ads">
          <asp:Image ID="imgEnrolee" runat="server" ImageUrl="images/ads/300x250.gif" Width="300px" Height="250px" /> 
      </div>        
      <div id="sidebar-top">
        <h3>Principal Bio Data</h3>
        <div class="textwidget">
        <table>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label10" runat="server" Text="Service Number: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtServiceNumber" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label11" runat="server" Text="First Name:  "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label33" runat="server" Text="Middle Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtMidName" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label34" runat="server" Text="Last Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSurname" runat="server" Width="200px" style="margin-left: 24" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label35" runat="server" Text="Employment Status:  "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cmbemploymentStatus" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label12" runat="server" Text="Arm of Service: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="cmbMilitaryArm" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label36" runat="server" Text="Rank:  "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="CmbRank" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label13" runat="server" Text="Date of Birth: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TxtDOB" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label14" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="CmbGender" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label15" runat="server" Text="Marital Status:  "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="CmbMaritalStatus" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label37" runat="server" Text="Telephone: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtTel" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
             <tr>
                 <td class="auto-style1">
                     <asp:Label ID="Label63" runat="server" Text="HCP:"></asp:Label>
                 </td>
                 <td>
                     <asp:TextBox ID="txtHCPPrincipal" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                 </td>
            </tr>
             <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label32" runat="server" Text="Barcode: "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="PersonnelbarCode" runat="server" Text="BARCODE"></asp:Label>
                </td>
            </tr>
        </table>
        </div>
      </div>
      
      <div id="sidebar-ads1">
          <asp:Image ID="imgSpouse" runat="server" ImageUrl="~/images/ads/spouse.gif" Width="300px" Height="250px" /> 
      </div>        
      <div id="sidebar-top1">
        <h3>Spouse Bio Data</h3>
        <div class="textwidget">
        <table>
             
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label39" runat="server" Text="First Name:  "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtFirstNameSpouse" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label40" runat="server" Text="Relationship::"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRelSpouse" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            
            
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label45" runat="server" Text="Date of Birth: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDOBSpouse" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label46" runat="server" Text="Gender:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGenderSpouse" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr> 
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label64" runat="server" Text="HCP:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtHCPSpouse" runat="server" Width="200px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
        </table>
        </div>
      </div> 
    </div>
    <div id="depdiv">
        <table class="auto-style9" style="border: thin solid #808080; width: 100%">
            <tr>
                <td><h3>Child 1 Bio Data</h3></td>
                <td><h3>Child 2 Bio Data</h3></td>
                <td><h3>Child 3 Bio Data</h3></td>
                <td><h3>Child 4 Bio Data</h3></td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style9" style="border: thin solid #CCCCCC">
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Image ID="imgChild1" runat="server" Height="35mm" Width="35mm" ImageUrl="~/images/ads/child.gif" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label47" runat="server" Text="First Name:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFirstNameChild1" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label48" runat="server" Text="Relationship: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRelChild1" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label49" runat="server" Text="Gender: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtGenderChild1" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label50" runat="server" Text="Date of Birth: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDOBChild1" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label65" runat="server" Text="HCP:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtHCPChild1" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="auto-style9" style="border: thin solid #CCCCCC">
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Image ID="imgChild2" runat="server" Height="35mm" Width="35mm" ImageUrl="~/images/ads/child.gif" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label51" runat="server" Text="First Name:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFirstNameChild2" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label54" runat="server" Text="Relationship: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRelChild2" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label57" runat="server" Text="Gender: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtGenderChild2" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label60" runat="server" Text="Date of Birth: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDOBChild2" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label66" runat="server" Text="HCP:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtHCPChild2" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="auto-style9" style="border: thin solid #CCCCCC">
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Image ID="imgChild3" runat="server" Height="35mm" Width="35mm" ImageUrl="~/images/ads/child.gif" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label52" runat="server" Text="First Name:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFirstNameChild3" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label55" runat="server" Text="Relationship: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRelChild3" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label58" runat="server" Text="Gender: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtGenderChild3" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label61" runat="server" Text="Date of Birth: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDOBChild3" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label67" runat="server" Text="HCP:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtHCPChild3" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table class="auto-style9" style="border: thin solid #CCCCCC">
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Image ID="imgChild4" runat="server" Height="35mm" Width="35mm" ImageUrl="~/images/ads/child.gif" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label53" runat="server" Text="First Name:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtFirstNameChild4" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label56" runat="server" Text="Relationship: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtRelChild4" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label59" runat="server" Text="Gender: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtGenderChild4" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label62" runat="server" Text="Date of Birth: "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDOBChild4" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label68" runat="server" Text="HCP:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtHCPChild4" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

    </div>
  </div>
    </asp:Panel>
</div>

<asp:Panel ID="Panel4" runat="server">
<div id="front-popular" class="clearfloat">
  <div id="recentpost" class="clearfloat">
    <h3>
        <asp:Label ID="Label16" runat="server" Text="Principal Documents"></asp:Label></h3>
    <ul>
      <li> <table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style13">
                    <asp:LinkButton ID="PrincipalIdCard" runat="server" OnClick="PrincipalIdCard_Click">Principal&#39;s ID Card: </asp:LinkButton>
                     
              </td>
              <td class="auto-style14">
                  <asp:RadioButtonList ID="IDCardRadioButtonList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="IDCardRadioButtonList_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem Selected="True">Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
                  
              </td>
          </tr>
           </table>
      </li>
      <li> 
          <table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style3">
                    <asp:LinkButton ID="MarriageCert" runat="server" OnClick="MarriageCert_Click">Marriage Certificate:</asp:LinkButton>
                    &nbsp;
              </td>
              <td>
                  <asp:RadioButtonList ID="MCertRadioButtonList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="MCertRadioButtonList_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem Selected="True">Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
                   
              </td>
          </tr>
           </table>
      </li>
      <li>  
          <table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style3">
                    <asp:LinkButton ID="NoKLetter" runat="server" OnClick="NoKLetter_Click">Next of Kin Letter:</asp:LinkButton>
 
              </td>
              <td>
                  <asp:RadioButtonList ID="NoKRadioButtonList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="NoKRadioButtonList_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem Selected="True">Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
                 
              </td>
          </tr>
           </table>
      </li>
      <li>
          <table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style3">
                    <asp:LinkButton ID="DeathCert" runat="server" OnClick="DeathCert_Click">Death Certificate:</asp:LinkButton>
                    &nbsp;
              </td>
              <td>
                  <asp:RadioButtonList ID="DCertRadioButtonList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="DCertRadioButtonList_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem Selected="True">Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
                   
              </td>
          </tr>
           </table>
      </li>
      <li> 
          <table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style3">
                    <asp:LinkButton ID="CondoLetter" runat="server" OnClick="CondoLetter_Click">Condolence Letter:</asp:LinkButton>
                    
              </td>
              <td>
                  <asp:RadioButtonList ID="CondRadioButtonList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="CondRadioButtonList_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem Selected="True">Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
              </td>
          </tr> 
           </table>
      </li>
    </ul>
  </div>
  <div id="mostcommented" class="clearfloat">
    <h3>
        <asp:Label ID="Label17" runat="server" Text="Dependant Birth Certificates"></asp:Label></h3>
    <ul>
      <li>
          <table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style22">
                    <asp:LinkButton ID="SpouseBirthCert" runat="server" OnClick="SpouseBirthCert_Click">Spouse: </asp:LinkButton>
                    
              </td>
              <td class="auto-style5">
                  <asp:RadioButtonList ID="SpouseRadioButtonList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="SpouseRadioButtonList_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem Selected="True">Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
              </td>
          </tr>
           </table>
      </li>
      <li> 
          <table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style22">
                    <asp:LinkButton ID="BirthCert1" runat="server" OnClick="BirthCert1_Click">Child 1: </asp:LinkButton> 
              </td>
              <td class="auto-style6">
                  <asp:RadioButtonList ID="Ch1RadioButtonList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="Ch1RadioButtonList_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem Selected="True">Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
              </td>
          </tr>
           </table>
      </li>
      <li> 
          <table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style21">
                    <asp:LinkButton ID="BirthCert2" runat="server" OnClick="BirthCert2_Click">Child 2: </asp:LinkButton>
                     
              </td>
              <td class="auto-style17">
                  <asp:RadioButtonList ID="Ch2RadioButtonList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="Ch2RadioButtonList_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem Selected="True">Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
              </td>
          </tr>
           </table>
      </li>
      <li> <table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style22">
                    <asp:LinkButton ID="BirthCert3" runat="server" OnClick="BirthCert3_Click">Child 3: </asp:LinkButton>
              </td>
              <td class="auto-style6">
                  <asp:RadioButtonList ID="Ch3RadioButtonList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="Ch3RadioButtonList_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem Selected="True">Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
              </td>
          </tr>
           </table> </li>
      <li> 
          <table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style22">
                    <asp:LinkButton ID="BirthCert4" runat="server" OnClick="BirthCert4_Click">Child 4: </asp:LinkButton>
                    
              </td>
              <td class="auto-style6">
                  <asp:RadioButtonList ID="Ch4RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="Ch4RadioButtonList1_SelectedIndexChanged" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem Selected="True">Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
              </td>
          </tr>
           </table>
      </li>
    </ul>
  </div>
  <div id="recent_comments" class="clearfloat">
    <h3>
        <asp:Label ID="Label28" runat="server" Text="Verification Status"></asp:Label></h3>
    <ul>
      <li><table style="border-color: #2C2C2C">
          <tr>
              <td class="auto-style19">
                    <asp:Label ID="Label29" runat="server" Text="Overall Status:"></asp:Label>
              </td>
              <td class="auto-style6">
                  <asp:RadioButtonList ID="FinalVerifRadioButtonList" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" Enabled="False">
                      <asp:ListItem>Verified</asp:ListItem>
                      <asp:ListItem>Non Verified</asp:ListItem>
                  </asp:RadioButtonList>
                  &nbsp;&nbsp;
              </td>
          </tr>
           </table> </li>
      <li> <asp:Label ID="Label30" runat="server" Text="Reasons:"></asp:Label> </li>
      <li> <asp:TextBox ID="NonVerifReason" runat="server" TextMode="MultiLine" Height="101px" Width="265px" Enabled="False"></asp:TextBox></li>
        
       
    </ul>
  </div>
</div>
    </asp:Panel>
<div id="sitelock_shield_logo" class="fixed_btm" style="bottom:0;position:fixed;_position:absolute;right:0;"><a href="https://www.sitelock.com/verify.php?site=dhml-nhisregistration.org.ng" onclick="window.open('https://www.sitelock.com/verify.php?site=dhml-nhisregistration.org.ng','SiteLock','width=600,height=600,left=160,top=170');return false;" ><img alt="PCI Compliance and Malware Removal" title="SiteLock"  src="/../shield.sitelock.com/shield/dhml-nhisregistration.org.ng"/></a></div>
<div id="footer">
    <script type="text/javascript">$(document).ready(function () { $("#year").html(new Date().getFullYear()); });</script>
         &nbsp;<a href="http://www.dhmlnigeria.com/" target="_blank">Defence Health Maintenance Limiteda> © <span id="year"></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Designed by <a href="http://www.hscgroup.org/" target="_blank">HSCL</a>
    </div>
</form>
</body>
</html>
