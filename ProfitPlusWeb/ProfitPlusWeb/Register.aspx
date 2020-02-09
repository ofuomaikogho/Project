<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProfitPlusWeb.Register" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Register</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="css/zerogrid.css">
<link rel="stylesheet" href="css/responsive.css">
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
						<li id="nav5" class="active"><a href="Register.html">Login</a></li>                       
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
                    <form id="ContactForm"  runat="server">
                    <asp:Panel ID="RegPanel" runat="server">
                    <section class="col-3-4">
					<div class="wrap-col">
						<h2 class="under">Registration Form </h2>
						
                            <asp:Panel ID="createUserPanel" runat="server">
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
                                    <asp:TextBox ID="phone1TxtBox" runat="server" Width="276px" CssClass="input"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="input1" runat="server" ErrorMessage="Enter Phone Number" ControlToValidate="phone1TxtBox" ForeColor="Red"></asp:RequiredFieldValidator>
							    </div>

                                <div  class="wrapper">
								    <asp:Label ID="phone2NameLabel" runat="server" Text="Phone 2" Width="120px"></asp:Label>
                                    <asp:TextBox ID="phone2TxtBox" runat="server" Width="276px" CssClass="input"></asp:TextBox>
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
                                    <asp:TextBox ID="accNoTxtBox" runat="server" Width="276px" CssClass="input"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="input1" runat="server" ErrorMessage="Enter Account Number" ControlToValidate="accNoTxtBox" ForeColor="Red"></asp:RequiredFieldValidator>
							    </div>

                                <div  class="wrapper">
                                    <asp:Label ID="packageLabel" runat="server" Text="Package" Width="120px"></asp:Label>
                                    <asp:DropDownList ID="packageDrpDwn" runat="server" Height="25px" Width="285px" CssClass="input">
                                        <asp:ListItem Value="50000">Starter Package</asp:ListItem>
                                        <asp:ListItem Value="100000">Basic Package</asp:ListItem>
                                        <asp:ListItem Value="200000">Relief Package</asp:ListItem>
                                        <asp:ListItem Value="500000">Bronze Pakage</asp:ListItem>
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
                        
					</div>
					</section>
                    </asp:Panel>                    
                     <asp:Panel ID="LoginPanel1" runat="server">
                     <div class="wrapper row">
					<section class="col-3-4a">
					<div class="wrap-col">
						<h3 class="under">Welcome</h3>
						
                        <div class="loginform">
                            
                        
                        <div  class="wrapper">

                            <table style="border-color: #346400; width: 100%; height:300px;">
                                <tr>
                                    <td style="width:30%;">&nbsp;</td>
                                    <td style="padding: 10px; border: thin solid #315E01; width:40%;"> 
                                        <div  class="wrapper1">	
                                            <h1 style="position:absolute; left:50%;">LOGIN</h1>					
                                        </div>
                                        <div  class="wrapper">
						                <asp:Label ID="emailNameLabel2" runat="server" Text="Email" Width="80px"></asp:Label>
                                        <asp:TextBox ID="loginEmail" runat="server" Width="250px" class="input" ValidateRequestMode="Enabled" TextMode="Email" BorderColor="#00CC00" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
                                        </div>
                                        <div  class="wrapper">
						                
                                        <asp:Label ID="Label2" runat="server" Width="80px" Visible="True"></asp:Label>
                                        </div>
                                        <div  class="wrapper">
						                
                                        <asp:Label ID="passwordLabel1" runat="server" Text="Password" Width="80px"></asp:Label>
                                        <asp:TextBox ID="pwdTxtBox1" runat="server" Width="250px" CssClass="input" ValidateRequestMode="Enabled" TextMode="Password" BorderColor="#00CC00" BorderStyle="Solid" BorderWidth="2px"></asp:TextBox>
                                        </div>
                                        <div  class="wrapper">
						                <asp:Label ID="Label1" runat="server" Width="80px" Visible="True"></asp:Label>
                                        <asp:TextBox ID="TextBox1" runat="server" Width="276px" CssClass="input" ValidateRequestMode="Enabled" TextMode="Password" Visible="False"></asp:TextBox>
                                        </div>
                                        <div  class="wrapper">
						                <div  class="wrapper" style="text-align: center;" >
                                            <asp:Button ID="loginButton1" runat="server" Text="LOGIN" BackColor="#33CC33" OnClick="userLogin" />
                                        </div>                                        
                                        </div>
                                    </td>
                                    <td style="width:30%;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <div  class="wrapper">
						                <div  class="wrapper" >
                                            <asp:Label ID="Label3" runat="server" Text="I dont have an account, click REGISTER"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="regBtn" runat="server" Text="REGISTER" BackColor="#33CC33" OnClick="regBtn_Click"  />
                                        </div>                                        
                                        </div>
                                     </td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                        
                   </div>
                            
					</div>
					</section>                    
				</div>
                    </asp:Panel>
                    </form>
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
			</footer>
		</div>
<script type="text/javascript"> Cufon.now(); </script>
<script>
    $(document).ready(function () {
        tabs.init();
    })
</script>
</body>
</html>