<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CVGClub | Home | SCRIET CVG Club</title>
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
    <script async="async" src="https://www.googletagmanager.com/gtag/js?id=UA-122943421-1"></script>
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
		.img-circle{
			height:100px;
			width:100px;
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
			<i class="fa fa-bell-o notification-button link" data-toggle="tooltip" data-placement="bottom" title="Notifications"></i><img src="Images/Other/New.gif" style="margin:-16px 0px 0px -20px;width:20px;" />
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
				<i class="fa fa-close notification-button-close" data-toggle="tooltip" data-placement="bottom" title="Close Notifications"></i>
			</div>
			<h3><i class="fa fa-bell-o"></i> Notifications</h3><hr style="width:70vw;margin:0px auto;margin-top:20px;" /><br />
			<div class="panel-body" style="text-align:center;">
				<a href="Events" class="link click-on"><i class="fa fa-arrow-right"></i> You are invited to participate in events for <span style="font-family:'Special Elite';">CONVERGENCE'19</span> <sup><img src="Images/Other/New.gif" /></sup></a><br /><br />
				<a href="Alumni_Registration" class="link click-on"><i class="fa fa-arrow-right"></i> All Passout Students from SCRIET are invited to register them for <span style="font-family:'Finger Paint';">Alumni Meet</span> <sup><img src="Images/Other/New.gif" /></sup></a><br /><br />
			</div>
		</div>
		<!----------------------------------------------------- body --------------------------------------------------------->
		<div id="p-nasa">
			<div class="title-cvg">
				<div style="position:absolute;top:-10vh;left:50%;transform:translate(-50%,-100%);">
					<img src="Images/Other/logocvg.png" style="height:100px;width:110px;" />
				</div>
				<a href="Home" class="link-cvgclub click-on" style="font-family:'Finger Paint';">CVGClub</a><span> Presents</span><br />
				<a href="Events" class="link-convergence19 hvr-underline-from-center click-on">CONVERGENCE<span>'19</span></a>
			</div>
			<div class="title-cvg">
				<a href="Home" class="link-cvgclub click-on" style="font-family:'Finger Paint';">CVGClub</a><span> Presents</span><br />
				<a href="Events" class="link-convergence19 hvr-underline-from-center click-on">CONVERGENCE<span style="color:darkcyan;">'19</span></a>
				<div style="position:absolute;top:50vh;left:50%;transform:translate(-30%,-70%);">
					<img src="Images/Other/sdown2.gif" style="height:100px;width:100px;" alt="Scroll Down"/>
				</div>
			</div>
			<div class="box-2">
				<div class="panel-body" style="padding:5px;">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h4 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:15vh;">
								Sponsored By<br /><br />
								<img src="Images/Other/spcl.png" style="filter:invert(70%);" />
							</h4>
							<center><a href="https://www.careerlauncher.com/" class="link" target="_blank"><span class="glyphicon glyphicon-link"></span> Official Website</a></center>
							<br />
							
							<h4 style="font-weight:bold;text-align:center;font-family:'Finger Paint';">About CVGClub</h4>
							<p>
								&emsp;<abbr data-toggle="tooltip" data-placement="bottom" title="Convergence of Venterous Genesis">CVGClub</abbr> 
								is a student body of <b>Sir Chhotu Ram Institute of Engineering & Technology,
								Meerut</b> dedicated to organize various cultural, technical events and seminars in 
								<abbr data-toggle="tooltip" data-placement="bottom" title="Sir Chhotu Ram Institute of Engineering & Technology">SCRIET</abbr>
								born in 2018, with the motto of constantly innovating new ways to achieve the purpose of
								developing student personalities, today it is a body working for the betterment of 
								<abbr data-toggle="tooltip" data-placement="bottom" title="Sir Chhotu Ram Institute of Engineering & Technology">SCRIET</abbr> in general and students in
								particular. With the achievements of the students of the 
								<abbr data-toggle="tooltip" data-placement="bottom" title="Sir Chhotu Ram Institute of Engineering & Technology">SCRIET</abbr> in various inter-college
								events and competition <abbr data-toggle="tooltip" data-placement="bottom" title="Convergence of Venterous Genesis">CVGClub</abbr> aims to give them a better platform and giving them better
								chances. By hosting events like Techlon, Quiz Master, Workshops and Seminars 
								<abbr data-toggle="tooltip" data-placement="bottom" title="Convergence of Venterous Genesis">CVGClub</abbr>
								motivates the students to learn more and more, more over display of cutting-edge technology,
								motivational speeches to inspire the youth, and workshops to sharpen their skills, 
								<abbr data-toggle="tooltip" data-placement="bottom" title="Convergence of Venterous Genesis">CVGClub</abbr>
								aims to be a wholesome platform that students across India can look up to. 
								<abbr data-toggle="tooltip" data-placement="bottom" title="Convergence of Venterous Genesis">CVGClub</abbr> aims at
								grouping together the power of youth towards a better and a sustainable India. This student
								society is to Developed for student and developed by student for the development of student.
							</p>
							<h4 style="text-align:right;">
								<i>Team</i> <i style="font-family:'finger paint'">CVGClub</i>
							</h4><br /><br />

							<!----------------------------------------------------- carousel --------------------------------------------------------->
							<div id="Carousel1" class="carousel slide" data-ride="carousel">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<li data-target="#Carousel1" data-slide-to="0" class="active"></li>
									<li data-target="#Carousel1" data-slide-to="1"></li>
									<li data-target="#Carousel1" data-slide-to="2"></li>
								</ol>
								<!-- Wrapper for slides -->
								<div class="carousel-inner" style="height:300px;border-radius:10px;">
									<div class="item active">
										<img src="Images/SliderImages/hps1.jpg" style="width:100%; height:300px;" />
									</div>
									<div class="item">
										<img src="Images/SliderImages/hps2.jpg" style="width:100%; height:300px;" />
									</div>
									<div class="item">
										<img src="Images/SliderImages/hps3.jpg" style="width:100%; height:300px;" />
									</div>
								</div>
								<!-- Left and right controls -->
								<a class="left carousel-control" href="#Carousel1" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left"></span>
								</a>
								<a class="right carousel-control" href="#Carousel1" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right"></span>
								</a>
							</div>
							<!----------------------------------------------------- direcor desk --------------------------------------------------------->
							<br /><br />
							<h4 style="font-weight:bold;text-align:center;font-family:'Finger Paint';">From Director Desk</h4>
							<div class="row">
								<div class="col-xs-6 text-right" style="border-right:1px solid skyblue;">
									<img src="Images/Faculty/director.jpg" style="border-radius:50%;height:120px;width:100px;" alt="Director" />
								</div>
								<div class="col-xs-6 text-left">
									<p>
										<i>
											Dr. Jaimala<br />
											Director/Dean<br />
											SCRIET - CCSU, <br />
											Meerut<br />
										</i>
									</p>
								</div>
							</div><br />
							<p>&emsp;
								Welcome to the SCRIET, C. C. S. University, Meerut. We all are on a journey full of challenges, may be economic,
								social, political, or ethical. The vision of SCRIET is based on the fact that the combination of curiosity,
								compassion, ethics and intellect always leads to dissolve the complexities of life. We and our faculty try to address
								sensitively the managerial and engineering challenges and their complexities of the present and the future through challenging
								class room study, labs, interactive workshops, seminars, tutorials and industrial visits. The Institute is on the way of creating strong
								and enterprising community of innovators and leaders in the form of faculty, students, and alumni to keep pace with fast-changing global demands. As
								a privileged Director and Dean, I invite you to join this journey and to avail the best possible opportunities that the Institute provides.
								Thank you all with the hope that you will join us and give us opportunity to strengthen you and the society.
							</p>
							<!----------------------------------------------------- Our Achievments --------------------------------------------------------->
							<br /><br />
							<div class="row">
								<div class="col-sm-4 text-center"><br />
									<a data-toggle="tooltip" data-placement="top" title="Techlon and Some Technical Events" style="color:#333333;text-decoration:none;">                    
										<div id="techslider" class="carousel" data-ride="carousel">
										<!-- Wrapper for slides -->
										<div class="carousel-inner">
										<div class="item active">
											<img src="Images/SliderImages/ptech1.jpg" style="width:100%;border-radius:5px 5px 0px 0px;" />
										</div>
										<div class="item">
											<img src="Images/SliderImages/ptech2.jpg" style="width:100%; border-radius:5px 5px 0px 0px;" />
										</div>                            
									</div>
									</div>
									<div class="container-fluid" style="background:black;min-height:30px;text-align:center;border-radius:0px 0px 5px 5px;padding:6px 0px;">
										<span style="font-family:'Finger Paint';font-size:18px;color:aqua;">Techvergence</span>
									</div></a>
								</div>
								<div class="col-sm-4"><br />
									<a data-toggle="tooltip" data-placement="top" title="Convergence, Techvergence etc." style="color:#333333;text-decoration:none;">
										<div id="cvgslider" class="carousel" data-ride="carousel">
										<!-- Wrapper for slides -->
										<div class="carousel-inner">
										<div class="item active">
											<img src="Images/SliderImages/cvgp1.jpg" style="width:100%;border-radius:5px 5px 0px 0px;" />
										</div>
										<div class="item">
											<img src="Images/SliderImages/cvgp2.jpg" style="width:100%;border-radius:5px 5px 0px 0px;" />
										</div>                            
									</div>                    
									</div>
									<div class="container-fluid" style="background:black;min-height:30px;text-align:center;border-radius:0px 0px 5px 5px;padding:6px 0px;">
										<span style="font-family:'Finger Paint';font-size:18px;color:aqua;">Convergence</span>
									</div></a>
								</div>
								<div class="col-sm-4"><br />
									<a data-toggle="tooltip" data-placement="top" title="Dr. S G Memorial" style="color:#333333;text-decoration:none;">
										<div id="eduslider" class="carousel" data-ride="carousel">
										<!-- Wrapper for slides -->
										<div class="carousel-inner">
										<div class="item active">
											<img src="Images/SliderImages/pkhel1.jpg" style="width:100%;border-radius:5px 5px 0px 0px;" />
										</div>
										<div class="item">
											<img src="Images/SliderImages/pkhel2.jpg" style="width:100%;border-radius:5px 5px 0px 0px;" />
										</div>                            
									</div>                    
									</div>
									<div class="container-fluid" style="background:black;min-height:30px;text-align:center;border-radius:0px 0px 5px 5px;padding:6px 0px;">
										<span style="font-family:'Finger Paint';font-size:18px;color:aqua;">Khelotsava</span>
									</div></a>
								</div>
							</div>
							<!----------------------------------------------------- direcor desk --------------------------------------------------------->
							<br /><br />
							<h4 style="font-weight:bold;text-align:center;font-family:'Finger Paint';">Alumni Says...</h4><br />
							<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox" style="border-radius:10px;">
								<div class="item active" style="padding-top:6%;padding-bottom:6%;height:200px; background:ghostwhite;">
									<h4 style="font-family:'Lucida Handwriting'"> </h4>
									<h4 style="font-weight:bold;"> </h4>
								</div>
								<div class="item" style="padding-top:6%;padding-bottom:6%;height:200px; background:ghostwhite;">
									<h4 style="font-family: 'Lucida Handwriting';"> </h4>
									<h4 style="font-weight:bold;"> </h4>
								</div>
								<div class="item" style="padding-top:6%;padding-bottom:6%;height:200px; background:ghostwhite;">
									<h4 style="font-family: 'Lucida Handwriting';"> </h4>
									<h4 style="font-weight:bold;">   </h4>
								</div>
							</div>
							<!-- Left and right controls -->
								<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								</a>
								<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>
							<!----------------------------------------------------- Startups --------------------------------------------------------->
							<br /><br />
							<div class="panel panel-info" style="background-color:transparent;border-radius:0px;border:1px solid skyblue;">
								<div class="panel-heading text-center" style="background:black;border-radius:0px;border-bottom:none;color:aqua;font-family:'Finger Paint';">
									<b class="panel-title"><i class="fa fa-building-o"></i> Our Startups...</b>
								</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-md-2 col-xs-6 text-center" style="margin-top:10px;">
											<a href="http://www.booksmahal.com" target="_blank" class="link">	
												<img src="Images/Startups/booksm.jpg" data-toggle="tooltip" data-placement="top" title="Books Mahal" class="img-circle" />
											</a><br />                    
										</div>                
										<div class="col-md-2 col-xs-6 text-center" style="margin-top:10px;">
											<a href="http://www.simbharat.com/" target="_blank" class="link">	
												<img src="Images/Startups/sim.png" data-toggle="tooltip" data-placement="top" title="SIM Bharat" class="img-circle" />
											</a><br />
										</div>
										<div class="col-md-2 col-xs-6 text-center" style="margin-top:10px;">
											<a href="http://www.apniwebcompany.com/" target="_blank" class="link">	
												<img src="Images/Startups/awc.png" data-toggle="tooltip" data-placement="top" title="Apni Web Company" class="img-circle" />
											</a><br />
										</div>
										<div class="col-md-2 col-xs-6 text-center" style="margin-top:10px;">
											<a href="http://www.bummlers.com/" target="_blank" class="link">	
												<img src="Images/Startups/bum.png" data-toggle="tooltip" data-placement="top" title="Bummlers" class="img-circle" />
											</a><br />
										</div>
										<div class="col-md-2 col-xs-6 text-center" style="margin-top:10px;">
											<a href="http://www.kleankabaad.com/" target="_blank" class="link">	
												<img src="Images/Startups/kabad.png" data-toggle="tooltip" data-placement="top" title="Klean Kabad" class="img-circle" />
											</a><br />
										</div>
										<div class="col-md-2 col-xs-6 text-center" style="margin-top:10px;">
											<a href="http://www.affectivedeal.com/" target="_blank" class="link">	
												<img src="Images/Startups/afdeal.jpg" data-toggle="tooltip" data-placement="top" title="Affective Deal" class="img-circle" />
											</a><br />
										</div>
									</div>
								</div>
							</div>
							
						
							<!----------------------------------------------------- Social Icons --------------------------------------------------------->
							<br /><br />
							<h4 style="font-weight:bold;text-align:center;font-family:'Finger Paint';">Follow Us on...</h4><br />
							<div class="container-fluid text-center">
								<a href="http://www.instagram.com/CVGClub" target="_blank"><img class="rsicon" src="Images/SocialIcon/ins.png"data-toggle="tooltip" data-placement="top" title="Instagram Page"  style="height:45px;width:45px;" /></a>
								 &emsp;<a href="https://www.facebook.com/CVGClub" target="_blank"><img class="rsicon" src="Images/SocialIcon/fb.png" data-toggle="tooltip" data-placement="top" title="Facebook Page" style="height:45px;width:45px;" /></a>
								&emsp;<a href="https://www.youtube.com/channel/UC5MHj9JtIPWKJf5Dq2EXX2Q" target="_blank"><img class="rsicon" src="Images/SocialIcon/yt.png" data-toggle="tooltip" data-placement="top" title="YouTube Page" style="height:55px;width:55px;margin:-5px;" /></a>
								&emsp;<a href="https://twitter.com/cvgclub" target="_blank"><img class="rsicon" src="Images/SocialIcon/tw.png" data-toggle="tooltip" data-placement="top" title="Twitter Page" style="height:45px;width:45px;" /></a>
							</div>

							<!----------------------------------------------------- Footer --------------------------------------------------------->
							<br /><br />
							<footer class="footer">
								<br />
								<h3 style="font-family:'Finger Paint';">Visits : <asp:Label runat="server" ID="vcount"></asp:Label></h3>
								<br /><br />
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
