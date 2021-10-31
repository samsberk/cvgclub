<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_Student_Profile.aspx.cs" Inherits="Student_Block_Update_Student_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CVGClub - Student Block | Update Profile | SCRIET CVG Club</title>
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
		.input-group{
			margin-bottom:7px;
		}
		.form-control{
			font-family:muli;
			background:ghostwhite;
		}
		.mytxt{
			text-transform:uppercase;
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
			<i class="fa fa-bell-o notification-button link" data-toggle="tooltip" data-placement="bottom" title="Notifications"></i>
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
		<div id="p-nasa" style="height:100vh;">
			<div id="botp" class="box-2 text-center" style="display:block;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8" style="border:1px solid skyblue;margin-top:10vh;padding:10px 20px;">
							<h3 style="font-family:'Special Elite';"><i class="fa fa-user-plus"></i> Complete Your Profile</h3><br />
							<style>
								.panel-body .col-sm-6{
									text-align:left;
								}
							</style>
							<div class="row">
								<div class="col-sm-6">
									<label for="rolltxt">Roll Number :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Roll Number"><span class="glyphicon glyphicon-hand-right"></span> <sup><b style="color:red;">*</b></sup></span>
										<asp:TextBox ID="rolltxt" CssClass="form-control mytxt" TextMode="Number" runat="server" placeholder="Roll Number" MaxLength="20"></asp:TextBox>
										<span class="input-group-addon" data-toggle="tooltip" data-placement="left" title="Instruction for Roll Number"><span id="irn" class="glyphicon glyphicon-exclamation-sign" style="cursor:pointer;"></span></span>
									</div>
								</div>
								<div class="col-sm-6">
									<label for="conttxt">Contact (10 Digit Only) :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="10 Digit Mobile Number"><span class="glyphicon glyphicon-calendar"></span> <sup><b style="color:red;">*</b></sup></span>
										<asp:TextBox ID="conttxt" CssClass="form-control mytxt" TextMode="Number" runat="server" placeholder="Contact ( 10 Digit )"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<label for="fntxt">First Name :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="First Name"><span class="glyphicon glyphicon-user"></span> <sup><b style="color:red;">*</b></sup></span>
										<asp:TextBox ID="fntxt" CssClass="form-control mytxt" runat="server" placeholder="First Name" MaxLength="20"></asp:TextBox>
									</div>
								</div>
								<div class="col-sm-6">
									<label for="lntxt">Last Name :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Last Name"><span class="glyphicon glyphicon-user"></span> <sup><b style="color:red;">*</b></sup></span>
										<asp:TextBox ID="lntxt" CssClass="form-control mytxt" runat="server" placeholder="Last Name" MaxLength="20"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<label for="dobtxt">Date of Birth :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Date of Birth"><span class="glyphicon glyphicon-calendar"></span> <sup><b style="color:red;">*</b></sup></span>
										<asp:TextBox ID="dobtxt" CssClass="form-control" TextMode="Date" runat="server" placeholder="Date of Birth"></asp:TextBox>
									</div>
								</div>
								<div class="col-sm-6">
									<label for="gentxt">Gender :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Gender"><span class="glyphicon glyphicon-yen"></span> <sup><b style="color:red;">*</b></sup></span>
										<asp:DropDownList runat="server" ID="gentxt" CssClass="form-control">
											<asp:ListItem>SELECT GENDER</asp:ListItem>
											<asp:ListItem>MALE</asp:ListItem>
											<asp:ListItem>FEMALE</asp:ListItem>
										</asp:DropDownList>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<label for="coltxt">College :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="College"><span class="glyphicon glyphicon-blackboard"></span> <sup><b style="color:red;">*</b></sup></span>
										<asp:DropDownList runat="server" ID="coltxt" CssClass="form-control">
											<asp:ListItem>SELECT COLLEGE</asp:ListItem>
											<asp:ListItem>SCRIET</asp:ListItem>
											<asp:ListItem>OTHER</asp:ListItem>
										</asp:DropDownList>
									</div>
								</div>
								<div class="col-sm-6">
									<label for="ocoltxt">College (If not SCRIET) :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Gender"><span class="glyphicon glyphicon-blackboard"></span></span>
										<asp:TextBox runat="server" ID="ocoltxt" CssClass="form-control mytxt" MaxLength="100" placeholder="College ( if other than SCRIET )"></asp:TextBox>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<label for="ndepttxt">Department :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Department"><span class="glyphicon glyphicon-briefcase"></span> <sup><b style="color:red;">*</b></sup></span>
										<asp:DropDownList runat="server" ID="ndepttxt" CssClass="form-control">
											<asp:ListItem>SELECT DEPARTMENT</asp:ListItem>
										</asp:DropDownList>
										<asp:DropDownList runat="server" ID="depttxt" CssClass="form-control">
											<asp:ListItem>SELECT DEPARTMENT</asp:ListItem>
											<asp:ListItem>B.TECH</asp:ListItem>
											<asp:ListItem>MBA</asp:ListItem>
											<asp:ListItem>MCA</asp:ListItem>
											<asp:ListItem>OTHER</asp:ListItem>
										</asp:DropDownList>
									</div>
								</div>
								<div class="col-sm-6">
									<label for="btechbrtxt">Branch :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Branch"><span class="glyphicon glyphicon-education"></span> <sup><b style="color:red;">*</b></sup></span>
										<asp:TextBox runat="server" ID="obrtxt" CssClass="form-control mytxt" MaxLength="50" placeholder="Enter Branch Name"></asp:TextBox>
										<asp:DropDownList runat="server" ID="brtxt" CssClass="form-control">
											<asp:ListItem>SELECT BRANCH</asp:ListItem>
										</asp:DropDownList>
										<asp:DropDownList runat="server" ID="btechbrtxt" CssClass="form-control">
											<asp:ListItem>SELECT BRANCH</asp:ListItem>
											<asp:ListItem>AGRICULTURE ENGINEERING</asp:ListItem>
											<asp:ListItem>CHEMICAL ENGINEERING</asp:ListItem>
											<asp:ListItem>COMPUTER SCIENCE</asp:ListItem>
											<asp:ListItem>ELECTRONICS & COMMUNICATION</asp:ListItem>
											<asp:ListItem>ELECTRONICS & INSTRUMENTATION</asp:ListItem>
											<asp:ListItem>MECHANICAL ENGINEERING</asp:ListItem>
											<asp:ListItem>INFORMATION TECHNOLOGY</asp:ListItem>
										</asp:DropDownList>
										<asp:DropDownList runat="server" ID="mbabrtxt" CssClass="form-control">
											<asp:ListItem>SELECT BRANCH</asp:ListItem>
											<asp:ListItem>MBA</asp:ListItem>
											<asp:ListItem>MBA (HA)</asp:ListItem>
										</asp:DropDownList>
										<asp:DropDownList runat="server" ID="mcabrtxt" CssClass="form-control">
											<asp:ListItem>NO BRANCH</asp:ListItem>
										</asp:DropDownList>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<label for="btechyeartxt">Year :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Date of Birth"><span class="glyphicon glyphicon-flag"></span> <sup><b style="color:red;">*</b></sup></span>
										<asp:DropDownList runat="server" ID="yeartxt" CssClass="form-control">
											<asp:ListItem>SELECT YEAR</asp:ListItem>
										</asp:DropDownList>
										<asp:DropDownList runat="server" ID="btechyeartxt" CssClass="form-control">
											<asp:ListItem>SELECT YEAR</asp:ListItem>
											<asp:ListItem>1st YEAR</asp:ListItem>
											<asp:ListItem>2nd YEAR</asp:ListItem>
											<asp:ListItem>3rd YEAR</asp:ListItem>
											<asp:ListItem>4th YEAR</asp:ListItem>
										</asp:DropDownList>
										<asp:DropDownList runat="server" ID="myeartxt" CssClass="form-control">
											<asp:ListItem>SELECT YEAR</asp:ListItem>
											<asp:ListItem>1st YEAR</asp:ListItem>
											<asp:ListItem>2nd YEAR</asp:ListItem>
											<asp:ListItem>3rd YEAR</asp:ListItem>
										</asp:DropDownList>

									</div>
								</div>
								<div class="col-sm-6">
									<label for="pic">Upload Picture (If Available) :</label>
									<div class="input-group">
										<span class="input-group-addon" data-toggle="tooltip" data-placement="right" title="Upload Picture"><span class="glyphicon glyphicon-camera"></span></span>
										<asp:FileUpload runat="server" ID="pic" CssClass="form-control" />
										<span class="input-group-addon" data-toggle="tooltip" data-placement="left" title="Instruction for Upload"><span id="ipu" class="glyphicon glyphicon-exclamation-sign" style="cursor:pointer;"></span></span>
									</div>
								</div>
							</div>
							
							<br />Note - The mark with <b style="color:red;">*</b> are Required.<br /><br />
							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-6">
									<div class="form-control text-center" style="background:rgba(0, 0, 0, 0.59);border:none;">
										<asp:CheckBox runat="server" ID="agrtnc" Text="&ensp;Agree Terms & Conditions" />
									</div>
								</div>
								<div class="col-sm-3"></div>
							</div>
							<br />
							<asp:Button ID="subregbtn" CssClass="btn btn-default" runat="server" OnClick="subregbtn_Click" />
							<br /><br />
						</div>
						<div class="col-md-2"></div>
					</div>
					<!----------------------------------------------------- Footer --------------------------------------------------------->
					<br /><br />
					<footer class="footer">
						<br /><br />
						All Rights Reserved &copy; SCRIET<br />
						CVGClub - 2018<br />
						Designed & Developed By : <a href="http://www.linkedin.com/in/samsberk" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="LinkedIN Profile">samsberk</a><br />
						<a style="font-family:'Sedgwick Ave';" href="http://www.ccsuniversity.ac.in/scriet/" target="_blank" class="link-footer" data-toggle="tooltip" data-placement="top" title="Official Website" >Sir Chhotu Ram Institute of Engineering & Technology, Meerut</a>
					</footer>
				</div>
			</div>
		</div>
    </form>
	<script src="../JS/MyFooterJS.js"></script>
	<script src="../JS/myParticles.js"></script>
	<script type="text/javascript">
		$("#obrtxt").hide();
		$("#depttxt").hide();
		$("#btechbrtxt").hide();
		$("#mbabrtxt").hide();
		$("#mcabrtxt").hide();
		$("#btechyeartxt").hide();
		$("#myeartxt").hide();

		$("#ocoltxt").attr("disabled", true);
		$("#ndepttxt").attr("disabled", true);
		$("#brtxt").attr("disabled", true);
		$("#yeartxt").attr("disabled", true);
		$("#subregbtn").attr("disabled", true);
		$("#subregbtn").val("Agree T&C before Submit");
		var chk = document.getElementById("agrtnc");
		var roll = document.getElementById("rolltxt");
		var fname = document.getElementById("fntxt");
		var lname = document.getElementById("lntxt");
		var dob = document.getElementById("dobtxt");
		var gender = document.getElementById("gentxt");
		var col = document.getElementById("coltxt");
		var ocol = document.getElementById("ocoltxt");
		var dept = document.getElementById("depttxt");
		var obr = document.getElementById("obrtxt");
		var btechbr = document.getElementById("btechbrtxt");
		var mbabr = document.getElementById("mbabrtxt");
		var mcabr = document.getElementById("mcabrtxt");
		var btechyr = document.getElementById("btechyeartxt");
		var myr = document.getElementById("myeartxt");
		var con = document.getElementById("conttxt");
		var p = document.getElementById("pic");
		$("#conttxt").blur(function () {
			if (con.value == "") {

			}
			else if (con.value < 999999999 || con.value > 9999999999) {
				alert("Invalid Contact Number. Enter 10 Digit Only.");
				con.value = null;
				con.focus();
			}
		});
		$("#coltxt").change(function () {
			if (col.selectedIndex == 0) {
				$("#ocoltxt").attr("disabled", true);
				$("#ndepttxt").show();
				$("#depttxt").hide();
			}
			else if (col.selectedIndex == 1) {
				$("#ocoltxt").attr("disabled", true);
				$("#ndepttxt").hide();
				$("#depttxt").show();
			}
			else if (col.selectedIndex == 2) {
				$("#ocoltxt").attr("disabled", false);
				$("#ndepttxt").hide();
				$("#depttxt").show();
			}
		});
		$("#depttxt").change(function () {
			if (dept.selectedIndex == 0) {
				$("#brtxt").show();
				$("#obrtxt").hide();
				$("#btechbrtxt").hide();
				$("#mbabrtxt").hide();
				$("#mcabrtxt").hide();
				$("#yeartxt").show();
				$("#btechyeartxt").hide();
				$("#myeartxt").hide();
			}
			else if (dept.selectedIndex == 1) {
				$("#brtxt").hide();
				$("#obrtxt").hide();
				$("#btechbrtxt").show();
				$("#mbabrtxt").hide();
				$("#mcabrtxt").hide();
				$("#yeartxt").hide();
				$("#btechyeartxt").show();
				$("#myeartxt").hide();
			}
			else if (dept.selectedIndex == 2) {
				$("#brtxt").hide();
				$("#obrtxt").hide();
				$("#btechbrtxt").hide();
				$("#mbabrtxt").show();
				$("#mcabrtxt").hide();
				$("#yeartxt").hide();
				$("#btechyeartxt").hide();
				$("#myeartxt").show();
			}
			else if (dept.selectedIndex == 3) {
				$("#brtxt").hide();
				$("#obrtxt").hide();
				$("#btechbrtxt").hide();
				$("#mbabrtxt").hide();
				$("#mcabrtxt").show();
				$("#yeartxt").hide();
				$("#btechyeartxt").hide();
				$("#myeartxt").show();
			}
			else if (dept.selectedIndex == 4) {
				$("#brtxt").hide();
				$("#obrtxt").show();
				$("#btechbrtxt").hide();
				$("#mbabrtxt").hide();
				$("#mcabrtxt").hide();
				$("#yeartxt").hide();
				$("#btechyeartxt").show();
				$("#myeartxt").hide();
			}
		});
		$("#pic").bind("change", function () {
            var ext = $("#pic").val().split('.').pop().toLowerCase();
			if ($.inArray(ext, ['jpg', 'jpeg', 'png']) == -1) {
				alert("Invalid File Type. It shoud be jpg, jpeg or png file.");
				p.value = null;
			}
			else {
				if (p.files[0].size > 512000) {
					alert("Invalid file size. It should be less than or equal to 500kb.");
					p.value = null;
				}
			}
		});


		$("#agrtnc").bind("change", function () {
			if (chk.checked == true) {
				if (roll.value == "") {
					alert("Please enter Roll Number.");
					chk.checked = false;
					roll.focus();
				}
				else if (fname.value == "") {
					alert("Please enter First Name.");
					chk.checked = false;
					fname.focus();
				}
				else if (lname.value == "") {
					alert("Please enter Last Name.");
					chk.checked = false;
					lname.focus();
				}
				else if (dob.value == "") {
					alert("Please enter Date of Birth.");
					chk.checked = false;
					dob.focus();
				}
				else if (gender.selectedIndex == 0) {
					alert("Please select your Gender.");
					chk.checked = false;
					gender.focus();
				}
				else if (col.selectedIndex == 0) {
					alert("Please select your College.");
					chk.checked = false;
					col.focus();
				}
				else if (dept.selectedIndex == 0) {
					alert("Please select your Department.");
					chk.checked = false;
					dept.focus();
				}
				else if (con.value == "") {
					alert("Please enter 10 Digit Mobile Number.");
					chk.checked = false;
					con.focus();
				}
				else {
					if (col.selectedIndex == 2 && ocol.value == "") {
						alert("Please enter College Name.");
						chk.checked = false;
						ocol.focus();
					}
					else if ((dept.selectedIndex == 1 && btechbr.selectedIndex == 0) || (dept.selectedIndex == 2 && mbabr.selectedIndex == 0) || (dept.selectedIndex == 4 && obr.value == "")) {
						if (dept.selectedIndex == 4 && obr.value == "") {
							alert("Please Enter your Branch.");
							chk.checked = false;
							obr.focus();
						}
						else {
							alert("Please select your Branch.");
							chk.checked = false;
							btechbr.focus();
							mbabr.focus();
							mcabr.focus();
						}
					}
					else if ((dept.selectedIndex == 1 && btechyr.selectedIndex == 0) || (dept.selectedIndex == 4 && btechyr.selectedIndex == 0) || (dept.selectedIndex == 2 && myr.selectedIndex == 0) || (dept.selectedIndex == 3 && myr.selectedIndex == 0)) {
						alert("Please select your Year.");
						chk.checked = false;
						btechyr.focus();
						myr.focus();
					}
					else {
						$("#subregbtn").attr("disabled", false);
						$("#subregbtn").val("Submit");
					}
				}
			}
			else {
				$("#subregbtn").attr("disabled", true);
				$("#subregbtn").val("Please agree T&C before submit");
			}
		});
		$("#irn").click(function () {
			alert("You can enter your 9 digit Roll Number, if you haven't then you can enter your two digit roll number. like - 3 or 28 etc.")
		});
		$("#ipu").click(function () {
			alert("Upload you passport size picture, size must be lest than 500KB.")
		});
	</script>
</body>
</html>