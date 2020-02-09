<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dasboard.aspx.cs" Inherits="ProfitPlusWeb.Account.Dasboard" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Register</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="../css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="../css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all">
<link rel="stylesheet" href="../css/zerogrid.css">
<link rel="stylesheet" href="../css/responsive.css">
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
						<li id="nav5" class="active"><a href="Register.html">Register</a></li>
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
						<h2 class="under">Registration Form </h2>
						<form id="ContactForm" method="post">
						<div>
							<div  class="wrapper">
								<span>Your Name:</span>
								<input type="text" class="input" >
							</div>
							<div  class="wrapper">
								<span>Your City:</span>
								<input type="text" class="input" >
							</div>
							<div  class="wrapper">
								<span>Your E-mail:</span>
								<input type="text" class="input" >
							</div>
							<div  class="textarea_box">
								<span>Your Message:</span>&nbsp;
							</div>
							<a href="#" onClick="document.getElementById('ContactForm').submit()">Send</a>
							<a href="#" onClick="document.getElementById('ContactForm').reset()">Clear</a>
						</div>
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
			</footer>
<!-- footer end -->
		</div>
<script type="text/javascript"> Cufon.now(); </script>
<script>
    $(document).ready(function () {
        tabs.init();
    })
</script>
</body>
</html>