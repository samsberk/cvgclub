<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Query.aspx.cs" Inherits="Query" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CVGClub | Query | SCRIET CVG Club</title>
	<meta name="google-site-verification" content="14WxE_r0dxgHMhJIoxiODhdgq9mPksFOXFzJOn7kYGo" />
	<meta name="theme-color" content="#000000" />
	<meta name="msApplication-navbutton-color" content="#000000" />
	<meta name="apple-mobile-web-app-status-bar-style" content="#000000" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="CVG Club, cvg club, cvgclub, scriet cvgclub, scrietcvgclub, scriet, cvg, club, scriet event web site, scriet student union" />
	<link id="Link1" runat="server" rel="Shortcut Icon" href="~/Images/Other/fi.png" type="image/x-icon"/>
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
		.box-2, .box-3{
			display:none;
			width:30vw;
		}
		@media screen and (max-width:768px){
			.box-2, .box-3{
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
			<div class="box-1" style="width:auto;height:auto;">
				<div class="slink" style="text-align:center;font-size:95px;cursor:pointer;">
					<i class="fa fa-building"></i><br />
					<div style="margin-top:-100px;"><span style="font-size:16px;letter-spacing:2px;">START-UP</span></div>
				</div><hr />
				<div class="tlink" style="text-align:center;font-size:95px;cursor:pointer;">
					<i class="fa fa-briefcase"></i><br />
					<div style="margin-top:-115px;"><span style="font-size:16px;letter-spacing:2px;">TRAINING</span></div>
				</div>
			</div>

			<div class="box-3 text-center" id="stbox" style="border:1px solid skyblue;padding:20px;">
				<div class="menu-bar" style="top:15px;left:15px;">
					<i class="fa fa-arrow-circle-o-left go-back" data-toggle="tooltip" data-placement="right" title="Go Back"></i>
					<span style="font-family:'Special Elite';font-size:20px;font-weight:bold;">QUERY FOR START-UP</span>
				</div>
				<div class="input-effect text-left" style="margin-top:60px;">
        			<asp:TextBox runat="server" ID="semailtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
					<label>Your Email ID</label>
					<span class="focus-border"></span>
				</div>
				<div class="input-effect text-left">
        			<asp:TextBox runat="server" ID="snametxt" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:uppercase;"></asp:TextBox>
					<label>Your Name</label>
					<span class="focus-border"></span>
				</div>
				<div class="input-effect text-left">
        			<asp:TextBox runat="server" ID="squerytxt" MaxLength="1000" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
					<label>Query (Max. 250 words)</label>
					<span class="focus-border"></span>
				</div>
				<asp:Button runat="server" ID="sbtn" CssClass="btn btn-default click-on" Text="SUBMIT QUERY" OnClick="sbtn_Click" /><br /><br />
				<button type="button" class="btn btn-default pull-left go-back">Go Back</button>
				<button type="button" class="btn btn-default pull-right tlink">Training Query</button>
			</div>

			<div class="box-3 text-center" id="trbox" style="border:1px solid skyblue;padding:20px;">
				<div class="menu-bar" style="top:15px;left:15px;">
					<i class="fa fa-arrow-circle-o-left go-back" data-toggle="tooltip" data-placement="right" title="Go Back"></i>
					<span style="font-family:'Special Elite';font-size:20px;font-weight:bold;">QUERY FOR TRAINING</span>
				</div>
				<div class="input-effect text-left" style="margin-top:60px;">
        			<asp:TextBox runat="server" ID="temailtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
					<label>Your Email ID</label>
					<span class="focus-border"></span>
				</div>
				<div class="input-effect text-left">
        			<asp:TextBox runat="server" ID="tnametxt" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:uppercase;"></asp:TextBox>
					<label>Your Name</label>
					<span class="focus-border"></span>
				</div>
				<div class="input-effect text-left">
        			<asp:TextBox runat="server" ID="tquerytxt" MaxLength="1000" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
					<label>Query (Max. 250 words)</label>
					<span class="focus-border"></span>
				</div>
				<asp:Button runat="server" ID="tbtn" CssClass="btn btn-default click-on" Text="SUBMIT QUERY" OnClick="tbtn_Click" /><br /><br />
				<button type="button" class="btn btn-default pull-left go-back">Go Back</button>
				<button type="button" class="btn btn-default pull-right slink">Startup Query</button>
			</div>
		</div>
    </form>
	<script src="JS/MyFooterJS.js"></script>
	<script src="JS/myParticles.js"></script>
	<script type="text/javascript">
		$(".slink").click(function () {
			$(".box-1").slideUp();
			$("#trbox").slideUp();
			$("#stbox").slideDown();
		});
		$(".tlink").click(function () {
			$(".box-1").slideUp();
			$("#stbox").slideUp();
			$("#trbox").slideDown();
		});

		$(".go-back").click(function () {
			$("#stbox").slideUp();
			$("#trbox").slideUp();
			$(".box-1").slideDown();
		});
	</script>
</body>
</html>
