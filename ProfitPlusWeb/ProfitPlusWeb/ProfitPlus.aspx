<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfitPlus.aspx.cs" Inherits="ProfitPlusWeb.ProfitPlus" %>

<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>DASHBOARD</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="../css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="../css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="../css/zerogrid.css">
<link rel="stylesheet" href="../css/responsive.css">
<link rel="icon" href="/profitplusicon.png">
<script type="text/javascript" src="../js/jquery-1.6.js" ></script>
<script type="text/javascript" src="../js/cufon-yui.js"></script>
<script type="text/javascript" src="../js/cufon-replace.js"></script>
<script type="text/javascript" src="../js/Swis721_Cn_BT_400.font.js"></script>
<script type="text/javascript" src="../js/Swis721_Cn_BT_700.font.js"></script>
<script type="text/javascript" src="../js/tabs.js"></script>
<script src="../js/css3-mediaqueries.js"></script>

<script src="js/jquery.plugin.min.js"></script>
<script src="js/jquery.countdown.js"></script>
<style>
.Myalert {  padding: 20px;background-color: #f44336; color: white; width:100%;
}

.closebtn1 {
    margin-left: 15px; color: white; font-weight: bold; float: right; font-size: 22px; line-height: 20px; cursor: pointer; transition: 0.3s;}

.closebtn1:hover {
    color: black;
}
</style>
<%--<script>
    $(function () {
        var austDay = new Date();
        austDay = new Date(austDay.getFullYear() + 1, 1 - 1, 26);
        $('#defaultCountdown').countdown({ until: austDay });
        $('#year').text(austDay.getFullYear());
    });

    $(selector).countdown({ until: liftoffTime });
    $(selector).countdown({ until: liftoffTime, format: 'dHM' });
</script>--%>
   
<!--[if lt IE 9]>
  	<script type="text/javascript" src="js/html5.js"></script>
	<style type="text/css">
		.bg{ behavior: url(js/PIE.htc); }
	    .auto-style3 {
            width: 119px;
        }
	    .input {}
	    .auto-style4 {
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
                <article class="content">
                <form id="Form1" runat="server">
                    <asp:Panel ID="DashboardPanel" runat="server">
                    <div class="wrap-col">
                        <br />
						<h3><asp:Label ID="Label6" runat="server" Text="Welcome," Width="113px"></asp:Label><asp:Label ID="Label3" runat="server" Width="272px"></asp:Label> <asp:Label ID="globalId1" runat="server" Text="" Visible="False" Width="198px"></asp:Label><asp:Label ID="globalId2" runat="server" Text="" Visible="False" Width="198px"></asp:Label> </h3>						
					</div>
                        <div class="Myalert" style="padding: 20px;background-color: #f44336; color: white; width:100%;">
                          <span class="closebtn1"  onclick="this.parentElement.style.display='none';" style=" margin-left: 15px; color: white; font-weight: bold; float: right; font-size: 22px; line-height: 20px; cursor: pointer; transition: 0.3s;" >&times;</span> 
                          <strong>NOTICE!</strong> Please send an email notification to <strong>admin@profitplusng.com</strong> in the event your incomming donors refuse to make their donations.
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
                            <br />
                            <table style="width: 100%;">
                                <tr><td></td><td></td></tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="userNameLbl" runat="server" Text="Name:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="userNameLbl1" runat="server" CssClass="input" Width="100%"></asp:Label>
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="emailLbl" runat="server" Text="Email:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="emailLbl1" runat="server" CssClass="input" Width="100%" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="phoneLbl" runat="server" Text="Phone 1:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="phoneLbl1" runat="server" CssClass="input" Width="100%" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                 <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="phone2Lbl" runat="server" Text="Phone 2:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="phone2Lbl1" Width="100%" runat="server" CssClass="input" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                 <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="bankLbl" runat="server" Text="Bank Name:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="bankLbl1" Width="100%" runat="server" CssClass="input" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                 <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="accNoLbl" runat="server" Text="Account Number:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="accNoLbl1" runat="server" Width="100%" CssClass="input" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                 <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="packageLbl" runat="server" Text="Package:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="packageLbl1" CssClass="input" Width="100%" runat="server" Text=""></asp:Label>
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td class="auto-style4">
                                    </td>
                                    <td>
                                        <asp:Label ID="pkgHolder" runat="server" Visible="False"></asp:Label>
                                    </td>                                    
                                </tr>
                                <tr>
                                    <td class="auto-style3" colspan="2" >
                                        <br />
                                        <asp:Button ID="recycleButton" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server" Text="CHANGE PACKAGE OR RECYCLE"/>
                                    </td>                             
                                </tr>
                                <tr>
                                    <td class="auto-style4">

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
                            <asp:Label ID="outEmail" runat="server" Width="28%" style="text-align: center;" Visible="False" ></asp:Label><asp:Label ID="Label27" runat="server" Width="26%" style="text-align: center;" Visible="False" ></asp:Label><br />
                            <table style="border-style: inset; border-color: #99FF99; width: 100%; text-align: left;">
                                <tr>
                                    <td colspan="2">
                                        <%--<div id="defaultCountdown"></div>--%>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4"><asp:Label ID="Label9" runat="server" Text="Name:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="outName" CssClass="input" runat="server" Text="" Width="95%"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style4"><asp:Label ID="Label13" runat="server" Text="Bank:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="outBank" runat="server" CssClass="input" Text="" Width="95%"></asp:Label>
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td class="auto-style4"><asp:Label ID="Label15" runat="server" Text="Account No:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="outAccNo" runat="server" CssClass="input" Text="" Width="95%"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style4"><asp:Label ID="Label16"  runat="server" Text="Phone:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="outPhone1" runat="server" CssClass="input" Text="" Width="95%"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style4"><asp:Label ID="Label17" runat="server" Text="Alt Phone:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="outPhone2" runat="server" CssClass="input" Text="" Width="95%"></asp:Label>
                                    </td>
                                   
                                </tr>
                                <tr>
                                    <td class="auto-style4"><asp:Label ID="Label18" runat="server" Text="package:"></asp:Label></td>
                                    <td>

                                        <asp:Label ID="outPackage" runat="server" CssClass="input" Text="" Width="95%"></asp:Label>

                                    </td>
                                </tr>
                            </table>
                                        <asp:Label ID="confPmt" runat="server" ForeColor="#33CC33" Visible="True"></asp:Label>
                                        <br />
                            <asp:Button ID="outButton" runat="server" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" OnClick="outButton_Click" Text="I have made payment" />
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
                                    <br />
                                    <table style="margin: 2px; border-style: inset; border-color: #99FF99; width: 100%; text-align: left;">
                                        <tr style="height: 30px">
                                            <td class="auto-style3">
                                                <asp:Label ID="Label1" runat="server" Text="Transaction type:"  ></asp:Label>
                                            </td>
                                            <td>
                                                <asp:DropDownList CssClass="input" ID="DropDownList1" Width="95%" runat="server" >
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

                                                <asp:TextBox  ID="depName" runat="server" Width="95%" CssClass="input"></asp:TextBox>

                                            </td>
                                        </tr>
                                        <tr style="height: 30px">
                                            <td class="auto-style3">
                                                <asp:Label ID="Label5" runat="server"  Text="Receiver's Name:" ></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="recName" runat="server" Width="95%" CssClass="input"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 30px">
                                            <td class="auto-style3">
                                                <asp:Label ID="Label11" runat="server"  Text="Teller/Ref Number:" ></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="tellNo" runat="server" Width="95%" CssClass="input"></asp:TextBox>
                                            </td>
                                        </tr>
                                         <tr style="height: 30px">
                                            <td class="auto-style3">
                                                <asp:Label ID="Label12" runat="server"  Text="Reference Code:" ></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="refCode" runat="server" Width="95%" CssClass="input"></asp:TextBox>
                                             </td>
                                        </tr>
                                    </table>
                                    <asp:FileUpload ID="pmtImageUpload"  Width="100%" runat="server" CssClass="input" />
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
							<asp:Label ID="incEmail1" runat="server" Width="16%" style="text-align: center;" Visible="False"></asp:Label><asp:Label ID="Label31" runat="server" Width="15%" style="text-align: center;" Visible="False"></asp:Label><asp:Label ID="Label28" runat="server" Width="16%" style="text-align: center;" Visible="False"></asp:Label><br />
                            <table style="width: 100%; text-align: left;">
                                <tr>
                                    <td><asp:Label ID="Label19" runat="server" Text="Name:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="incName" runat="server" style="text-align:left;" Text="" Width="100%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label20" runat="server" Text="Phone:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="IncPhone1" runat="server" style="text-align: left;" Text="" Width="100%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label21" runat="server" Text="Alt Phone:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="IncPhone2" runat="server" style="text-align: left;" Text="" Width="100%"></asp:Label>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td><asp:Label ID="Label22" runat="server" Text="Package:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="incPackage" runat="server" style="text-align: left;" Text="" Width="100%"></asp:Label>
                                     </td>
                                 </tr>
                                
                            </table>
                             
                            <asp:Label ID="incDisplay1" runat="server" Text="" Width="100%" ForeColor="#33CC33" style="text-align: center;"></asp:Label><br />
                            <asp:Button ID="confirmButton1" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server" Text="View and Confirm" OnClick="confirmButton1_Click" /><br />
                            <asp:Button ID="purgeButton1" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server" Text="PURGE" OnClick="purgeButton1_Click" Visible="False" />
                            <asp:Label ID="Label7" runat="server" Width="100%" style="text-align: center;" ForeColor="#33CC33"></asp:Label><br />
                            <asp:Panel ID="imagePanel1" runat="server" Height="270px" BackColor="#99FF99">
                                <asp:Image ID="Image1" runat="server" Height="240px" Width="270px" /><br />
                                <asp:Button ID="Button2" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server" Text="Confirm Payment" OnClick="Button2_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server"  Text="Report" />
                            </asp:Panel>
						</div>
					</div>
					</section>
                    <section class="col-1-3">
					<div class="wrap-col">
						<div class="wrapper pad_bot2"  style="text-align: center;">
							
                            <h3 style="border-bottom: thin solid #009933; text-align:center; vertical-align: middle; height: 14px;">Incomming Payment</h3>
							<asp:Label ID="inc2Email" runat="server" Width="15%" style="text-align: center;" Visible="False"></asp:Label><asp:Label ID="Label30" runat="server" Width="15%" style="text-align: center;" Visible="False"></asp:Label><asp:Label ID="Label29" runat="server" Width="15%" style="text-align: center;" Visible="False"></asp:Label><br />
                            <table style="width: 100%; text-align: left;">
                                <tr>
                                    <td><asp:Label ID="Label23" runat="server" style="text-align:left;" Text="Name:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="inc2Name" runat="server" style="text-align: left;" Text="" Width="100%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td><asp:Label ID="Label24" runat="server" Text="Phone:"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="Inc2Phone1" runat="server" style="text-align: left;" Text="" Width="100%"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text="Alt Phone:"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Inc2Phone2" runat="server" style="text-align: left;" Text="" Width="100%"></asp:Label>
                                    </td>
                                 </tr>
                                 <tr>
                                    <td>
                                        <asp:Label ID="Label26" runat="server" Text="Package:"></asp:Label>
                                     </td>
                                    <td>
                                        <asp:Label ID="inc2Package" runat="server" style="text-align: left;" Text="" Width="100%"></asp:Label>
                                     </td>
                                 </tr>
                                </table>
                                    <asp:Label ID="incDisplay2" runat="server" ForeColor="#33CC33" style="text-align: center;" Text="" Width="100%"></asp:Label>
                                    <br />
                                    <asp:Button ID="confirmButton2" runat="server" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" Text="View and Confirm" OnClick="confirmButton2_Click" /><br />
                                    <asp:Button ID="purgeButton2" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" runat="server" Text="PURGE" OnClick="purgeButton2_Click" Visible="False"/>
                                    <asp:Label ID="Label8" runat="server" ForeColor="#33CC33" style="text-align: center;" Width="100%"></asp:Label>
                                    <br />
                                    <asp:Panel ID="imagePanel2" runat="server" BackColor="#99FF99" Height="270px">
                                        <asp:Image ID="Image2" runat="server" Height="240px" Width="270px" />
                                        <br />
                                        <asp:Button ID="Button3" runat="server" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" Text="Confirm Payment" OnClick="Button3_Click" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button5" runat="server" BackColor="#00CC00" BorderColor="#33CC33" BorderStyle="Outset" Text="Report" />
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
                                     <td colspan="2">
                                         <!--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please select a package" ControlToValidate="packageDrpDwn"></asp:RegularExpressionValidator>-->
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
             </footer>
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
