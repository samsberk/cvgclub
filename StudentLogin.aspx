<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentLogin.aspx.cs" Inherits="StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CVGClub | Student Login | SCRIET CVG Club</title>
	<meta name="google-site-verification" content="14WxE_r0dxgHMhJIoxiODhdgq9mPksFOXFzJOn7kYGo" />
	<meta name="theme-color" content="#000000" />
	<meta name="msApplication-navbutton-color" content="#000000" />
	<meta name="apple-mobile-web-app-status-bar-style" content="#000000" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="CVG Club, cvg club, cvgclub, scriet cvgclub, scrietcvgclub, scriet, cvg, club, scriet event web site, scriet student union" />
	<link id="Link1" runat="server" rel="Shortcut Icon" href="Images/Other/fi.png" type="image/x-icon"/>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
	<link href="CSS/CSS.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="JS/MyJS.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Karma|Muli|Yantramanav|Kalam|Pacifico|Quicksand|Sedgwick+Ave|Gloria+Hallelujah|Special+Elite|Finger+Paint" rel="stylesheet"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
	<!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-122943421-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'UA-122943421-1');
    </script>
	<link href="CSS/hover.css" rel="stylesheet" />
	<script src="JS/Chart.bundle.js"></script>
	<script src="JS/Chart.js"></script>
	<script src="JS/particles.js"></script>
	<script src="JS/jquery-ui-tltp.js"></script>
	<link href="CSS/jquery-ui.css" rel="stylesheet" />
	<link href="CSS/jquery-ui.structure.css" rel="stylesheet" />
	<link href="CSS/jquery-ui.theme.css" rel="stylesheet" />
	<style type="text/css">
		.box-1{
			width:30vw;
		}
		@media screen and (max-width:768px){
			.box-1{
				width:90vw;
			}
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <!----------------------------------------------------- Loader --------------------------------------------------------->
        <div id="loader">
			<div class="row loader-footer">
				<div class="col-sm-6 text-center"><span class="link stop-loading" style="cursor:alias;">STOP LOADING <i class="fa fa-hand-paper-o"></i></span></div>
				<div class="col-sm-6 text-center"><span>Designed with <i class="fa fa-heartbeat"></i> By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link">samsberk</a></span></div>
			</div>
        </div>
        <div class="after-click">
			<div class="row loader-footer">
				<div class="col-sm-6 text-center"><span class="link stop-loading" style="cursor:alias;">STOP LOADING <i class="fa fa-hand-paper-o"></i></span></div>
				<div class="col-sm-6 text-center"><span>Designed with <i class="fa fa-heartbeat"></i> By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link">samsberk</a></span></div>
			</div>
        </div>
		<!----------------------------------------------------- Menu --------------------------------------------------------->
		<div class="menu-bar">
			<i class="fa fa-bars menu-button link" data-toggle="tooltip" data-placement="bottom" title="Show Menu"></i>
		</div>
		<div class="menu-box w3-animate-zoom">
			<div class="menu-bar">
				<i class="fa fa-close menu-button-close" data-toggle="tooltip" data-placement="bottom" title="Close Menu"></i>
			</div>
			<a href="Home" class="link click-on hvr-underline-from-center"><i class="fa fa-home"></i> HOME</a><br />
			<a href="Events" class="link click-on hvr-underline-from-center" style="font-family:'Special Elite';">CONVERGENCE'19<sup><img src="Images/Other/New.gif" /></sup></a><br />
			<a href="Our_Alumni" class="link click-on hvr-underline-from-center"><i class="fa fa-diamond"></i> ALUMNI</a><br />
			<a href="Sign_Up" class="link click-on hvr-underline-from-center"><i class="fa fa-user-plus"></i> SIGN-UP</a><br />
			<a href="Student_Login" class="link click-on hvr-underline-from-center"><i class="fa fa-sign-in"></i> LOG-IN</a><br />
			<a href="Query" class="link click-on hvr-underline-from-center"><i class="fa fa-question"></i> QUERY</a><br />
			<a href="Startups_of_SCRIETians" class="link click-on hvr-underline-from-center"><i class="fa fa-rocket"></i> STARTUPS</a><br />
			<a href="Contact_Us" class="link click-on hvr-underline-from-center"><i class="fa fa-mobile"></i> CONTACT</a><br />
		</div>
		<!----------------------------------------------------- body --------------------------------------------------------->
		<div id="p-nasa">
			<div class="box-1 text-center" style="border:1px solid skyblue;padding:25px;">
				<h4 style="font-family:'Special Elite'"><i class="fa fa-sign-in"></i> Log-In with</h4><br />
				<div class="input-effect text-left">
        			<asp:TextBox runat="server" ID="emailtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
					<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
					<span class="focus-border"></span>
				</div>
				<div class="input-effect text-left">
        			<asp:TextBox runat="server" ID="passtxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
					<label><i class="fa fa-key"></i> Enter Password</label>
					<span class="focus-border"></span>
				</div>
				<asp:Button runat="server" ID="loginbtn" CssClass="btn btn-default click-on"  Text="LOG IN" OnClick="loginbtn_Click"/><br />
				<br /><a href="Sign_Up" style="font-family:'Special Elite';font-size:17px;" class="link click-on" data-toggle="tooltip" data-placement="top" title="New Registration">Create an Account</a>
				<br /><a href="Forgot_Password" style="font-family:'Special Elite';font-size:17px;" class="link click-on" data-toggle="tooltip" data-placement="top" title="Reset Your Password">Forgot Password</a>
			</div>
		</div>
		<!----------------------------------------------------- Informer and alert box ------------------------------------------------------------>
		<asp:Label runat="server" ID="informer"></asp:Label>
		<asp:Label runat="server" ID="show" style="display:none;"></asp:Label>
		<div class="alert-box w3-animate-zoom">
			<div class="alert-dialog">
				<span style="font-family:'Special Elite';font-size:20px;"><i class="fa fa-bullhorn"></i>&ensp;IMPORTANT ALERT</span><hr />
				<asp:Label runat="server" ID="alerttext">
					
				</asp:Label>
				<hr /><button id="alert-close-btn" type="button" class="btn btn-default">Done</button>
			</div>
		</div>
    </form>
	<script src="JS/MyFooterJS.js"></script>
	<script src="JS/myParticles.js"></script>
	<script type="text/javascript">
		if ($("#informer").text() == "QueryNotSubmitted") {
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "InvalidUserIDorPassword") {
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "PasswordReseted") {
			$(".alert-box").show();
		}

		$("#loginbtn").attr("disabled", true);
		var uid = document.getElementById("emailtxt");
		var pas = document.getElementById("passtxt");
		$("#passtxt").focus(function () {
			if (uid.value == "") {
				pas.blur();
				$("#alerttext").text("Please enter Email ID first.");
				$(".alert-box").show();
			}
			else {
				$("#loginbtn").attr("disabled", false);
			}
		});
		$("#loginbtn").click(function () {
			if (pas.value == "") {
				$(".after-click").hide();
				$("#alerttext").text("Please enter Password first.");
				$(".alert-box").show();
				$("#loginbtn").attr("disabled", true);
			}
		});
	</script>
</body>
</html>
