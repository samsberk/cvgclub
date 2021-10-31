<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aperture.aspx.cs" Inherits="Aperture" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CVGClub | Club Aperture | SCRIET CVG Club</title>
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
			<a href="Clubs" class="link click-on hvr-underline-from-center"><i class="fa fa-cubes"></i> CLUBS</a><br />
			<a href="Our_Alumni" class="link click-on hvr-underline-from-center"><i class="fa fa-diamond"></i> ALUMNI</a><br />
			<a href="Sign_Up" class="link click-on hvr-underline-from-center"><i class="fa fa-user-plus"></i> SIGN-UP</a><br />
			<a href="Student_Login" class="link click-on hvr-underline-from-center"><i class="fa fa-sign-in"></i> LOG-IN</a><br />
			<a href="Query" class="link click-on hvr-underline-from-center"><i class="fa fa-question"></i> QUERY</a><br />
			<a href="Startups_of_SCRIETians" class="link click-on hvr-underline-from-center"><i class="fa fa-rocket"></i> STARTUPS</a><br />
			<a href="Contact_Us" class="link click-on hvr-underline-from-center"><i class="fa fa-mobile"></i> CONTACT</a>
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
				<span style="font-family:'Finger Paint';">Club </span>
				<a href="Aperture" class="link-cvgclub click-on" style="font-family:'Finger Paint';">Aperture</a><br />
			</div>
			<div class="box-2" style="z-index:9;">
				<div class="panel-body" style="padding:5px">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h4 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:10vh;">Club Aperture</h4>
						
							<div class="panel-body">
								<div class="panel panel-info" style="background-color:transparent;border-radius:0px;">
									<div class="panel-heading" style="background:black;border-radius:0px;font-family:'Finger Paint';">
										<b class="panel-title">Mentors</b>
									</div>
									<div class="panel-body text-center">
										Er. Pankaj Kumar (Coordinator)<br />
										Er. Gaurav Tyagi (Co-coordinator)<br />
                    
									</div>
								</div>
								<div class="panel panel-info" style="background-color:transparent;border-radius:0px;">
									<div class="panel-heading" style="background:black;border-radius:0px;font-family:'Finger Paint';">
										<b class="panel-title">Aperture Events Members</b>
									</div>
									<div class="panel-body text-right">
										<a href="Events" data-toggle="tooltip" data-placement="top" title="Go for Apply" class="link click-on"><b>Go to Event Page <span class="glyphicon glyphicon-arrow-right"></span></b></a><br /><br />
										<div class="panel-group" id="octev">
											<div class="panel panel-default" style="background-color:transparent;border:none;">
												<div class="panel-heading" style="background:black;border:none;text-align:center;color:skyblue;"><b class="panel-title"><a data-toggle="collapse" data-parent="#octev" href="#colp1" class="link"><b>Photography&emsp;<span class="glyphicon glyphicon-chevron-down"></span></b></a></b></div>
												<div id="colp1" class="panel-collapse collapse">
													<div class="panel-body text-center" style="border:none;">
														<b style="font-weight:bold;font-size:18px;">Core</b><br />
														Akhil Yadav<br />
														Prabhat Sagar<br />
														<br />
														<b style="font-weight:bold;font-size:18px;">Co-ordinators</b><br />
														Rishabh Rai<br />
														Anchal Singh<br />
														Kamlesh Sharma<br />
													</div>
												</div>
											</div>
											<div class="panel panel-default" style="background-color:transparent;border:none;">
												<div class="panel-heading" style="background:black;border:none;text-align:center;color:skyblue;"><b class="panel-title"><a data-toggle="collapse" data-parent="#octev" href="#colp2" class="link"><b>PPT Presentation&emsp;<span class="glyphicon glyphicon-chevron-down"></span></b></a></b></div>
												<div id="colp2" class="panel-collapse collapse">
													<div class="panel-body text-center" style="border:none;">
														<b style="font-weight:bold;font-size:18px;">Core</b><br />
														Devendra Yadav<br />
														Riya Sharma<br />
														<br />
														<b style="font-weight:bold;font-size:18px;">Co-ordinators</b><br />
														Rajat Kumar Maurya<br />
														Rahul Kannaujia<br />
														Akash Verma<br />
													</div>
												</div>
											</div>
											<div class="panel panel-default" style="background-color:transparent;border:none;">
												<div class="panel-heading" style="background:black;border:none;text-align:center;color:skyblue;"><b class="panel-title"><a data-toggle="collapse" data-parent="#octev" href="#colp3" class="link"><b>Model Making&emsp;<span class="glyphicon glyphicon-chevron-down"></span></b></a></b></div>
												<div id="colp3" class="panel-collapse collapse">
													<div class="panel-body text-center" style="border:none;">
														<b style="font-weight:bold;font-size:18px;">Core</b><br />
															Ashish Yadav<br />
															Dhirendra Yadav
														<br /><br />
														<b style="font-weight:bold;font-size:18px;">Co-ordinators</b><br />
														Lokesh Kumar<br />
														Jaihind
														<br />
													</div>
												</div>
											</div>
											<div class="panel panel-default" style="background-color:transparent;border:none;">
												<div class="panel-heading" style="background:black;border:none;text-align:center;color:skyblue;"><b class="panel-title"><a data-toggle="collapse" data-parent="#octev" href="#colp4" class="link"><b>Documentary Video&emsp;<span class="glyphicon glyphicon-chevron-down"></span></b></a></b></div>
												<div id="colp4" class="panel-collapse collapse">
													<div class="panel-body text-center" style="border:none;">
														<b style="font-weight:bold;font-size:18px;">Core</b><br />
														Akhil Yadav<br />
														Prabhat Sagar<br />
													<br />
													<b style="font-weight:bold;font-size:18px;">Co-ordinators</b><br />
														Rishabh Rai<br />
														Anchal Singh<br />
														Kamlesh Sharma<br />
													</div>
												</div>
											</div>
										</div>               
									</div>
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