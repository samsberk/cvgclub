<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Startups.aspx.cs" Inherits="Startups" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CVGClub | Start-ups | SCRIET CVG Club</title>
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
		.panel-title{
			font-family:'Finger Paint';
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
			<div class="title-cvg">
				<span style="font-family:'Finger Paint';">Start-ups of</span>
				<a href="Home" class="link-cvgclub click-on" style="font-family:'Finger Paint';">SCRIETians</a>
				<div style="position:absolute;top:45vh;left:50%;transform:translate(-50%,-50%);">
					<img src="Images/Other/sdown2.gif" style="height:100px;width:100px;" alt="Scroll Down"/>
				</div>
			</div>
			<div class="box-2" style="z-index:9;">
				<div class="panel-body" style="padding:5px;">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h4 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:10vh;">Startups of SCRIETians</h4>
							<br /><div class="panel panel-info" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
								<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:aqua;">
									<b class="panel-title"><i class="fa fa-building-o"></i> Books Mahal</b>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-6 col-xs-5 text-right" style="border-right:1px solid skyblue;">
											<img src="Images/Startups/booksm.jpg" style="border-radius:50%;height:100px;width:100px;" alt="Startup Logo" />
										</div>
										<div class="col-sm-6 col-xs-7 text-left" style="padding-top:34px;">
											<p>
												<i style="font-family:'Finger Paint';font-size:18px;">
													BooksMahal<br />
												</i>
											</p>
										</div>
									</div>
								</div>
								<div class="panel-footer text-center" style="background:black;border-radius:0px;border-top:none;color:aqua;">
									<a href="http://www.booksmahal.com" class="link" target="_blank">Open This Start-Up <span class="glyphicon glyphicon-new-window"></span></a>
								</div>
							</div>
							<br /><div class="panel panel-info" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
								<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:aqua;">
									<b class="panel-title"><i class="fa fa-building-o"></i> SIM Bharat</b>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-6 col-xs-5 text-right" style="border-right:1px solid skyblue;">
											<img src="Images/Startups/sim.png" style="border-radius:50%;height:100px;width:100px;" alt="Startup Logo" />
										</div>
										<div class="col-sm-6 col-xs-7 text-left" style="padding-top:34px;">
											<p>
												<i style="font-family:'Finger Paint';font-size:18px;">
													SimBharat<br />
												</i>
											</p>
										</div>
									</div>
								</div>
								<div class="panel-footer text-center" style="background:black;border-radius:0px;border-top:none;color:aqua;">
									<a href="http://www.simbharat.com/" class="link" target="_blank">Open This Start-Up <span class="glyphicon glyphicon-new-window"></span></a>
								</div>
							</div>
							<br /><div class="panel panel-info" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
								<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:aqua;">
									<b class="panel-title"><i class="fa fa-building-o"></i> Apni Web Company</b>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-6 col-xs-5 text-right" style="border-right:1px solid skyblue;">
											<img src="Images/Startups/awc.png" style="border-radius:50%;height:100px;width:100px;" alt="Startup Logo" />
										</div>
										<div class="col-sm-6 col-xs-7 text-left" style="padding-top:34px;">
											<p>
												<i style="font-family:'Finger Paint';font-size:18px;">
													AWCompany<br />
												</i>
											</p>
										</div>
									</div>
								</div>
								<div class="panel-footer text-center" style="background:black;border-radius:0px;border-top:none;color:aqua;">
									<a href="http://www.apniwebcompany.com/" class="link" target="_blank">Open This Start-Up <span class="glyphicon glyphicon-new-window"></span></a>
								</div>
							</div>
							<br /><div class="panel panel-info" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
								<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:aqua;">
									<b class="panel-title"><i class="fa fa-building-o"></i> Bummlers</b>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-6 col-xs-5 text-right" style="border-right:1px solid skyblue;">
											<img src="Images/Startups/bum.png" style="border-radius:50%;height:100px;width:100px;" alt="Startup Logo" />
										</div>
										<div class="col-sm-6 col-xs-7 text-left" style="padding-top:34px;">
											<p>
												<i style="font-family:'Finger Paint';font-size:18px;">
													Bummlers<br />
												</i>
											</p>
										</div>
									</div>
								</div>
								<div class="panel-footer text-center" style="background:black;border-radius:0px;border-top:none;color:aqua;">
									<a href="http://www.bummlers.com/" class="link" target="_blank">Open This Start-Up <span class="glyphicon glyphicon-new-window"></span></a>
								</div>
							</div>
							<br /><div class="panel panel-info" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
								<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:aqua;">
									<b class="panel-title"><i class="fa fa-building-o"></i> Klean Kabad</b>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-6 col-xs-5 text-right" style="border-right:1px solid skyblue;">
											<img src="Images/Startups/kabad.png" style="border-radius:50%;height:100px;width:100px;" alt="Startup Logo" />
										</div>
										<div class="col-sm-6 col-xs-7 text-left" style="padding-top:34px;">
											<p>
												<i style="font-family:'Finger Paint';font-size:18px;">
													KleanKabad<br />
												</i>
											</p>
										</div>
									</div>
								</div>
								<div class="panel-footer text-center" style="background:black;border-radius:0px;border-top:none;color:aqua;">
									<a href="http://www.kleankabaad.com/" class="link" target="_blank">Open This Start-Up <span class="glyphicon glyphicon-new-window"></span></a>
								</div>
							</div>
							<br /><div class="panel panel-info" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
								<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:aqua;">
									<b class="panel-title"><i class="fa fa-building-o"></i> Affective Deal</b>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-6 col-xs-5 text-right" style="border-right:1px solid skyblue;">
											<img src="Images/Startups/afdeal.jpg" style="border-radius:50%;height:100px;width:100px;" alt="Startup Logo" />
										</div>
										<div class="col-sm-6 col-xs-7 text-left" style="padding-top:34px;">
											<p>
												<i style="font-family:'Finger Paint';font-size:18px;">
													AffectiveDeal<br />
												</i>
											</p>
										</div>
									</div>
								</div>
								<div class="panel-footer text-center" style="background:black;border-radius:0px;border-top:none;color:aqua;">
									<a href="http://www.affectivedeal.com/" class="link" target="_blank">Open This Start-Up <span class="glyphicon glyphicon-new-window"></span></a>
								</div>
							</div>

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
