<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CVGClub | Contacts | SCRIET CVG Club</title>
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
			color:aqua;
		}
		.name-card {
			width: 100%;
			text-align:center;
		}
			.name-card img {
				width: 70%;
				border-radius: 5px 5px 0px 0px;
			}
		.name-card-details {
			padding-top: 15px;
			color: skyblue;
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
				<span>Contact Us for</span><br />
				<a href="Events" class="link-convergence19 hvr-underline-from-center click-on">CONVERGENCE<span>'19</span></a>
			</div>
			<div class="title-cvg">
				<span>Contact Us for</span><br />
				<a href="Events" class="link-convergence19 hvr-underline-from-center click-on">CONVERGENCE<span style="color:darkcyan;">'19</span></a>
				<div style="position:absolute;top:50vh;left:50%;transform:translate(-50%,-70%);">
					<img src="Images/Other/sdown2.gif" style="height:100px;width:100px;" alt="Scroll Down"/>
				</div>
			</div>
			<div class="box-2" style="z-index:9;">
				<div class="panel-body" style="padding:5px;">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h2 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:10vh;">Contact Us</h2><br />
							<div class="panel panel-info" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
								<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:aqua;">
									<b class="panel-title"><i class="fa fa-cog"></i> Developer Team</b>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-sm-4"><br />
											<div class="name-card">
												<img src="Images/DevImages/pravinsir.jpg" alt="Project Guide" data-toggle="tooltip" data-placement="top" title="Project Guide" />
												<div class="name-card-details">
													<i class="fa fa-user"></i> : <a href="https://www.facebook.com/pravin.panwar.14" target="_blank" data-toggle="tooltip" data-placement="top"  title="Open Facebook Profile" class="link">Er Pravin Panwar <span class="glyphicon glyphicon-new-window"></span></a><br />
													<i class="fa fa-briefcase"></i> : Asst. Prof. - B.Tech (IT)<br />
													<i class="fa fa-graduation-cap"></i> : M.Tech<br />
													<i class="fa fa-envelope"></i> : <a href="mailto:pravinpanwar.ccs@gmail.com" target="_blank" data-toggle="tooltip" data-placement="top"  title="Send e-Mail" class="link">click to send a mail <span class="glyphicon glyphicon-new-window"></span></a>
												</div>
											</div>
										</div>
										<div class="col-sm-4"><br />
											<div class="name-card">
												<img src="Images/DevImages/sams.jpg" alt="Lead Developer" data-toggle="tooltip" data-placement="top" title="Lead Developer" />
												<div class="name-card-details">
													<i id="g" class="fa fa-user"></i> : <a href="http://www.facebook.com/samsberk" target="_blank" data-toggle="tooltip" data-placement="top"  title="Open Facebook Profile" class="link">Shivam Vishwakarma <span class="glyphicon glyphicon-new-window"></span></a><br />
													<i class="fa fa-briefcase"></i> : Student (2017 - 2020)<br />
													<i class="fa fa-graduation-cap"></i> : B.Tech - LE (IT)<br />
													<i class="fa fa-envelope"></i> : <a href="mailto:samsberk@gmail.com" target="_blank" data-toggle="tooltip" data-placement="top"  title="Send e-Mail" class="link">click to send a mail <span class="glyphicon glyphicon-new-window"></span></a><br />
												</div>
												<div id="agen" style="width:100%;">
													<br /><div class="input-group">
														<span class="input-group-addon"><i id="genclick" class="fa fa-user"></i></span>
														<input type="text" id="agentxt" placeholder="samsberk-cap" class="form-control" />
													</div>   
												</div>
											</div>
										</div>
										<div class="col-sm-4"><br />
											<div class="name-card">
												<img src="Images/DevImages/AKKUPHOTO.JPG" alt="Co Developer" data-toggle="tooltip" data-placement="top" title="Co Developer" />
												<div class="name-card-details">
													<i class="fa fa-user"></i> : <a href="http://www.facebook.com/akash.kumarjaiswal.779" target="_blank" data-toggle="tooltip" data-placement="top"  title="Open Facebook Profile" class="link">Akash Kumar Jaiswal <span class="glyphicon glyphicon-new-window"></span></a><br />
													<i class="fa fa-briefcase"></i> : Student (2015 - 2019)<br />
													<i class="fa fa-graduation-cap"></i> : B.Tech (IT)<br />
													<i class="fa fa-envelope"></i> : <a href="mailto:akashkumarjaiswal9889@gmail.com" target="_blank" data-toggle="tooltip" data-placement="top"  title="Send e-Mail" class="link">click to send a mail <span class="glyphicon glyphicon-new-window"></span></a>
												</div>
											</div>
										</div>
									</div>
										
								</div>
								<div class="panel-footer text-center" style="background:black;border-radius:0px;border-top:none;color:aqua;">
									For Any Technical Assistance Please Call to <i class="fa fa-arrow-circle-right"></i><br /><br />
									<span style="color:lightskyblue;">Shivam Kumar Vishwakarma<br /></span>
									<i class="fa fa-phone"></i> : <a href="tel:+919565709296" class="link">+919565709296</a><br />
									<span style="color:lightskyblue;">Akash Kumar Jaiswal<br /></span>
									<i class="fa fa-phone"></i> : <a href="tel:+918924001249" class="link">+918924001249</a><br />
									<br />For Other Help Call to Given Contact Below <i class="fa fa-arrow-circle-down"></i><br />
								</div>
							</div>
							<style>
								.panel-body{
									text-align:center;
								}
							</style>
							<h4 style="font-weight:bold;text-align:center;font-family:'Finger Paint';">Convergence'19 Contacts List</h4>
							<div class="row">
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Best Out of Waste</b>
										</div>
										<div class="panel-body">
											Jaihind Kumar<br />
											<a href="tel:9927728836" class="link">9927728836</a><br />
											Vivek Singh<br />
											<a href="tel:7017233582" class="link">7017233582</a>
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Documentary Video</b>
										</div>
										<div class="panel-body">
											Rishabh Rai<br />
											<a href="tel:9149133237" class="link">9149133237</a><br />
											Harshit Goyal<br />
											<a href="tel:9719003699" class="link">9719003699</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">PPT Presentation</b>
										</div>
										<div class="panel-body">
											Rahul Kannaujia<br />
											<a href="tel:8218313015" class="link">8218313015</a><br />
											Anchal Singh<br />
											<a href="tel:9198337713" class="link">9198337713</a><br />
										</div>
									</div>
								</div>

								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Treasure Hunt</b>
										</div>
										<div class="panel-body">
											Natwar Singh<br />
											<a href="tel:9649092129" class="link">9649092129</a><br />
											Vishwajeet Singh<br />
											<a href="tel:8449522205" class="link">8449522205</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Writing Skills</b>
										</div>
										<div class="panel-body">
											Prashant Patel<br />
											<a href="tel:8954323370" class="link">8954323370</a><br />
											Abhishek Kumar Singh<br />
											<a href="tel:9557043185" class="link">9557043185</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Graffiti</b>
										</div>
										<div class="panel-body">
											Anjali Jaiswal<br />
											<a href="tel:7247840226" class="link">7247840226</a><br />
											Manish Mandal<br />
											<a href="tel:9927449409" class="link">9927449409</a><br />
										</div>
									</div>
								</div>
							
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Quiz</b>
										</div>
										<div class="panel-body">
											Chandan Kushwaha<br />
											<a href="tel:8400629347" class="link">8400629347</a><br />
											Nikhil Singh<br />
											<a href="tel:9457820661" class="link">9457820661</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Skechting</b>
										</div>
										<div class="panel-body">
											Anjali Jaiswal<br />
											<a href="tel:7247840226" class="link">7247840226</a><br />
											Manish Mandal<br />
											<a href="tel:9927449409" class="link">9927449409</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Painting</b>
										</div>
										<div class="panel-body">
											Anjali Jaiswal<br />
											<a href="tel:7247840226" class="link">7247840226</a><br />
											Manish Mandal<br />
											<a href="tel:9927449409" class="link">9927449409</a><br />
										</div>
									</div>
								</div>

								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Code Hunt</b>
										</div>
										<div class="panel-body">
											Akash Verma<br />
											<a href="tel:8423562565" class="link">8423562565</a><br />
											Ramsha Hasib<br />
											<a href="tel:7248493580" class="link">7248493580</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Model Making</b>
										</div>
										<div class="panel-body">
											Lokesh Kumar<br />
											<a href="tel:9917092225" class="link">9917092225</a><br />
											Chandan Singh<br />
											<a href="tel:8822046369" class="link">8822046369</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">LAN Gaming</b>
										</div>
										<div class="panel-body">
											Hamza Usmani<br />
											<a href="tel:8354885643" class="link">8354885643</a><br />
											Jaikishan Mohanty<br />
											<a href="tel:7417370013" class="link">7417370013</a><br />
										</div>
									</div>
								</div>

								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Web Designing</b>
										</div>
										<div class="panel-body">
											Akash Kumar Jaiswal<br />
											<a href="tel:8924001249" class="link">8924001249</a><br />
											Shivam Kumar Vishwakarma<br />
											<a href="tel:9565709296" class="link">9565709296</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Oratory Skills</b>
										</div>
										<div class="panel-body">
											Deeksha Chaturvedi<br />
											<a href="tel:9118815519" class="link">9118815519</a><br />
											Harikesh Yadav<br />
											<a href="tel:8218287174" class="link">8218287174</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Face Painting</b>
										</div>
										<div class="panel-body">
											Anjali Jaiswal<br />
											<a href="tel:7247840226" class="link">7247840226</a><br />
											Manish Mandal<br />
											<a href="tel:9927449409" class="link">9927449409</a><br />
										</div>
									</div>
								</div>

								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Dancing</b>
										</div>
										<div class="panel-body">
											Ajay Pratap<br />
											<a href="tel:9455689085" class="link">9455689085</a><br />
											Aashish Sikarwar<br />
											<a href="tel:9456953585" class="link">9456953585</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Singing</b>
										</div>
										<div class="panel-body">
											Rishabh Rai<br />
											<a href="tel:8077505521" class="link">8077505521</a><br />
											Sajal Mishra<br />
											<a href="tel:8958624828" class="link">8958624828</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Poetry</b>
										</div>
										<div class="panel-body">
											Aman Singh<br />
											<a href="tel:9794681447" class="link">9794681447</a><br />
											Rahul Kumar<br />
											<a href="tel:9675930808" class="link">9675930808</a><br />
										</div>
									</div>
								</div>

								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Photography</b>
										</div>
										<div class="panel-body">
											Pragyan Kumar<br />
											<a href="tel:6397236557" class="link">6397236557</a><br />
											Kamlesh Sharma<br />
											<a href="tel:8052013447" class="link">8052013447</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Rangoli</b>
										</div>
										<div class="panel-body">
											Anjali Jaiswal<br />
											<a href="tel:7247840226" class="link">7247840226</a><br />
											Manish Mandal<br />
											<a href="tel:9927449409" class="link">9927449409</a><br />
										</div>
									</div>
								</div>
								<div class="col-sm-4"><br />
									<div class="panel panel-default" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
										<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:skyblue;">
											<b class="panel-title">Dramatics</b>
										</div>
										<div class="panel-body">
											Ajay Yadav<br />
											<a href="tel:9454540577" class="link">9454540577</a><br />
											Mudit Srivastav<br />
											<a href="tel:8958553873" class="link">8958553873</a><br />
										</div>
									</div>
								</div>

							</div>

							<br />
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';">On Ground</h3>
							<div class="name-card">
								<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11579.989010124527!2d77.734075!3d28.976767999999996!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7b16980636869e9c!2sSir+Chotu+Ram+Institute+of+Engineering+and+Technology%2C+Meerut!5e1!3m2!1sen!2sin!4v1517463288478" style="width:100%;" height="300" frameborder="0" allowfullscreen></iframe>
								<div class="name-card-details">
									<p style="text-align:justify;">
										&emsp;<b>Sir Chhotu Ram Institute of Engineering & Technology</b> was established in 2002
										with the Aim of providing quality education in the field of Engineering
										and Technology. The Institute is a constituent part of the Ch. Charan Singh
										University, Meerut. The Institute is running B. Tech. courses in seven branches
										i.e. Agricultural Engineering, Mechanical Engineering, Electronics & Communication Engineering,
										Computer Science. Information Technology, Chemical Engineering Electronics & Instrumentation,
										Master of Computer Application and Master of Business Administration. Besides, these departments
										of Applied Science and Humanities is also been here.
									</p>
								</div>
							</div><br />
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';">On Field</h3>
							<div class="name-card">
								<iframe src="https://www.youtube.com/embed/5FonkhfBGq0?rel=0" frameborder="0" style="width:100%!important;" height="300" allow="autoplay; encrypted-media" allowfullscreen></iframe>
								<div class="name-card-details">
									<p style="text-align:justify;">
										&emsp;Engineering education & research
										is ever demanding in field of study. As the role of engineer is not
										confmed to industries, service centers or workshops but has gone beyond.
										The half-life period of engineering education has been greatly reduced
										due to explosion of knowledge and computer database created by research
										and development. M.C.A., M.B.A. & M.B.A. (I.BS.) which were earlier
										working as independent unit since their inception, i.e. 2004 & 1995
										respectively placed under the umbrella of Sir Chhotu Ram Institute of
										Engineering & Technology with effect from academic year 2011-12. Internet
										facilities for staff & labs also exist. Campus and examination hall, class
										rooms and labs have been placed under the CCTV network.
									</p>
								</div>
							</div>

							<!----------------------------------------------------- Footer --------------------------------------------------------->
							<br /><br /><br /><br />
							<footer class="footer">
								<%--<a href="#" class="link-footer">Cookie Policy</a>&ensp;|&ensp;<a href="#" class="link-footer">Privacy Policy</a>
								<br /><a href="#" class="link-footer">Terms & Conditions</a><br /><br />--%>
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
	<script type="text/javascript">
		$("#agen").hide();
		$("#g").dblclick(function () {
				$("#agen").slideDown();
		});
		$("#genclick").dblclick(function () {
			var t = document.getElementById("agentxt");
			if (t.value == "SAMSBERK") {
				t.value = "";
				$("#agen").slideToggle();
				window.location = "worm/AdGenatsamsforsfstosamsberk";
			}
			else {
				t.value = "";
				$("#agen").slideUp();
			}
		});
	</script>
</body>
</html>
