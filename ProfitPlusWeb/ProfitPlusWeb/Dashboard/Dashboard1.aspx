<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard1.aspx.cs" Inherits="ProfitPlusWeb.Dashboard.Dashboard1" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>DASHBOARD</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="../css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="../css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="../css/zerogrid.css">
<link rel="stylesheet" href="../css/responsive.css">
<script type="text/javascript" src="../js/jquery-1.6.js" ></script>
<script type="text/javascript" src="../js/cufon-yui.js"></script>
<script type="text/javascript" src="../js/cufon-replace.js"></script>
<script type="text/javascript" src="../js/Swis721_Cn_BT_400.font.js"></script>
<script type="text/javascript" src="../js/Swis721_Cn_BT_700.font.js"></script>
<script type="text/javascript" src="../js/tabs.js"></script>
<script src="../js/css3-mediaqueries.js"></script>
<!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
	<style type="text/css">
		.bg{ behavior: url(js/PIE.htc); }
	    .auto-style3 {
            width: 119px;
        }
	    .input {}
	    .auto-style4 {
            width: 115px;
        }
	    .auto-style5 {
            width: 111px;
        }
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
				<h1><a href="index.html" id="logo"><img src="../images/logo.png" /></a></h1>
				<nav>
                    <ul id="menu">
						<li id="nav1"><a href="/index.html">LOGOUT</a></li>
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
                <form id="Form1" runat="server">
                <asp:Panel ID="DashboardPanel" runat="server">
                    <div class="wrap-col">
                        <br />
						<h3><asp:Label ID="Label6" runat="server" Text="Welcome," Width="113px"></asp:Label><asp:Label ID="Label3" runat="server" Width="272px"></asp:Label> <asp:Label ID="globalId1" runat="server" Text="" Visible="False" Width="198px"></asp:Label><asp:Label ID="globalId2" runat="server" Text="" Visible="False" Width="198px"></asp:Label> </h3>						
					</div>
                    <div class="wrapper">

                        <section class="col-1-3">
					<div class="wrap-col">
						<div class="wrapper pad_bot2" style="border: thin solid #009900; background-color: #CCCCCC">
							<h3 style="border-bottom: thin solid #009933; text-align:center; vertical-align: middle; height: 14px; width: 270px;">TOTAL PAID</h3>
							<h4 style="text-align:center">N
                        <asp:Label ID="totalPaid1" runat="server" Text="0"></asp:Label>
                        </h4>								
						</div>
					</div>
					</section>
					<section class="col-1-3">
					<div class="wrap-col">
						<div class="wrapper pad_bot2" style="border: thin solid #009900; background-color: #CCCCCC">
							<h3 style="border-bottom: thin solid #009933; text-align:center; vertical-align: middle; height: 14px; width: 270px;">TOTAL RECEIVED</h3>
							<h4 style="text-align:center">N
                                <asp:Label ID="totalRec1" runat="server" Text="0"></asp:Label>
                            </h4>
						</div>
					</div>
					</section>
					<section class="col-1-3">
					<div class="wrap-col">
						<div class="wrapper pad_bot2" style="border: thin solid #009900; background-color: #CCCCCC">
							<h3 style="border-bottom: thin solid #009933; text-align:center; vertical-align: middle; height: 14px; width: 270px;">CYCLES MADE</h3>
							<h4 style="text-align:center">
                                <asp:Label ID="cycleMade1" runat="server" Text="0"></asp:Label>
                            </h4>
						</div>
					</div>
					</section>
                    <asp:Panel ID="userDetailsPanel" runat="server">
                    <div class="wrapper">
					<section class="col-1-3">
					<div class="wrap-col">
						<div class="wrapper pad_bot2">
							<h3 ID="H3" style="border-bottom: thin solid #009933; text-align:center; vertical-align: middle; height: 14px;" >My Details</h3>
                            <table style="width: 100%;">
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="userNameLbl" runat="server" Text="Name:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="userNameLbl1" runat="server" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="emailLbl" runat="server" Text="Email:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="emailLbl1" runat="server" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="phoneLbl" runat="server" Text="Phone 1:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="phoneLbl1" runat="server" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                 <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="phone2Lbl" runat="server" Text="Phone 2:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="phone2Lbl1" runat="server" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                 <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="bankLbl" runat="server" Text="Bank Name:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="bankLbl1" runat="server" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                 <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="accNoLbl" runat="server" Text="Account Number:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="accNoLbl1" runat="server" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                 <tr>
                                    <td class="auto-style3">
                                        <asp:Label ID="packageLbl" runat="server" Text="Package:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="packageLbl1" runat="server" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                    </td>
                                    <td>
                                        <asp:Label ID="pkgHolder" runat="server" Visible="False"></asp:Label>
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td class="auto-style3" colspan="2" >
                                        <br />
                                        <asp:Button ID="recycleButton" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server" Text="CHANGE PACKAGE OR RECYCLE" OnClick="recycleButton_Click"/>
                                    </td>                             
                                </tr>
                                <tr>
                                    <td class="auto-style3">

                                    </td>
                                     <td class="auto-style3">

                                     </td>                        
                                </tr>
                            </table>					
						</div>						
					</div>
					</section>

                    <asp:Panel ID="outgoingPanel" runat="server">
                    <asp:Panel ID="madePmtPanel" runat="server">
					<section class="col-1-3">
					<div class="wrap-col">
						<div class="wrapper pad_bot2" style="text-align: center;">
							<h3 style="border-bottom: thin solid #009933; text-align:center; vertical-align: middle; height: 14px;">Outgoing Payment</h3>
                            <asp:Label ID="outEmail" runat="server" Width="100%" style="text-align: center;" Visible="False" ></asp:Label><br />
                            <table style="width: 100%; text-align: left;">
                                <tr>
                                    <td class="auto-style5"><asp:Label ID="Label9" runat="server" Text="Name:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="outName" runat="server" Text="" Width="100%"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style5"><asp:Label ID="Label13" runat="server" Text="Bank:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="outBank" runat="server"  Text="" Width="100%"></asp:Label>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td class="auto-style5"><asp:Label ID="Label15" runat="server" Text="Account No:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="outAccNo" runat="server"  Text="" Width="100%"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style5"><asp:Label ID="Label16" runat="server" Text="Phone:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="outPhone1" runat="server" Text="" Width="100%"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style5"><asp:Label ID="Label17" runat="server" Text="Alt Phone:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="outPhone2" runat="server"  Text="" Width="100%"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style5"><asp:Label ID="Label18" runat="server" Text="package:"></asp:Label></td>
                                    <td>

                                        <asp:Label ID="outPackage" runat="server"  Text="" Width="100%"></asp:Label>

                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style5">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="confPmt" runat="server" ForeColor="#33CC33" Visible="True"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    
                                    <td colspan="2">
                                        <asp:Button ID="outButton" runat="server" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" OnClick="outButton_Click" Text="I have made payment" />
                                    </td>
                                   
                                </tr>
                            </table>
                             <asp:Label ID="Label4" runat="server" Width="100%" style="text-align: center;" Visible="False"></asp:Label><br />
                         </div>						
					</div>
					</section>
                    </asp:Panel>
                    <asp:Panel ID="confPmtPanel" runat="server">
                    <section class="col-1-3">
					<div class="wrap-col">
						<div class="wrapper pad_bot2" style="text-align: center;">
							<h3 style="border-bottom: thin solid #009933; text-align:center; vertical-align: middle; height: 14px;">Upload Receipt</h3>
                            <table style="width: 100%; text-align: left;">
                                <tr style="height: 30px">
                                    <td class="auto-style3">
                                        <asp:Label ID="Label1" runat="server" Text="Transaction type:"  ></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList CssClass="input" ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                                            <asp:ListItem>Select an option</asp:ListItem>
                                            <asp:ListItem Value="1">Bank Payment</asp:ListItem>
                                            <asp:ListItem Value="2">Mobile Transfer</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    
                                </tr >
                                <tr style="height: 30px">
                                    <td class="auto-style3">
                                        <asp:Label ID="Label2" runat="server"  Text="Depositor's Name:" ></asp:Label>
                                    </td>
                                    <td>

                                        <asp:TextBox  ID="depName" runat="server" CssClass="input"></asp:TextBox>

                                    </td>
                                </tr>
                                <tr style="height: 30px">
                                    <td class="auto-style3">
                                        <asp:Label ID="Label5" runat="server"  Text="Receiver's Name:" ></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="recName" runat="server" CssClass="input"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="height: 30px">
                                    <td class="auto-style3">
                                        <asp:Label ID="Label11" runat="server"  Text="Teller Number:" ></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="tellNo" runat="server" CssClass="input"></asp:TextBox>
                                    </td>
                                </tr>
                                 <tr style="height: 30px">
                                    <td class="auto-style3">
                                        <asp:Label ID="Label12" runat="server"  Text="Reference Code:" ></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="refCode" runat="server" CssClass="input"></asp:TextBox>
                                     </td>
                                </tr>
                            </table>
                            <asp:FileUpload ID="pmtImageUpload" runat="server" CssClass="input" />
                            <br />
                            <asp:Button ID="Button1" runat="server" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" Text="Upload Receipt" OnClick="Button1_Click" /><br />
                            <asp:Label ID="Label10" runat="server" ForeColor="#33CC33" Visible="False"></asp:Label>
						</div>						
					</div>
					</section>
                    </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="incommingPanel" runat="server">
					<section class="col-1-3">
					<div class="wrap-col">
                        <div class="wrapper pad_bot2"  style="text-align: center;">
					        
                             <h3 style="border-bottom: thin solid #009933; text-align:center; vertical-align: middle; height: 14px;">Incomming Payment</h3>
							<asp:Label ID="incEmail1" runat="server" Text="" Width="100%" style="text-align: center;" Visible="False"></asp:Label><br />
                            <asp:Label ID="incName" runat="server" Text="" Width="100%" style="text-align: center;" ></asp:Label><br />
                            <asp:Label ID="IncPhone1" runat="server" Text="" Width="100%" style="text-align: center;"></asp:Label><br />
                            <asp:Label ID="IncPhone2" runat="server" Text="" Width="100%" style="text-align: center;"></asp:Label><br />
                            <asp:Label ID="incPackage" runat="server" Text="" Width="100%" style="text-align: center;"></asp:Label><br />
                            <asp:Label ID="incDisplay1" runat="server" Text="" Width="100%" ForeColor="#33CC33" style="text-align: center;"></asp:Label><br />
                            <asp:Button ID="confirmButton1" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server" Text="View and Confirm" OnClick="confirmButton1_Click" />
                            <asp:Label ID="Label7" runat="server" Width="100%" style="text-align: center;" ForeColor="#33CC33"></asp:Label><br />
                            <asp:Panel ID="imagePanel1" runat="server" Height="270px" BackColor="#99FF99">
                                <asp:Image ID="Image1" runat="server" Height="240px" Width="270px" /><br />
                                <asp:Button ID="Button2" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server" Text="Confirm Payment" OnClick="Button2_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server" OnClick="Button2_Click" Text="Report" />
                            </asp:Panel>
						</div>
					</div>
					</section>
                    <section class="col-1-3">
					<div class="wrap-col">
						<div class="wrapper pad_bot2"  style="text-align: center;">
                            
                            <h3 style="border-bottom: thin solid #009933; text-align:center; vertical-align: middle; height: 14px;">Incomming Payment</h3>
							<asp:Label ID="inc2Email" runat="server" Text="" Width="100%" style="text-align: center;" Visible="False"></asp:Label><br />
                            <asp:Label ID="inc2Name" runat="server" Text="" Width="100%" style="text-align: center;" ></asp:Label><br />
                            <asp:Label ID="Inc2Phone1" runat="server" Text="" Width="100%" style="text-align: center;"></asp:Label><br />
                            <asp:Label ID="Inc2Phone2" runat="server" Text="" Width="100%" style="text-align: center;"></asp:Label><br />
                            <asp:Label ID="inc2Package" runat="server" Text="" Width="100%" style="text-align: center;"></asp:Label><br />
                            <asp:Label ID="incDisplay2" runat="server" Text="" Width="100%" ForeColor="#33CC33" style="text-align: center;"></asp:Label><br />
                             <asp:Button ID="confirmButton2" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server" Text="View and Confirm" OnClick="confirmButton2_Click" />
                            <asp:Label ID="Label8" runat="server" Width="100%" style="text-align: center;" ForeColor="#33CC33"></asp:Label><br />							
                            <asp:Panel ID="imagePanel2" runat="server" Height="270px" BackColor="#99FF99">
                                <asp:Image ID="Image2" runat="server" Height="240px" Width="270px" /><br />
                                <asp:Button ID="Button3" runat="server" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" Text="Confirm Payment" OnClick="Button3_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button5" runat="server" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" OnClick="Button2_Click" Text="Report" />
                            </asp:Panel>
						
                         </div>
					</div>
					</section>
                    </asp:Panel>
                    <asp:Panel ID="changePackagePanel" runat="server">
                    <section class="col-1-3">
					<div class="wrap-col">
                        <div class="wrapper pad_bot2"  style="text-align: center;">
                             <h3 style="border-bottom: thin solid #009933; text-align:center; vertical-align: middle; height: 14px;">Change Package</h3>
							 <table style="width: 100%;">
                                <tr>
                                    <td class="auto-style3">
                                       
                                    </td>
                                    <td>
                                        <br />
                                    </td>                                    
                                </tr>
                                <tr style="height: 30px">
                                    <td class="auto-style3">
                                        <asp:Label ID="Label14" runat="server" Text="Package:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="packageDrpDwn" runat="server" Height="24px" Width="214px" CssClass="input">
                                        <asp:ListItem Value="10000">Starter Package</asp:ListItem>
                                        <asp:ListItem Value="20000">Basic Package</asp:ListItem>
                                        <asp:ListItem Value="50000">Relief Package</asp:ListItem>
                                        <asp:ListItem Value="100000">Bronze Pakage</asp:ListItem>
                                    </asp:DropDownList>
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td class="auto-style3" colspan="2" style="vertical-align: middle; text-align: center">
                                        <br />
                                        <asp:Button ID="updateButton" runat="server" Text="UPDATE" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" OnClick="updateButton_Click" />
                                        </td>
                                </tr>
                            </table>
						</div>
					</div>
					</section>
                    </asp:Panel>
				    </div>
                    </asp:Panel>
				</div>
                </asp:Panel>
                </form>
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
			>
<script type="text/javascript"> Cufon.now();

</script>
<script>
    $(document).ready(function () {
        tabs.init();
    })
</script>
</body>
</html>