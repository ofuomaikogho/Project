<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reguser.aspx.cs" Inherits="ProfitPlusWeb.Reguser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Join Us</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/zerogrid.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="icon" href="/profitplusicon.png">
<script type="text/javascript" src="js/jquery-1.6.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Swis721_Cn_BT_400.font.js"></script>
<script type="text/javascript" src="js/Swis721_Cn_BT_700.font.js"></script>
<script type="text/javascript" src="js/tabs.js"></script>
<script src="js/css3-mediaqueries.js"></script>
<!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
	<style type="text/css">
		.bg{ behavior: url(js/PIE.htc); }
	</style>
<![endif]-->
<!--[if lt IE 7]>
		<div style=' clear: both; text-align:center; position: relative;'>
			<a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/images/upgrade.jpg" border="0"  alt="" /></a>
		</div>
<![endif]-->
</head>
<body id="page5">
	<div class="body1">
	<div class="body2">
	<div class="body5">
		<div class="main zerogrid">
<!-- header -->
			<header>
				<div class="wrapper rơw">
				<h1><a href="index.html" id="logo"><img src="images/logo.png" /></a></h1>
				<nav>
					<ul id="menu">
						<li id="nav1"><a href="index.html">Home</a></li>						
					    <!--<li id="nav5" class="active"><a href="Reguser.aspx">Register</a></li>-->
					</ul>
				</nav>
				</div>
			</header>
<!-- header end-->
		</div>
	</div>
	</div>
	</div>
	<div class="body3">
		<div class="main zerogrid">
<!-- content -->
			<article id="content">
				<div class="wrapper row">
					<section class="col-3-4a">
					<div class="wrap-col">
						<form id="ContactForm" runat="server">
                             <asp:Panel ID="LoginPanel" runat="server">
                                 <table style="width: 100%;">
                                     <tr>
                                         <td colspan="3"><h3 class="under">Welcome</h3>
                                             <div class="Myalert" style="padding: 20px;background-color:#0ecc2f; color: white; width:90%;">
                                              <span class="closebtn1"  onclick="this.parentElement.style.display='none';" style=" margin-left: 15px;  color: white; font-weight: bold; float: right; font-size: 22px; line-height: 20px; cursor: pointer; transition: 0.3s;" >&times;</span> 
                                              <strong>NOTICE! - For Making Donations</strong><br /> 
                                                 * After registration your account becomes active and pairing for donations are instant. Please ensure you refresh your browser<br /> periodically.<br /><br />
                                                 *Details of the recepient for your donation appears on your dashboard, we advise you have an active mobile banking application <br />on your mobile device to aid the donation process.<br /><br />
                                                 *After you have made your donation, log-in to your dashboard, click the "I have made payment" button, fill in the details of your<br /> transaction then proceed to upload proof of your donation. Please endeavour to call the recipiet of your donation to facilitate <br />swift donation confirmation.<br /><br />
                                            <strong>NOTICE! - For Receiving Donations</strong><br />
                                                 * <strong style="color:#f00;">DO NOT CONFIRM DONATIONS NOT RECEIVED</strong>. Merging after you have made donations takes between 3 to 72 hours.<br />
                                                 Please report all fraudulent transactions to <strong>admin@profitplusng.com.</strong> 

                                             </div><br />
                                         </td>
                                         
                                     </tr>
                                     <tr>
                                         <td style="width: 30%">&nbsp;</td>
                                         <td><div class="wrapper" >	
                                             <asp:Label ID="Label1" style="text-align: center"  runat="server" Text="USER LOGIN" Width="100%" BackColor="#4F9800" Font-Bold="True" Font-Overline="False" Font-Size="Medium" ForeColor="White" ></asp:Label>
                                            <!--<h1></h1>-->					
                                            </div>
                                         </td>
                                         <td style="width: 30%">&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;</td>
                                         <td><div class="wrapper" >
						                <asp:Label ID="emailNameLabel2" runat="server" Text="Email" Width="80px"></asp:Label>
                                        <asp:TextBox ID="loginEmail" runat="server" Width="250px" class="input" ValidateRequestMode="Enabled" TextMode="Email" BorderColor="#00CC00" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
                                        </div></td>
                                         <td>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;</td>
                                         <td><div  class="wrapper">
                                        <asp:Label ID="passwordLabel1" runat="server" Text="Password" Width="80px"></asp:Label>
                                        <asp:TextBox ID="pwdTxtBox1" runat="server" Width="250px" CssClass="input" ValidateRequestMode="Enabled" TextMode="Password" BorderColor="#00CC00" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
                                        </div></td>
                                         <td>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;</td>
                                         <td><div  class="wrapper" style="text-align: center;" >
                                            <asp:Button ID="loginButton1" runat="server" Text="LOGIN" BackColor="#33CC33" OnClick="userLogin" />
                                        </div></td>
                                         <td>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;</td>
                                         <td>&nbsp;</td>
                                         <td>&nbsp;</td>
                                     </tr>
                                     <tr>
                                         <td>&nbsp;</td>
                                         <td><div  class="wrapper" >
                                            <asp:Label ID="Label3" runat="server" Text="I dont have an account, click REGISTER" ForeColor="Red"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="regBtn" runat="server" Text="REGISTER" BackColor="#33CC33" OnClick="regBtn_Click"  />
                                        </div></td>
                                         <td>&nbsp;</td>
                                     </tr>
                                 </table>  
                             </asp:Panel>
                            <asp:Panel ID="RegPanel" runat="server">
                                <h2 class="under">Registration Form </h2>	
                                <div>                                
                                <div class="wrapper" >                                   							       
								    <asp:Label ID="firstNameLabel" runat="server" Text="First Name" Width="120px"></asp:Label>
                                    <asp:TextBox ID="firstNameTxtBox" runat="server" Width="276px" CssClass="input" ValidateRequestMode="Enabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="input1" runat="server" ErrorMessage="Enter First Name" ControlToValidate="firstNameTxtBox" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
							    <div  class="wrapper">
								    <asp:Label ID="lastNameLabel" runat="server" Text="Last Name" Width="120px"></asp:Label>
                                    <asp:TextBox ID="lastNameTxtBox" runat="server" Width="276px" CssClass="input"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="input1" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="lastNameTxtBox" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

							    <div  class="wrapper">
								    <asp:Label ID="emailNameLabel" runat="server" Text="E-mail" Width="120px"></asp:Label>
                                    <asp:TextBox ID="emailTxtBox" runat="server" Width="276px" CssClass="input" TextMode="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="input1" runat="server" ErrorMessage="Enter Email Address" ControlToValidate="emailTxtBox" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div  class="wrapper">
								    <asp:Label ID="phone1NameLabel" runat="server" Text="Phone 1" Width="120px"></asp:Label>
                                    <asp:TextBox ID="phone1TxtBox" runat="server" Width="276px" CssClass="input" MaxLength="11"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="input1" runat="server" ErrorMessage="Enter Phone Number" ControlToValidate="phone1TxtBox" ForeColor="Red"></asp:RequiredFieldValidator>
							    </div>

                                <div  class="wrapper">
								    <asp:Label ID="phone2NameLabel" runat="server" Text="Phone 2" Width="120px"></asp:Label>
                                    <asp:TextBox ID="phone2TxtBox" runat="server" Width="276px" CssClass="input" MaxLength="11"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="input1" runat="server" ErrorMessage="Enter Alternative Phone Number" ControlToValidate="phone2TxtBox" ForeColor="Red"></asp:RequiredFieldValidator>
							    </div>

							    <div  class="wrapper">
                                    <asp:Label ID="bankNameLabel" runat="server" Text="Bank Name" Width="120px"></asp:Label>
                                    <asp:DropDownList ID="bankNameDrpDwn" runat="server" Height="25px" Width="285px" CssClass="input">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>Access Bank</asp:ListItem>
                                        <asp:ListItem>Citibank</asp:ListItem>
                                        <asp:ListItem>Diamond Bank</asp:ListItem>
                                        <asp:ListItem>Dynamic Standard Bank</asp:ListItem>
                                        <asp:ListItem>Ecobank Nigeria</asp:ListItem>
                                        <asp:ListItem>Fidelity Bank Nigeria</asp:ListItem>
                                        <asp:ListItem>First Bank of Nigeria</asp:ListItem>
                                        <asp:ListItem>First City Monument Bank</asp:ListItem>
                                        <asp:ListItem>Guaranty Trust Bank</asp:ListItem>
                                        <asp:ListItem>Heritage Bank Plc</asp:ListItem>
                                        <asp:ListItem>Keystone Bank Limited</asp:ListItem>
                                        <asp:ListItem>Providus Bank Plc</asp:ListItem>
                                        <asp:ListItem>Skye Bank</asp:ListItem>
                                        <asp:ListItem>Stanbic IBTC Bank Nigeria Limited</asp:ListItem>
                                        <asp:ListItem>Standard Chartered Bank</asp:ListItem>
                                        <asp:ListItem>Sterling Bank</asp:ListItem>
                                        <asp:ListItem>Suntrust Bank Nigeria Limited</asp:ListItem>
                                        <asp:ListItem>Union Bank of Nigeria</asp:ListItem>
                                        <asp:ListItem>United Bank for Africa</asp:ListItem>
                                        <asp:ListItem>Unity Bank Plc</asp:ListItem>
                                        <asp:ListItem>Wema Bank</asp:ListItem>
                                        <asp:ListItem>Zenith Bank</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="input1" runat="server" ErrorMessage="Select Your Bank" ControlToValidate="bankNameDrpDwn" ForeColor="Red"></asp:RequiredFieldValidator>
							    </div>

                                <div  class="wrapper">
								    <asp:Label ID="accNoNameLabel" runat="server" Text="Account Number" Width="120px"></asp:Label>
                                    <asp:TextBox ID="accNoTxtBox" runat="server" Width="276px" CssClass="input" MaxLength="10"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="input1" runat="server" ErrorMessage="Enter Account Number" ControlToValidate="accNoTxtBox" ForeColor="Red"></asp:RequiredFieldValidator>
							    </div>

                                <div  class="wrapper">
                                    <asp:Label ID="packageLabel" runat="server" Text="Package" Width="120px"></asp:Label>
                                    <asp:DropDownList ID="packageDrpDwn" runat="server" Height="25px" Width="285px" CssClass="input">
                                        <asp:ListItem Value="10000">Starter Package</asp:ListItem>
                                        <asp:ListItem Value="20000">Basic Package</asp:ListItem>
                                        <asp:ListItem Value="50000">Relief Package</asp:ListItem>
                                        <asp:ListItem Value="100000">Bronze Pakage</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="input1" runat="server" ErrorMessage="Select Package" ControlToValidate="packageDrpDwn" ForeColor="Red"></asp:RequiredFieldValidator>
							    </div>

                                 <div  class="wrapper">
								    <asp:Label ID="passwordNameLabel" runat="server" Text="Password" Width="120px"></asp:Label>
                                    <asp:TextBox ID="passwordTxtBox" runat="server" Width="276px" CssClass="input" TextMode="Password"></asp:TextBox>
                                     
							    </div>
                                <div  class="wrapper">
								    <asp:Label ID="passwordName1Label" runat="server" Text="Retype Password" Height="26px" Width="120px"></asp:Label>
                                    <asp:TextBox ID="password1TxtBox" runat="server" Width="276px" CssClass="input" TextMode="Password"></asp:TextBox>
							        <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="input1" ErrorMessage="Passwords Do Not Match" ControlToCompare="passwordTxtBox" ControlToValidate="password1TxtBox" ForeColor="Red"></asp:CompareValidator>
                                </div>

                                <div  class="wrapper">

								    <asp:Button ID="saveButton" runat="server" Text="REGISTER" BackColor="#33CC33" OnClick="saveButton_Click" />
							    </div>  
                           
						    </div>  
                            </asp:Panel>
                           
						</form>
					</div>
					</section>
					
				</div>

			</article>
		</div>
	</div>
	<div class="body4">
		<div class="main zerogrid">			
			<!-- content end -->
		</div>
	</div>
		<div class="main zerogrid">
<!-- footer -->
			<footer>
				Powered by Profitplus &copy 2017 
			 footer end -->
		</div>
<script type="text/javascript"> Cufon.now(); </script>
<script>
    $(document).ready(function () {
        tabs.init();
    })
</script>
    <!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/58cabc2d93cfd355720dd18a/default';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->
</body>
</html>

