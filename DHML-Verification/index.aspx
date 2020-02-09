<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Login</title>
    <link href="css/login-box.css" rel="stylesheet" type="text/css" />
</head>
<body id="login-body">
    <form id="form1" runat="server">
        <div>
            <div style="padding: 100px 0 0 250px;">
                <div id="login-box">
                    <h2>Login</h2>
                    <br />
                    <div id="login-box-name" style="margin-top:20px;">
                        Username:
                    </div>
                    <div id="login-box-field" style="margin-top:20px;">
                        <asp:TextBox ID="txtLoginUsername" runat="server" CssClass="form-login"></asp:TextBox>
                    </div>
                    <div id="login-box-name1">
                        Password:
                    </div>
                    <div id="login-box-field1">
                        <asp:TextBox ID="txtLoginPassword" runat="server" CssClass="form-login" TextMode="Password"></asp:TextBox>
                    </div>
                    <br />
                    <span class="login-box-options">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" /> &nbsp;&nbsp;&nbsp; <asp:LinkButton ID="LinkButton1" runat="server">Forgot Passowrd?</asp:LinkButton>

                    </span>
                    <br />
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <a href="#"><asp:Button ID="LoginButton" runat="server" Text="." BorderStyle="None" Height="42px" Width="103px" OnClick="LoginButton_Click" /><%--<img src="images/login-btn.png" width="103" height="42" style="margin-left:90px;" />--%></a>
                 </div>
            </div>
        </div>
        <div id="sitelock_shield_logo" class="fixed_btm" style="bottom:0;position:fixed;_position:absolute;right:0;"><a href="https://www.sitelock.com/verify.php?site=dhml-nhisregistration.org.ng" onclick="window.open('https://www.sitelock.com/verify.php?site=dhml-nhisregistration.org.ng','SiteLock','width=600,height=600,left=160,top=170');return false;" ><img alt="PCI Compliance and Malware Removal" title="SiteLock"  src="//shield.sitelock.com/shield/dhml-nhisregistration.org.ng"/></a></div>
    </form>
</body>
</html>
