<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alumni.aspx.cs" Inherits="Alumni" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CVGClub | Our Alumni | SCRIET CVG Club</title>
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
	<style>
		.hvr-bounce-to-bottom:hover{
			color:black;
		}
		.col-xs-9{
			border-left:0.5px solid skyblue;
			overflow:auto;
		}
		.col-xs-9 p{
			
			text-align:left;
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
		<div class="menu-bar" style="z-index:999;">
			<i class="fa fa-bars menu-button link" data-toggle="tooltip" data-placement="bottom" title="Show Menu"></i>
		</div>
		<div class="menu-box w3-animate-zoom">
			<div class="menu-bar"><i class="fa fa-close menu-button-close" data-toggle="tooltip" data-placement="bottom" title="Close Menu"></i></div>
			<a href="Home" class="link click-on hvr-underline-from-center"><i class="fa fa-home"></i> HOME</a><br />
			<a href="Events" class="link click-on hvr-underline-from-center" style="font-family:'Special Elite';">CONVERGENCE'19<sup><img src="Images/Other/New.gif" /></sup></a><br />
			<a href="Our_Alumni" class="link click-on hvr-underline-from-center"><i class="fa fa-diamond"></i> ALUMNI</a><br />
			<a href="Sign_Up" class="link click-on hvr-underline-from-center"><i class="fa fa-user-plus"></i> SIGN-UP</a><br />
			<a href="Student_Login" class="link click-on hvr-underline-from-center"><i class="fa fa-sign-in"></i> LOG-IN</a><br />
			<a href="Query" class="link click-on hvr-underline-from-center"><i class="fa fa-question"></i> QUERY</a><br />
			<a href="Startups_of_SCRIETians" class="link click-on hvr-underline-from-center"><i class="fa fa-rocket"></i> STARTUPS</a><br />
			<a href="Contact_Us" class="link click-on hvr-underline-from-center"><i class="fa fa-mobile"></i> CONTACT</a><br />
		</div>
		<div class="notification-box w3-animate-zoom">
			<div class="menu-bar">
				<i class="fa fa-bars notification-button-close" data-toggle="tooltip" data-placement="bottom" title="Close Notifications"></i>
			</div>
			<h3><i class="fa fa-bell-o"></i> Notifications</h3><hr style="width:70vw;margin:0px auto;margin-top:20px;" />
		</div>
		<!----------------------------------------------------- body --------------------------------------------------------->
		<div id="p-nasa">
			<div class="title-cvg">
				<span style="font-family:'Finger Paint';">Our </span>
				<a href="Our_Alumni" class="link-cvgclub click-on" style="font-family:'Finger Paint';">Alumni</a>
				<div style="position:absolute;top:40vh;left:50%;transform:translate(-50%,-50%);">
					<img src="Images/Other/sdown2.gif" style="height:100px;width:100px;" alt="Scroll Down"/>
				</div>
			</div>
			<div class="box-2" style="z-index:9;">
				<div class="panel-body" style="padding:5px;">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h2 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:10vh;">Our Alumni</h2>
							<div class="container" style="width:100%;">
							   <img src="Images/Other/alpic.png" style="border-radius:10px;width:100%;filter:invert(70%);" />
							</div>
							<div class="container" style="width:100%;text-align:center;padding-top:50px;">
								<a href="Alumni_Registration" data-toggle="tooltip" data-placement="top" title="Go for Registration" class="link hvr-bounce-to-bottom click-on" style="padding:5px 10px;border-radius:5px;">Alumni Registration <sup><span class="badge" style="color:white;background:red;font-size:10px;">New</span></sup></a><br /><br />
							</div>
							<div class="panel-group" id="octev">
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp0" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2014-2018</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t14">0</asp:Label></span></h3></div>
									<div id="colp0" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b1418"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp1" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2013-2017</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t13">0</asp:Label></span></h3></div>
									<div id="colp1" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b1317"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp2" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2012-2016</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t12">0</asp:Label></span></h3></div>
									<div id="colp2" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b1216"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp3" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2011-2015</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t11">0</asp:Label></span></h3></div>
									<div id="colp3" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b1115"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp4" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2010-2014</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t10">0</asp:Label></span></h3></div>
									<div id="colp4" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b1014"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp5" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2009-2013</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t09">0</asp:Label></span></h3></div>
									<div id="colp5" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b0913"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp6" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2008-2012</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t08">0</asp:Label></span></h3></div>
									<div id="colp6" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b0812"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp7" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2007-2011</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t07">0</asp:Label></span></h3></div>
									<div id="colp7" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b0711"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp8" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2006-2010</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t06">0</asp:Label></span></h3></div>
									<div id="colp8" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b0610"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp9" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2005-2009</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t05">0</asp:Label></span></h3></div>
									<div id="colp9" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b0509"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>   
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp10" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2004-2008</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t04">0</asp:Label></span></h3></div>
									<div id="colp10" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b0408"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp11" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2003-2007</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t03">0</asp:Label></span></h3></div>
									<div id="colp11" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b0307"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
								<div class="panel panel-default" style="background-color:transparent;border:none;">
								<div class="panel-heading" style="background:black;color:skyblue;border:none;"><h3 class="panel-title text-center" style="font-size:20px;"><a data-toggle="collapse" href="#colp12" class="link hvr-icon-hang"><span class="glyphicon glyphicon-chevron-right hvr-icon"></span>&emsp;Batch 2002-2006</a><br /><span style="font-size:15px;">Total Registered : <asp:Label runat="server" ID="t02">0</asp:Label></span></h3></div>
									<div id="colp12" class="panel-collapse collapse">
										<div class="panel-body" style="border:none;">
											<div class="row">
												<asp:PlaceHolder runat="server" ID="b0206"></asp:PlaceHolder>
											</div>
										</div>
									</div>
								</div>
							</div>
							<span style="color:aqua;">Note : Informations shown on this page are provided by alumni themselves.</span>
							<!----------------------------------------------------- Footer --------------------------------------------------------->
							<br /><br /><br /><br />
							<footer class="footer">
								All Rights Reserved &copy; SCRIET<br />
								CVGClub - 2018<br />
								Designed & Developed By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="LinkedIN Profile">samsberk</a><br />
								<a style="font-family:'Sedgwick Ave';" href="http://www.ccsuniversity.ac.in/scriet/" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="Official Website" >Sir Chhotu Ram Institute of Engineering & Technology, Meerut</a>
							</footer>
						</div>
						<div class="col-md-2"></div>
					</div>
				</div>
			</div>
		</div>
    </form>
	<script src="JS/MyFooterJS.js"></script>
	<script src="JS/myParticles.js"></script>
</body>
</html>
