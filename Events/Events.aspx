<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events_Events" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CVGClub | Events in CONVERGENCE'19 | SCRIET CVG Club</title>
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
	<link href="../CSS/CSS.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="../JS/MyJS.js"></script>
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
	<link href="../CSS/hover.css" rel="stylesheet" />
	<script src="../JS/Chart.bundle.js"></script>
	<script src="../JS/Chart.js"></script>
	<script src="../JS/particles.js"></script>
	<script src="../JS/jquery-ui-tltp.js"></script>
	<link href="../CSS/jquery-ui.css" rel="stylesheet" />
	<link href="../CSS/jquery-ui.structure.css" rel="stylesheet" />
	<link href="../CSS/jquery-ui.theme.css" rel="stylesheet" />
	<style type="text/css">
		div.form-control{
			padding:6px 10px;
			background:rgba(0, 0, 0, 0.88);
			border:none;
			margin-bottom:8px;
		}
		h4{
			color:aqua;
			font-family:'Special Elite';
		}
		p{
			text-align:justify;
		}
		blockquote{
			border-left:1px solid aqua;
			padding-right:0px;
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
			<i class="fa fa-list-ul droplist-button link" data-toggle="tooltip" data-placement="bottom" title="Event List" style="border-radius:10px;"> <asp:Label runat="server" ID="listm" style="font-family:'Special Elite';" Text="Event List"></asp:Label></i>
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
			<a href="Contact_Us" class="link click-on hvr-underline-from-center"><i class="fa fa-mobile"></i> CONTACT</a>
		</div>
		<div class="droplist-box"><hr />
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-6">
						<div class="row">
							<div class="col-xs-6">
								<span class="btn btn-default btn-sm boow-button">Best Out of Waste</span><br />
								<span class="btn btn-default btn-sm dv-button">Documentary Video</span><br />
								<span class="btn btn-default btn-sm pptp-button">PPT Presentation</span><br />
								<span class="btn btn-default btn-sm th-button">Treasure Hunt</span><br />
								<span class="btn btn-default btn-sm ws-button">Writing Skills</span><br />
							</div>
							<div class="col-xs-6">
								<span class="btn btn-default btn-sm grft-button">Graffiti</span><br />
								<span class="btn btn-default btn-sm qz-button">Quiz</span><br />
								<span class="btn btn-default btn-sm sktch-button">Sketching</span><br />
								<span class="btn btn-default btn-sm pnt-button">Painting</span><br />
								<span class="btn btn-default btn-sm ch-button">Code Hunt</span><br />
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="row">
							<div class="col-xs-6">
								<span class="btn btn-default btn-sm mm-button">Model Making</span><br />
								<span class="btn btn-default btn-sm lg-button">LAN Gaming</span><br />
								<span class="btn btn-default btn-sm wd-button">Web Designing</span><br />
								<span class="btn btn-default btn-sm os-button">Oratory Skills</span><br />
								<span class="btn btn-default btn-sm fp-button">Face Painting</span><br />
							</div>
							<div class="col-xs-6">
								<span class="btn btn-default btn-sm dnc-button">Dancing</span><br />
								<span class="btn btn-default btn-sm sng-button">Singing</span><br />
								<span class="btn btn-default btn-sm ptry-button">Poetry</span><br />
								<span class="btn btn-default btn-sm phtg-button">Photography</span><br />
								<span class="btn btn-default btn-sm rngly-button">Rangoli</span><br />
								<span class="btn btn-default btn-sm drmtcs-button">Dramatics</span><br />
							</div>
						</div>
					</div>
				</div>
			</div><hr />
		</div>
		<!----------------------------------------------------- body --------------------------------------------------------->
		<div id="p-nasa" style="height:100vh;">
			<div class="title-cvg">
				<span>Events in</span><br />
				<span class="link-convergence19 hvr-underline-from-center droplist-button link" style="cursor:pointer;">CONVERGENCE<span>'19</span></span>
			</div>
			<div class="title-cvg">
				<span>Events in</span><br />
				<span class="link-convergence19 hvr-underline-from-center droplist-button link" style="cursor:pointer;">CONVERGENCE<span style="color:darkcyan;">'19</span></span>
			</div>
			<!----------------------------------------------------- Best Out Of Waste --------------------------------------------------------->
			<div id="boow" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Best Out of Waste</h3><br />
							<h4>Rules For Best out of Waste :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> maximum 3 participants in a group.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Students from other institutes may also take part.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> There is no limit for your imagination so you can make whatever you want but it should not hurt any one in any respect.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Along with your painting or sketch you will need to describe about your painting on A4 sheet provived.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Contestant are not allowed to use their mobile or any cheating paper during the competition.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Do not bite(copy) someone else work.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Only chart papers and A4 sheet will be provided.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> We provide basic materials such as-newspaper, disposal, ice- cream stick, cello tape, fevicol, thermocol etc.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> All the contestant must complete their moral within one hour.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Group switching are not allowed.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> If any contestant misbehaves during the competition he or she will be disqualified.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Decision by the judges will be final.There is no appeal process.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> You can bring out your own materials but it should be waste materials; otherwise you will be disqualified.<br />  
                            </p>
                            </blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
									<span>
										Jaihind Kumar<br />
				​                        Vivek Singh<br />
										Monika Singh<br />
									<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
									<span>
										Date : 6<sup>th</sup> April<br />
										Venue : AG Department<br />
										Time : 11:00 AM Onwards<br />
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="eboowtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pboowtxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="boowbtn" CssClass="btn btn-default" Text="Submit" OnClick="boowbtn_Click"/><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Documentary Video --------------------------------------------------------->
			<div id="dv" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Documentary Video</h3><br />
							<h4>Rules For Documentary Video :</h4>
                            <blockquote>
							<h4>Topic : <span style="font-weight:normal;font-size:16px;font-family:muli;color:skyblue;">Effects of Gaming on today's youth</span></h4>
							<p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Each Team has 4 to 5 Members excluding cameraman.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Time limit of the video should be 4 to 4:30 Minutes, Videos exceeding the time limit will be disqualified.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The documentary must be related to the theme.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Documentary will only be accepted in 720p resolution.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Participant’s feed must be in the documentary, else documentary will not be considered.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Documentary must be submitted till 6th of April till 10 A.M., otherwise it will not be accepted.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Participants must provide their proper details (name, phone no., e-mail address, college ID card).<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> If documentary is not on the given topic, then it will be disqualified.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Registrations are to be done by CVGClub.org.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
									<span>
										Harshit Goyal<br />
				​                        Rishabh Rai<br />
									<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
									<span>
										Date : 6<sup>th</sup> April<br />
										Venue : CS-IT Dept. Lab-1<br />
										Time : 10:00 AM Onwards<br />
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="edvtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pdvtxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="dvbtn" CssClass="btn btn-default" Text="Submit" OnClick="dvbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- PPT Presentation --------------------------------------------------------->
			<div id="pptp" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">PPT Presentation</h3><br />
							<h4>Rules For PPT Competition :</h4>
                            <blockquote>
							<h4>Topic : 
								<span style="font-weight:normal;font-size:16px;font-family:muli;color:skyblue;">
									[ NOTE: Choose any one. ]<br />
									1 : Wireless Energy Transmission<br />
                                    2 : The Power of Social Media<br />
                                    3 : How can save Environment<br />
								</span>
							</h4>
							<p>
				<span class="glyphicon glyphicon-arrow-right"></span> All participants are informed that the PPT are accepted firstly inform by email id then accepted the PPT. email id is rahulkannaujiya4455@gmail.com<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> All the participants are allowed to use maximum of 15 slides in their PowerPoint presentation.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The participants should make their Title headlines.<br />
                                &ensp; For Example:- Population Growth (Description)  /  Population grow by 40% (Headline).<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The titles Used by The participants must tell the topics.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The presenter must use the proper language skills to make the audience and judges to get the theme correctly and clearly.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> It can be in Both Hindi and English (prefer English if you can).<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The participant should have a proper dress up and body language, any vulgar behavior is not at all tolerated.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> If anybody was found doing that his/her name is removed from participant list.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The participant must complete his/her presentation in the allotted time period only as per rules.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> No extra time is given and no excuses are heard.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The participant should give their names with the topic of presentation to the event in charge by one week before the event.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The participant should be present in the event venue, an hour before it was started over.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> It was allowed to give presentation at the time of his/her turn only.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> All the audiences are asked to “KEEP PIN DROP SILENCE” in the presentation room.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> It may directly or indirectly effect the participant’s performance.<br /> 
                                <span class="glyphicon glyphicon-arrow-right"></span> If anybody is found doing nuisance activity will be sent out of the room immediately.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The maximum time limit provided to each participant is 5 min.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> If the participant needs laser light and scale for highlighting points he/she should get these by themselves none of these items are provided by us.<br /> 
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Anchal Singh<br />
                ​                        Rahul Kannaujia<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 5<sup>th</sup> April<br />
                                        Venue : CS-IT Dept. Lab-1<br />
                                        Time : 01:30 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="epptptxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="ppptptxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="pptpbtn" CssClass="btn btn-default" Text="Submit" OnClick="pptpbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Treasure Hunt --------------------------------------------------------->
			<div id="th" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Treasure Hunt</h3><br />
							<h4>Rules For Treasure Hunt :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> There will be two rounds.<br />
                                &nbsp&nbsp&nbsp&nbsp 1) First is questioning {question will be related to SIR CHHOTU RAM, CCSU & CURRENT AFFAIR}<br />
                                &nbsp&nbsp&nbsp&nbsp 2) Second is search for clue.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> There will be five teams {for participants in each team}.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> All team members will go together for searching the clue.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Phones are not allowed.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> 30 minute will provided for searching the each clue.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The team that will search all the clue first will be winning team.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> No unfair means and vehicles should be used during the game. <br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Area college campus till applied science.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Each clue will lead the team to the next clue.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> There will be five clue at different places for team.
                            </p></blockquote>
                            <h4>Rules For Round 1 :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> It is a Knock-out round.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The rules for the game will be announced on the spot.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Only winning team will qualify for finals.<br />
                            </p></blockquote>
                            <h4>Rules For Round 2 :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Teams have to reach the treasure by way gathering the clues planted by organization.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> All the clues found by participation during the hunt must be submitted to the organizers at the end of the event; only then the team will be eligible for judgment.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> teams will get the successive clue from the place that the current one leads to.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> treasure hunt should be completed within the time or less than that and the duration for the hunt will be announced on the spot.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> team that reached out to the treasure FIRST will be the winner.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> organizing committee reserves the right to change the venue, time and rules if desired.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Natwar Singh<br />
                ​                        Vishwajeet Singh<br />
                ​                        Avdhesh Kumar<br />
                ​                        Virenchi Kr. Vats<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
										Date : 5<sup>th</sup> April<br />
                                        Venue : SCRIET Campus<br />
                                        Time : 01:30 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="ethtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pthtxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="thbtn" CssClass="btn btn-default" Text="Submit" OnClick="thbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Writing Skills --------------------------------------------------------->
			<div id="ws" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Writing Skills</h3><br />
							<h4>Rules For Poetry Writing :</h4>
                            <blockquote>
							<h4>Topic : <span style="font-weight:normal;font-size:16px;font-family:muli;color:skyblue;">Topic will be provided on the spot.</span></h4>
							<p>
                                <span class="glyphicon glyphicon-arrow-right"></span> An event of story writing/drama writing based on picture or quote provided.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Picture or quote will be provided at instant.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Candidate may use either English or Hindi language.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Each candidate will be provided 1 hour after providing the picture or quote to think and write.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> No extra time will be given.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />  
                            </p></blockquote>
                            <h4>Rules For Article Writing :</h4>
                            <blockquote>
							<h4>Topic : <span style="font-weight:normal;font-size:16px;font-family:muli;color:skyblue;">Topic will be provided on the spot.</span></h4>
							<p>
                                <span class="glyphicon glyphicon-arrow-right"></span> An event of story writing/drama writing based on picture or quote provided.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Picture or quote will be provided at instant.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Candidate may use either English or Hindi language.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Each candidate will be provided 1 hour after providing the picture or quote to think and write.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> No extra time will be given.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />  
                            </p></blockquote>
                            <h4>Rules For Drama/Story Writing :</h4>
                            <blockquote>
							<h4>Topic : <span style="font-weight:normal;font-size:16px;font-family:muli;color:skyblue;">Topic will be provided on the spot.</span></h4>
							<p>
                                <span class="glyphicon glyphicon-arrow-right"></span> An event of story writing/drama writing based on picture or quote provided.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Picture or quote will be provided at instant.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Candidate may use either English or Hindi language.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Each candidate will be provided 1 hour after providing the picture or quote to think and write.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> No extra time will be given.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />  
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Prashant Patel<br />
										Abhisek Kr. Singh<br />
										Shiva Dubey<br />
										Ajay Pratap<br />
										Manish Prajapati<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 5<sup>th</sup> April<br />
                                        Venue : EC Class Room<br />
                                        Time : 02:30 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="ewstxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pwstxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<div class="form-control"><asp:CheckBox runat="server" ID="wsptrytxt" Text="&ensp;Poetry Writing" /></div>
									<div class="form-control"><asp:CheckBox runat="server" ID="wsartcltxt" Text="&ensp;Article Writing" /></div>
									<div class="form-control"><asp:CheckBox runat="server" ID="wsdrmtxt" Text="&ensp;Drama/Story Writing" /><br /></div>
									<asp:Button runat="server" ID="wsbtn" CssClass="btn btn-default" Text="Submit" OnClick="wsbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Graffiti --------------------------------------------------------->
			<div id="grft" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Graffiti</h3><br />
							<h4>Rules For Graffiti :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Colors and chalks will be provided.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Students from other institutes may also take part.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> There is no limit for your imagination so you can make whatever you want but it should not hurt anyone in any respect.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> A group will contain only 3 members.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Contestant are not allowed to use their mobile or any cheating paper during the competition.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Do not bite (copy) someone else work.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Time Limit : 45 min.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Harshita Padey<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 6<sup>th</sup> April<br />
                                        Venue : CS-IT Department Walls<br />
                                        Time : 10:00 AM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> & 2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="egrfttxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pgrfttxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="grftbtn" CssClass="btn btn-default" Text="Submit" OnClick="grftbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Quiz --------------------------------------------------------->
			<div id="qz" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Quiz</h3><br />
							<h4>Rules For Quiz :</h4>
                            <blockquote>
							<h4>Topic : <span style="font-weight:normal;font-size:16px;font-family:muli;color:skyblue;">General, Technical & Sports</span></h4>	
							<p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Only team entries are allowed.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> You have to register individually.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> A team shall consist of two persons.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The decision of the quiz master will be final and will NOT be subjected to any change.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Participants shall NOT be allowed to use phones or any other electronic devices.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Audience shall NOT give any type of hints to the competitors.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> If any teams use unfair means, it would be immediately disqualified from the competition.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Replacement of any participants of a team is NOT allowed after registration.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Passing of questions are not allowed.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Chandan Kushwaha<br />
										Aditi Awasthi<br />
										Nikhil Singh<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
										Date : 6<sup>th</sup> April<br />
                                        Venue : EC Seminar Hall<br />
                                        Time : 10:00 AM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="eqztxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pqztxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="qzbtn" CssClass="btn btn-default" Text="Submit" OnClick="qzbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Sketching --------------------------------------------------------->
			<div id="sktch" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Sketching</h3><br />
							<h4>Rules For Sketching :</h4>
                            <blockquote>
							<h4>Topic : <span style="font-weight:normal;font-size:16px;font-family:muli;color:skyblue;">Change the mentality so you can change the world.</span></h4>	
							<p>
                                <span class="glyphicon glyphicon-arrow-right"></span> It is a solo event.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Along with your sketch you will need to describe about your sketch on A4 sheet.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> There is no limit for your imagination so you can make whatever you want but it should not hurt any one in any respect.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Mobile phones and gadgets are not allowed.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Contestant are not allowed to use their mobile or any cheating paper during the competition.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Do not bite(copy) someone else work.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Time 1 hr only.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> You are requested to bring own tools including colours, pencil etc for your convenience.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> All the contestant must complete their moral within one hour.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> All the paintings must be completed on provided canvas.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> If any contestant misbehaves during the competition he or she will be disqualified.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Decision by the judges will be final.There is no appeal process.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Only pencil chart paper sharpener eraser will be provided participants can take their own requirements e.g. compass, scale etc. (but not colour)<br />  
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Manish Mandal<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 6<sup>th</sup> April<br />
                                        Venue : ME Dept. Classroom<br />
                                        Time : 10:00 AM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> & 2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="esktchtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="psktchtxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="sktchbtn" CssClass="btn btn-default" Text="Submit" OnClick="sktchbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Painting --------------------------------------------------------->
			<div id="pnt" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Painting</h3>
							<h4>Rules For Painting :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> colours and brushes will be provided.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Students from other institutes may also take part.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> There is no limit for your imagination so you can make whatever you want but it should not hurt any one in any respect.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> A group contain only 2 members.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Contestant are not allowed to use their mobile or any cheating paper during the competition.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Do not bite(copy) someone else work.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Time 45 min.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Manish Mandal<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 6<sup>th</sup> April<br />
                                        Venue : EC Department<br />
                                        Time : 10:00 AM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> & 2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="epnttxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="ppnttxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="pntbtn" CssClass="btn btn-default" Text="Submit" OnClick="pntbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Code Hunt --------------------------------------------------------->
			<div id="ch" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Code Hunt</h3><br />
							<h4>Rules For Code Hunt :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> The duration of the event will be 1:30 hours.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The event consists of 2 rounds.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> First round is multiple type questions.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Second round is numerical based questions.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The teams will write codes for solving some of the trickiest numerical problems which can't be solved by using a calculator.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Mobiles and calculator is not allowed.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Member cannot interact with each other during the event. <br />   
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Akash Verma<br />
										Ramsha Hasib<br />
										Shiv Kumar<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 5<sup>th</sup> April<br />
                                        Venue : CS-IT Dept. Lab-4<br />
                                        Time : 01:30 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="echtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pchtxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="chbtn" CssClass="btn btn-default" Text="Submit" OnClick="chbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Model Making --------------------------------------------------------->
			<div id="mm" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Model Making</h3><br />
							<h4>Rules For Model Making :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Maximum four members allowed in one team.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> At least one member is required to describe the model.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Discipline must be maintain in campus.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> No harmful and flammable things are allowed in model.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges are final and no one can challenge the judgment.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Maintain a file related to their model in which they show all details, theory and advantage of model etc.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Model will be submitted before three days of event date.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Model may be of two types working and non-working.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Model making members should be of same institute for a group or team.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Working model must be in working condition at the time examining.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Name of the Model should be given at the time of registration.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Model with demonstration has to be presented one day prior to event.
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Lokesh Kumar<br />
										Chandan Singh<br />
										Bharat Singh<br />
										Amrita Dubey<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 5<sup>th</sup> April<br />
                                        Venue : ME Dept. Corridor<br />
                                        Time : 10:00 AM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="emmtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pmmtxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="mmbtn" CssClass="btn btn-default" Text="Submit" OnClick="mmbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- LAN Gaming --------------------------------------------------------->
			<div id="lg" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">LAN Gaming</h3><br />
							<h4>General Rules :</h4>
                            <blockquote><p>
                                <span style="color:red"><span class="glyphicon glyphicon-arrow-right"></span> NOTE: These rules apply to everyone attending. They can be changed without notice.</span><br />
                                <span class="glyphicon glyphicon-arrow-right"></span> You are responsible for your actions and equipment.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> We are not liable for anything that happens to you and your equipment.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Do not attempt to steal items from the event or anyone else, legal consequences will be there.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Cheating is an offence. Doing so may lead to disqualification.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Do not bring any type of hacks/viruses/etc. to the event.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Listen to those in charge.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> We reserve the right to remove anyone from premises for any reason we fit.<br />  
                            </p></blockquote>
                            <h4>PUBG Mobile Competition Rules :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> There will be no solo game.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The tournament will be knock out.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The team (duo/squad) who wins their 1st stage match advances to the next stage.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> All the players/teams have to bring their own smartphone/Laptop along with their own internet connection.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Emulator player can carry their own laptop with their own internet connection.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Any lag/network issue is not our concern; You will be responsible for your internet connection and device.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> All the player have to bring their own team mates otherwise we will provide randomly team mates.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Game settings:<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span> Map : Only Erangel match<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span> Mode : TPP only<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span> Graphic : As per your device<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span> SFX : Disable<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span> Music : Disable<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Team messages are allowed.<br />
                            </p></blockquote>
                            <h4>Rules For NFS Most Wanted :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Only use of Game Version: NFS Most Wanted 1.3<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> General Competition Method: 4 players<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Rules for Preliminaries:<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Game Type: Circuit, Sprint<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  The Circuit is for 2 rounds<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Players getting the 1st position shall qualify for the next round.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Rules for the tournament:<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  The tournament will be knock out.<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  The player who wins their 1st stage match advances to the next stage.<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  There will not be any match played for the third spot.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Game Settings<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Courses: Course selection will done by the Game Administrator<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Car Settings: All cars are available.<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Race Mode Options:<br />
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span> Nitrous: ON<br />
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Performance Matching: OFF<br />
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Units: Player's own discretion<br />
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Collision Detection: ON<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Player Mode Options:<br />
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Game Moment Camera: OFF<br />
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Car Damage: OFF<br />
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-circle-arrow-right"></span>  Rear View Mirror: Player's own discretion.<br />
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Players are provided with a standard keyboard and mouse.<br /> 
                                &nbsp&nbsp&nbsp&nbsp<span class="glyphicon glyphicon-triangle-right"></span>  Controllers and Steering Wheel are allowed.<br />
                            </p></blockquote>
							<h4>Penalty for Unfair Play :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Use of any cheat program<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Intentional disconnection<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Use of any settings exceeding standard and permitted setting<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> If the match is disrupted due to unnecessary chatting, the player may be given a warning or lose by default at the referee’s sole discretion.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Upon discovery of any player committing any violations regarded as unfair play, that player will be disqualified from the Tournament/Preliminaries.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> During the course of any match, the operations staff and/or referee may determine other actions to be unfair play at any time.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Hamza Usmani<br />
										Jaikishan Mohanty<br />
										Ankit Gupta<br />
										Amrit Yadav <br />
										Sahil Habib<br />
										Amir Suhail<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 6<sup>th</sup> April<br />
                                        Venue : CS-IT Dept. Lab-4<br />
                                        Time : 10:00 AM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participate in LAN Gaming ( NFS Most Wanted )</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="elgnfstxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="plgnfstxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="lgnfsbtn" CssClass="btn btn-default" Text="Submit" OnClick="lgnfsbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participate in LAN Gaming ( PUBG Mobile )</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="tnlgptxt" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-navicon"></i> Name of Team</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="elgp1txt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Captain's Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="elgp2txt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Player2's Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="elgp3txt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Player3's Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="elgp4txt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Player4's Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="plgptxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Captain's Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="lgpbtn" CssClass="btn btn-default" Text="Submit" OnClick="lgpbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Web Designing --------------------------------------------------------->
			<div id="wd" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Web Designing</h3>
							<h4>Rules For Web Designing :</h4>
                            <blockquote>
							<p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Participants have to design the micro website with the help of HTML and CSS only.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Only Windows note pad is allowed for the designing.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Every participant must be using the university logo & CVGClub logo.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The time limit is 30 minutes.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The website theme will be given at the time of the event.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The judgement is based on the designing, color combination & the functioning of the website.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The code of the design must be clear.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> If more than one design will be final by judges, the final judgment is given on the behalf of code clarity and the statement of the code.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> If any participant is used other than HTML & CSS, he/she will be eliminated from the event.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The judgement of judges is final.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Akash Kumar Jaiswal<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 6<sup>th</sup> April<br />
                                        Venue : CS-IT Dept. Lab-2<br />
										Time : 10:00 AM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="ewdtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pwdtxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="wdbtn" CssClass="btn btn-default" Text="Submit" OnClick="wdbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Oratory Skills --------------------------------------------------------->
			<div id="os" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Oratory Skills</h3><br />
							<h4>Rules For Declamation :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Participants have to deliver the famous speeches given by great leaders.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Time limit is 3 minutes.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Warning bell will be rung after 2 minutes.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Language can be Hindi or English.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Marking will be done on the basis of expression, delivery, modulation and content.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Please avoid the usage of explicit or vulgar language.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Candidates can carry paper with them.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Decision of the judges will be final.<br />
                            </p></blockquote>
                            <h4>Rules For MadAd :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Topics will be given on the spot.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Participants will be given 2 minutes to think and 2 minutes to perform on stage.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> You will be given the name of a product which you have to advertise.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Usage of brand names present in the market is prohibited.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Warning bell will be rung after 1 minute and 30 second.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> You can use taglines, short phrases or poems to make your act more creative.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> No vulgar language is allowed.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Decision of the judges will be final.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Marking will be done on the basis of content, expression, creativity and style.<br />
                                
                            </p></blockquote>
                            <h4>Rules For Debate (Hindi/English) :</h4>
                            <blockquote>
							<h4>Topic : 
								<span style="font-weight:normal;font-size:16px;font-family:muli;color:skyblue;">
									[ NOTE: Choose any one. ]<br />
									1 : Education should focus more on Science & Maths rather than Arts and Music.<br />
									2 : Feminism is irrelevant in 21st Century.<br />
								</span>
							</h4>
							<p>
                                <span class="glyphicon glyphicon-arrow-right"></span> A College/Institution can send one team comprising of 2 speakers boys, girls or both.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The medium of expression will be Hindi/English. One speaker shall speak for the motion and the other<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> against. It must be intimated to the Stage Secretary before the commencement of the competition.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The programme and the participants shall speak after drawing lots to decide, who is to speak first, second and so on.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The time allotted to each participant is not less than 3 minutes and not more than 5 minutes.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Only two best speakers one for the motion and other against the motion will be recommended from each zone.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The first speaker will be the leader of the house and he/she also wind up the Debate.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Deeksha Chaturvedi<br />
										Harikesh Yadav<br />
										Enayat Ansari<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 5<sup>th</sup> April<br />
                                        Venue : EC Seminar Hall<br />
										Time : 01:30 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="eostxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="postxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<div class="form-control"><asp:CheckBox runat="server" ID="osspchtxt" Text="&ensp;Declamation" /></div>
									<div class="form-control"><asp:CheckBox runat="server" ID="ostrncttxt" Text="&ensp;MadAd" /></div>
									<div class="form-control"><asp:CheckBox runat="server" ID="osbdttxt" Text="&ensp;Debate" /><br /></div>
									<asp:Button runat="server" ID="osbtn" CssClass="btn btn-default" Text="Submit" OnClick="osbtn_Click"/><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Face Painting --------------------------------------------------------->
			<div id="fp" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Face Painting</h3><br />
							<h4>Rules For Face Painting :</h4>
                            <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                <span class="glyphicon glyphicon-arrow-right"></span> colours and brushes will be provided.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Students from other institutes may also take part.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> There is no limit for your imagination so you can make whatever you want but it should not hurt any one in any respect.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> A group contain only 2 members.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Contestant are not allowed to use their mobile or any cheating paper during the competition.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Do not bite(copy) someone else work.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Time 45 min.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
										Anjali Jaiswal<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 5<sup>th</sup> April<br />
                                        Venue : EC Department<br />
										Time : 10:00 AM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> & 2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="efptxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pfptxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="fpbtn" CssClass="btn btn-default" Text="Submit" OnClick="fpbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Dancing --------------------------------------------------------->
			<div id="dnc" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Dancing</h3><br />
							<h4>Rules For Dancing :</h4>
							<blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                <span class="glyphicon glyphicon-arrow-right"></span> Updating Soon
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Lavit Galiyan<br />
										Aashish Sikarwar<br />
										Gaurav Yadav<br />
										Harsh Singh<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 6<sup>th</sup> April<br />
                                        Venue : Auditorium<br />
										Time : 02:30 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="ednctxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pdnctxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="dncbtn" CssClass="btn btn-default" Text="Submit" OnClick="dncbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Singing --------------------------------------------------------->
			<div id="sng" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Singing</h3><br />
							<h4>Rules For Singing :</h4>
							<blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                <span class="glyphicon glyphicon-arrow-right"></span> All competitors should be registered at www.cvgclub.org.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The time limit is 3 minutes, A warning will be given at the end of 2 minutes and the final call will be given at the end of 3 minutes.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Marks will be deducted after the exceeding the time.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Participants will be judged on the clarity of words, harmony, tune, rhythm, expression, discipline, timing and presentation.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Participants can sing Hindi and folk songs.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Participants can bring their instruments or instrumental music with self to perform.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Every participant must bring his/her college ID card with them, without ID card participants is not allowed to participate.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> There can be max 2 members in duet singing.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The participants got selected in the prelims/audition are only allowed to perform in the competition.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The decision of the judges will be final under all circumstances.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Rishabh Rai<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 6<sup>th</sup> April<br />
                                        Venue : Auditorium<br />
										Time : 02:30 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> & 2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="esngtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="psngtxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="sngbtn" CssClass="btn btn-default" Text="Submit" OnClick="sngbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Poetry --------------------------------------------------------->
			<div id="ptry" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Poetry</h3><br />
							<h4>Rules For Self Written Poetry Recitation:</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Poetry should be self-written and should be submitted before recitation.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Maximum time limit is 300 sec. Extra time will lead to negative marking.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> No objectionable wording and expression should be used.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Participations have to pass the cutoff round.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Failure to complete the will result disqualification.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Poetry should be submitted before time it will be crosschecked and only selected ones will be allowed.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Presenting any other poetry except the submitted one will lead to disqualification.<br />   
                            </p></blockquote>
                            <h4>Rules For Poetry Recitation of Famous Poet:</h4>
                             <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Any poetry of a poet may be recited but should be submitted before recitation.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Maximum time limit is 300 sec. Extra time will lead to negative marking.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> No objectionable wording and expression should be used.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Participations have to pass the cutoff round.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Failure to complete the will result disqualification.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Decision of judges will be final.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Poetry should be submitted before time it will be crosschecked and only selected ones will be allowed.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Presenting any other poetry except the submitted one will lead to disqualification.<br />   
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Aman Singh<br />
										Swati Tyagi<br />
										Rahul Kumar<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 6<sup>th</sup> April<br />
                                        Venue : EC Seminar Hall<br />
										Time : 12:00 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="eptrytxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pptrytxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<div class="form-control"><asp:CheckBox runat="server" ID="ptryswtxt" Text="&ensp;Self Written Poetry" /></div>
									<div class="form-control"><asp:CheckBox runat="server" ID="ptryfptxt" Text="&ensp;Poetry of Famous Poet" /></div>
									<asp:Button runat="server" ID="ptrybtn" CssClass="btn btn-default" Text="Submit" OnClick="ptrybtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Photography --------------------------------------------------------->
			<div id="phtg" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Photography</h3><br />
							<h4>Rules For Photography :</h4>
                            <blockquote><p>
                                <span class="glyphicon glyphicon-arrow-right"></span> Each participant has to give only 1 photograph to present himself/herself.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The photographs send to us will only be valid other photographs will not be accepted.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The photographs should not be edited by any software.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Each photograph must have story. If you are selected in this event you have to explain what the photographs mean for you and why you took it.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> You have to give the caption below the photographs that why you took it.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The photographs must be taken with in the university campus.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> If any type of misbehaviour, indiscipline is noticed, participants would be disqualified immediately.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The decision of the judges will be final.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> The contestants will send the final photographs to email id - <a href="mailto:cvgphotography2019@gmail.com" class="link">cvgphotography2019@gmail.com</a><br />
                                <span class="glyphicon glyphicon-arrow-right"></span> Last date of submission is 5th of April 2019 till 11:59 PM.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Pragyan Kumar<br />
										Kamlesh Sharma<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 6<sup>th</sup> April<br />
                                        Venue : CS-IT Dept. Lab-1<br />
										Time : 11:30 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="ephtgtxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pphtgtxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="phtgbtn" CssClass="btn btn-default" Text="Submit" OnClick="phtgbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Rangoli --------------------------------------------------------->
			<div id="rngly" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Rangoli</h3><br />
							<h4>Rules For Rangoli :</h4>
                            <blockquote>
							<h4>Topic : 
								<span style="font-weight:normal;font-size:16px;font-family:muli;color:skyblue;">
									<br />Updating Soon
								</span>
							</h4>
							<p>
                                <span class="glyphicon glyphicon-arrow-right"></span> max participants are 3 and min is one.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> five basic colours will be provided.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> you are allowed to bring your own colours only no other material is allowed.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> max time 1 hr.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> it should be theme based otherwise you will be disqualified.<br />
                                <span class="glyphicon glyphicon-arrow-right"></span> printed or any other material are not allowed.<br />
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Santoshi Yadav<br />
                                        Diya Gupta<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 5<sup>th</sup> April<br />
                                        Venue : EC Department<br />
										Time : 02:30 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> & 2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="ernglytxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="prnglytxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="rnglybtn" CssClass="btn btn-default" Text="Submit" OnClick="rnglybtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
			<!----------------------------------------------------- Dramatics --------------------------------------------------------->
			<div id="drmtcs" class="box-2" style="z-index:9;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8">
							<h3 style="font-weight:bold;text-align:center;font-family:'Finger Paint';margin-top:12vh;color:aqua;">Dramatics</h3><br />
							<h4>Rules For Dramatics :</h4>
                            <blockquote style="border-color:lightblue;"><p class="ev-rule-txt">
                                <span class="glyphicon glyphicon-arrow-right"></span> Updating Soon
                            </p></blockquote>
							<div class="row">
								<div class="col-md-4 text-center"><br />
									<h4>Core Member</h4>
                                    <span>
                                        Ajay Yadav<br />
										Mudit Shrivastav<br />
										<a href="Contact_Us" data-toggle="tooltip" data-placement="top" title="for Contact Support" target="_blank" class="link">For Queries Click Here <span class="glyphicon glyphicon-arrow-right"></span></a>
									</span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Event Details</h4>
                                    <span>
                                        Date : 5<sup>th</sup> April<br />
                                        Venue : Auditorium<br />
										Time : 02:30 PM Onwards<br />
                                    </span>
								</div>
								<div class="col-md-4 text-center"><br />
									<h4>Prizes for Winners</h4>
									<span>
										<b>1<sup>st</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
										<b>2<sup>nd</sup> Prize :</b><br />
										 Trophy, Certificate.<br />
									</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-2"></div>
								<div class="col-md-8 text-center"><br /><br /><br />
									<h4><i class="fa fa-sign-in"></i> Fill the Creditionals for Participation</h4><hr />
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="edrmtcstxt" TextMode="Email" MaxLength="50" CssClass="effect-18 txt" placeholder="" style="text-transform:lowercase;"></asp:TextBox>
										<label><i class="fa fa-envelope-o"></i> Your Email ID</label>
										<span class="focus-border"></span>
									</div>
									<div class="input-effect text-left">
        								<asp:TextBox runat="server" ID="pdrmtcstxt" TextMode="Password" MaxLength="20" CssClass="effect-18 txt" placeholder=""></asp:TextBox>
										<label><i class="fa fa-key"></i> Enter Password</label>
										<span class="focus-border"></span>
									</div>
									<asp:Button runat="server" ID="drmtcsbtn" CssClass="btn btn-default" Text="Submit" OnClick="drmtcsbtn_Click" /><br />
									<a href="Sign_Up" data-toggle="tooltip" data-placement="top" title="Register Here" target="_blank" class="btn btn-default" style="margin-top:10px;">Not Registered..?</a>
								</div>
								<div class="col-md-2"></div>
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
		<!----------------------------------------------------- Informer and alert box ------------------------------------------------------------>
		<asp:Label runat="server" ID="informer"></asp:Label>
		<asp:Label runat="server" ID="show"></asp:Label>
		<asp:Label runat="server" ID="showevent"></asp:Label>
		<div class="alert-box w3-animate-zoom" style="z-index:12;">
			<div class="alert-dialog">
				<span style="font-family:'Special Elite';font-size:20px;"><i class="fa fa-bullhorn"></i>&ensp;IMPORTANT ALERT</span><hr />
				<asp:Label runat="server" ID="alerttext">
					
				</asp:Label>
				<hr /><button id="alert-close-btn" type="button" class="btn btn-default">Done</button>
			</div>
		</div>
    </form>
	<script src="../JS/MyFooterJS.js"></script>
	<script src="../JS/myParticles.js"></script>
	<script type="text/javascript">
		$(".droplist-button").click(function () {
			$(".droplist-box").toggle("scale");
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});
		
		$(".boow-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#boow").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".dv-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#dv").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".pptp-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#pptp").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".th-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#th").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".ws-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#ws").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".grft-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#grft").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".qz-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#qz").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".sktch-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#sktch").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".pnt-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#pnt").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".ch-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#ch").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".mm-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#mm").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".lg-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#lg").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".wd-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#wd").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".os-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#os").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".fp-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#fp").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".dnc-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#dnc").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".sng-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#sng").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".ptry-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#ptry").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".phtg-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#phtg").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".rngly-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#rngly").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		$(".drmtcs-button").click(function () {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#drmtcs").slideDown();
			if ($("#listm").text() == "Event List")
				$("#listm").text("Close List");
			else if ($("#listm").text() == "Close List")
				$("#listm").text("Event List");
		});

		if ($("#showevent").text() == "Boow") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#boow").slideDown();
		}
		else if ($("#showevent").text() == "Dv") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#dv").slideDown();
		}
		else if ($("#showevent").text() == "Pptp") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#pptp").slideDown();
		}
		else if ($("#showevent").text() == "Th") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#th").slideDown();
		}
		else if ($("#showevent").text() == "Ws") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#ws").slideDown();
		}
		else if ($("#showevent").text() == "Grft") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#grft").slideDown();
		}
		else if ($("#showevent").text() == "Qz") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#qz").slideDown();
		}
		else if ($("#showevent").text() == "Sktch") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#sktch").slideDown();
		}
		else if ($("#showevent").text() == "Pnt") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#pnt").slideDown();
		}
		else if ($("#showevent").text() == "Ch") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#ch").slideDown();
		}
		else if ($("#showevent").text() == "Mm") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#mm").slideDown();
		}
		else if ($("#showevent").text() == "Lg") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#lg").slideDown();
		}
		else if ($("#showevent").text() == "Wd") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#wd").slideDown();
		}
		else if ($("#showevent").text() == "Os") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#os").slideDown();
		}
		else if ($("#showevent").text() == "Fp") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#fp").slideDown();
		}
		else if ($("#showevent").text() == "Dnc") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#dnc").slideDown();
		}
		else if ($("#showevent").text() == "Sng") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#sng").slideDown();
		}
		else if ($("#showevent").text() == "Ptry") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#ptry").slideDown();
		}
		else if ($("#showevent").text() == "Phtg") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#phtg").slideDown();
		}
		else if ($("#showevent").text() == "Rngly") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#rngly").slideDown();
		}
		else if ($("#showevent").text() == "Drmtcs") {
			$(".droplist-box").slideUp();
			$(".title-cvg").slideUp();
			$(".box-2").slideUp();
			$("#drmtcs").slideDown();
		}

		$("#boowbtn").attr("disabled", true);
		$("#dvbtn").attr("disabled", true);
		$("#pptpbtn").attr("disabled", true);
		$("#thbtn").attr("disabled", true);
		$("#wsbtn").attr("disabled", true);
		$("#grftbtn").attr("disabled", true);
		$("#qzbtn").attr("disabled", true);
		$("#sktchbtn").attr("disabled", true);
		$("#pntbtn").attr("disabled", true);
		$("#chbtn").attr("disabled", true);
		$("#mmbtn").attr("disabled", true);
		$("#lgnfsbtn").attr("disabled", true);
		$("#lgpbtn").attr("disabled", true);
		$("#wdbtn").attr("disabled", true);
		$("#osbtn").attr("disabled", true);
		$("#fpbtn").attr("disabled", true);
		$("#dncbtn").attr("disabled", true);
		$("#sngbtn").attr("disabled", true);
		$("#ptrybtn").attr("disabled", true);
		$("#phtgbtn").attr("disabled", true);
		$("#rnglybtn").attr("disabled", true);
		$("#drmtcsbtn").attr("disabled", true);

		$("#pboowtxt").focus(function () {
			$("#boowbtn").attr("disabled", false);
		});
		$("#pdvtxt").focus(function () {
			$("#dvbtn").attr("disabled", false);
		});
		$("#ppptptxt").focus(function () {
			$("#pptpbtn").attr("disabled", false);
		});
		$("#pthtxt").focus(function () {
			$("#thbtn").attr("disabled", false);
		});
		$("#pwstxt").focus(function () {
			$("#wsbtn").attr("disabled", false);
		});
		$("#pgrfttxt").focus(function () {
			$("#grftbtn").attr("disabled", false);
		});
		$("#pqztxt").focus(function () {
			$("#qzbtn").attr("disabled", false);
		});
		$("#psktchtxt").focus(function () {
			$("#sktchbtn").attr("disabled", false);
		});
		$("#ppnttxt").focus(function () {
			$("#pntbtn").attr("disabled", false);
		});
		$("#pchtxt").focus(function () {
			$("#chbtn").attr("disabled", false);
		});
		$("#pmmtxt").focus(function () {
			$("#mmbtn").attr("disabled", false);
		});
		$("#plgnfstxt").focus(function () {
			$("#lgnfsbtn").attr("disabled", false);
		});
		$("#plgptxt").focus(function () {
			$("#lgpbtn").attr("disabled", false);
		});
		$("#pwdtxt").focus(function () {
			$("#wdbtn").attr("disabled", false);
		});
		$("#postxt").focus(function () {
			$("#osbtn").attr("disabled", false);
		});
		$("#pfptxt").focus(function () {
			$("#fpbtn").attr("disabled", false);
		});
		$("#pdnctxt").focus(function () {
			$("#dncbtn").attr("disabled", false);
		});
		$("#psngtxt").focus(function () {
			$("#sngbtn").attr("disabled", false);
		});
		$("#pptrytxt").focus(function () {
			$("#ptrybtn").attr("disabled", false);
		});
		$("#pphtgtxt").focus(function () {
			$("#phtgbtn").attr("disabled", false);
		});
		$("#prnglytxt").focus(function () {
			$("#rnglybtn").attr("disabled", false);
		});
		$("#pdrmtcstxt").focus(function () {
			$("#drmtcsbtn").attr("disabled", false);
		});




		if ($("#informer").text() == "ParticipatedSuccessfully") {
			$("#alerttext").text("Participation added successfully.");
			$(".alert-box").show();
		}
		else if($("#informer").text() == "AlreadyParticipated") {
			$("#alerttext").text("Already participated in this event.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "UpdateYourProfile") {
			$("#alerttext").text("Please login and update your Profile before Participation.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "NotRegistered") {
			$("#alerttext").text("Please make sure you have an account on CVGClub. Its look like you are not registered on CVGClub.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "InvalidUserIDorPassword") {
			$("#alerttext").text("Invalid User ID or Password.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "QueryNotSubmitted") {
			$("#alerttext").text("Something went wrong, Please try again later.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "ShouldNotBlank") {
			$("#alerttext").text("Must be filled Email ID and Password both.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "ChooseAnyOne") {
			$("#alerttext").text("Please choose at least one event for participation.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "TeamNameSame") {
			$("#alerttext").text("Team name already exist.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "PlayerOneAlreadyParticipated") {
			$("#alerttext").text("Player 1 already registered.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "PlayerTwoAlreadyParticipated") {
			$("#alerttext").text("Player 2 already registered.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "PlayerThreeAlreadyParticipated") {
			$("#alerttext").text("Player 3 already registered.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "PlayerFourAlreadyParticipated") {
			$("#alerttext").text("Player 4 already registered.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "NotRegistered4") {
			$("#alerttext").text("Player 4 not registered.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "NotRegistered3") {
			$("#alerttext").text("Player 3 not registered.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "NotRegistered2") {
			$("#alerttext").text("Player 2 not registered.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "NotRegistered1") {
			$("#alerttext").text("Player 1 not registered.");
			$(".alert-box").show();
		}
		else if ($("#informer").text() == "SignedUp") {
			$("#alerttext").text("Registered Successfully. Now You can participate by choosing events from list and filling by registered Email ID & Password.");
			$(".alert-box").show();
		}

	</script>
</body>
</html>
