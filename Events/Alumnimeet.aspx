<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alumnimeet.aspx.cs" Inherits="Events_Alumnimeet" %>

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
		.form-control{
			font-family:muli;
			background:ghostwhite;
			margin-bottom:10px;
		}
		.mytxt{
			text-transform:uppercase;
		}
		.imgprev img {
			border-radius: 3px;
		}
		#td1, #td2, #td3, #td4, #td5, #td6, #td7, #td8, #td9, #td10, #td11 {
			background: white;
			border: none;
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
		<div class="notification-box w3-animate-zoom">
			<div class="menu-bar">
				<i class="fa fa-bars notification-button-close" data-toggle="tooltip" data-placement="bottom" title="Close Notifications"></i>
			</div>
			<h3><i class="fa fa-bell-o"></i> Notifications</h3><hr style="width:70vw;margin:0px auto;margin-top:20px;" />
		</div>
		<!----------------------------------------------------- body --------------------------------------------------------->
		<div id="p-nasa" style="height:100vh;">
			<div id="botp" class="box-2" style="display:block;">
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-8" style="border:1px solid skyblue;margin-top:10vh;padding:10px 20px;">
							<h3 style="font-family:'Finger Paint';text-align:center;"><i class="fa fa "></i> ALUMNI REGISTRATION</h3><hr />
							<div class="row">
								<div class="col-sm-6">
									<label for="emailid">Email ID :</label>
									<asp:TextBox runat="server" TextMode="Email" MaxLength="50" ID="emailid" CssClass="form-control" placeholder="Enter Your Email ID" style="text-transform:lowercase;"></asp:TextBox>
								</div>
								<div class="col-sm-6">
									<label for="name">Name (Mention your complete Name) :</label>
									<asp:TextBox runat="server" MaxLength="30" ID="name" CssClass="form-control mytxt" placeholder="Enter Your Full Name"></asp:TextBox>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<label for="branch">Select Branch :</label>
									<asp:DropDownList ID="branch" runat="server" CssClass="form-control">
										<asp:ListItem>Select Branch</asp:ListItem>
										<asp:ListItem>B.Tech (AG)</asp:ListItem>
										<asp:ListItem>B.Tech (CE)</asp:ListItem>
										<asp:ListItem>B.Tech (CS)</asp:ListItem>
										<asp:ListItem>B.Tech (EC)</asp:ListItem>
										<asp:ListItem>B.Tech (EI)</asp:ListItem>
										<asp:ListItem>B.Tech (ME)</asp:ListItem>
										<asp:ListItem>B.Tech (IT)</asp:ListItem>
										<asp:ListItem>MBA</asp:ListItem>
										<asp:ListItem>MBA (IB)</asp:ListItem>
										<asp:ListItem>MCA</asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col-sm-6">
									<label for="batch">Select Passout Batch (Year of Passing) :</label>
									<asp:DropDownList ID="batch" runat="server" CssClass="form-control">
										<asp:ListItem>Select Batch</asp:ListItem>
										<asp:ListItem>2014-2018</asp:ListItem>
										<asp:ListItem>2013-2017</asp:ListItem>
										<asp:ListItem>2012-2016</asp:ListItem>
										<asp:ListItem>2011-2015</asp:ListItem>
										<asp:ListItem>2010-2014</asp:ListItem>
										<asp:ListItem>2009-2013</asp:ListItem>
										<asp:ListItem>2008-2012</asp:ListItem>
										<asp:ListItem>2007-2011</asp:ListItem>
										<asp:ListItem>2006-2010</asp:ListItem>
										<asp:ListItem>2005-2009</asp:ListItem>
										<asp:ListItem>2004-2008</asp:ListItem>
										<asp:ListItem>2003-2007</asp:ListItem>
										<asp:ListItem>2002-2006</asp:ListItem>
									</asp:DropDownList>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<label for="desig">Designation (current Designation at Company) :</label>
									<asp:TextBox runat="server" MaxLength="30" ID="desig" CssClass="form-control" placeholder="Enter Your Designation" style="text-transform:uppercase;"></asp:TextBox>
								</div>
								<div class="col-sm-6">
									<label for="comname">Company Name (with Address and Contact) :</label>
									<asp:TextBox runat="server" MaxLength="70" ID="comname" CssClass="form-control" placeholder="Enter Company Name with Details" style="text-transform:uppercase;"></asp:TextBox>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<label for="contact">Contact (Only 10 Digit) :</label>
									<asp:TextBox runat="server" TextMode="Number" MaxLength="10" ID="contact" CssClass="form-control" placeholder="Enter 10 Digit Mobile Number"></asp:TextBox>
								</div>
								<div class="col-sm-6">
									<label for="hrcontact">Contact of HR (if available):</label>
									<asp:TextBox runat="server" TextMode="Number" ID="hrcontact" CssClass="form-control" placeholder="Enter Contact Number"></asp:TextBox>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<label for="alumpic">Upload Picture (Passport Size) :</label>
									<asp:FileUpload runat="server" ID="alumpic" CssClass="form-control" />
								</div>
								<div class="col-sm-6">
									<div style="background:black;padding:10px;color:aqua;text-align:justify;">
										1- Photograph must be passport size and in ".jpg", ".jpeg" or ".png" format.<br />
										2- Dimension must have 150*200 Pixel (means width=150 & height=200).
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-6">
									<label for="evattend">What event will you attand :</label>
									<asp:DropDownList ID="evattend" runat="server" CssClass="form-control">
										<asp:ListItem>Select Event</asp:ListItem>
										<asp:ListItem>Alumni Related</asp:ListItem>
									</asp:DropDownList>
								</div>
								<div class="col-sm-6">
									<label for="crpart">Consent Regarding Participation :</label>
									<asp:DropDownList ID="crpart" runat="server" CssClass="form-control">
										<asp:ListItem>Choose Option</asp:ListItem>
										<asp:ListItem>Participating</asp:ListItem>
									</asp:DropDownList>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<label for="contribute">what and how can you contribute to SCRIET :</label>
									<asp:TextBox runat="server" TextMode="MultiLine" Rows="3" Columns="100" ID="contribute" CssClass="form-control" placeholder="Enter Your Answer" Style="resize:none;text-transform:capitalize;"></asp:TextBox>
								</div>
							</div><hr />
							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-6 text-center">
									<div class="form-control" style="background:rgba(0, 0, 0, 0.88);border:none;">
										<asp:CheckBox runat="server" ID="agrtnc" Text="&emsp;Agree"/>
									</div>
									<button type="button" id="p" class="btn btn-default">Submit</button><br /><br />
								</div>
								<div class="col-sm-3"></div>
							</div>
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
		
		<div class="modal fade" id="mprev" role="dialog" style="background:rgba(135, 206, 235, 0.81);">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close editform" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Preview</h4>
					</div>
					<div class="modal-body" style="color:black;">
						<div class="row">
							<div class="col-sm-8">
								<table>
									<tr><th>Email ID</th><td>: <input type="text" id="td1"/></td></tr>
									<tr><th>Name</th><td>: <input type="text" id="td2"/></td></tr>
									<tr><th>Branch</th><td>: <input type="text" id="td3"/></td></tr>
									<tr><th>Batch</th><td>: <input type="text" id="td4"/></td></tr>
									<tr><th>Designation</th><td>:<input type="text" id="td5"/></td></tr>
									<tr><th>Conmapny</th><td>: <input type="text" id="td6"/></td></tr>
									<tr><th>Contact</th><td >: <input type="text" id="td7"/></td></tr>
									<tr><th>HR Contact</th><td>: <input type="text" id="td8"/></td></tr>
									<tr><th>Event Attend</th><td>: <input type="text" id="td9"/></td></tr>
									<tr><th>CR Participation</th><td >: <input type="text" id="td10"/></td></tr>
									<tr><th>Contribution</th><td>: <input type="text" id="td11"/></td></tr>
								</table>
							</div>
							<div class="col-sm-4 imgprev" style="margin-top:15px;"></div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="alert alert-xs alert-danger" style="text-align:left;"><strong>NOTE : After FINAL SUBMIT you will not able to change any field.</strong></div>
						<button type="button" id="updatebtn" class="btn btn-warning" data-dismiss="modal" style="color:black;">Update</button>
						&emsp;<asp:Button runat="server" ID="alumsub" CssClass="btn btn-success click-on" Text="Final Submit" style="color:black;" OnClick="alumsub_Click" />
					</div>
				</div>
			</div>
		</div>
    </form>
	<script src="../JS/MyFooterJS.js"></script>
	<script src="../JS/myParticles.js"></script>
	<script type="text/javascript">
		$(".rembtndiv").hide();
        $("#p").attr("disabled", true);
        $("#alumpic").bind("change", function () {
            var ext = $("#alumpic").val().split('.').pop().toLowerCase();
            var a = document.getElementById("alumpic");
            if ($.inArray(ext, ['jpg', 'jpeg', 'png']) == -1) {
                alert("Invalid File Type. It shoud be jpg, jpeg or png file.");
                this.value = null;
            }
            else {
                var _URL = window.URL;
                var img = new Image();
                img.onload = function () {
                    /*if (this.height != "200" || this.width != "150") {
                        alert("Invalid Dimension. It should be 150*200 Pixel (means width=150px & height=200px)");
                        a.value = null;
                        $(".imgprev img").hide();
                        $("#alumpic").attr("disabled", false);
                        $("#remdiv").show();
                        $(".rembtndiv").hide();
                    }*/
                }
                img.src = _URL.createObjectURL(this.files[0]);
            }
        });
        /*$(".rembtndiv button").click(function () {
            var a = document.getElementById("alumpic");
            a.value = null;
            $("#alumpic").attr("disabled", false);
            $(".imgprev img").hide();
            $("#remdiv").show();
            $(".rembtndiv").hide();
        });*/
        $(function () {
            $("#contact").blur(function () {
                var c = document.getElementById("contact");
                if (c.value < 999999999 || c.value > 9999999999) {
                    alert("Invalid Contact Number. Enter 10 Digit Only.");
                    c.value = null;
                }
            });
        });
        $(function () {
            $("#hrcontact").blur(function () {
                var c = document.getElementById("hrcontact");
                if (c.value < 999999 || c.value > 999999999999) {
                    alert("Invalid Contact Number.");
                    c.value = null;
                }
            });
        });
        $("#agrtnc").bind("change", function () {
            var chk = document.getElementById("agrtnc");
            var eid = document.getElementById("emailid");
            var nm = document.getElementById("name");
            var brn = document.getElementById("branch");
            var bch = document.getElementById("batch");
            var dsg = document.getElementById("desig");
            var cnm = document.getElementById("comname");
            var cnt = document.getElementById("contact");
            var hrcn = document.getElementById("hrcontact");
            var alp = document.getElementById("alumpic");
            var eatn = document.getElementById("evattend");
            var crp = document.getElementById("crpart");
            var cont = document.getElementById("contribute");
            var cpch = document.getElementById("captxt");
            if (chk.checked == true) {
                if (eid.value == "") {
                    alert("Please enter Email ID first.");
					chk.checked = false;
					eid.focus();
                }
                else if (nm.value == "") {
                    alert("Please enter your Name first.");
					chk.checked = false;
					nm.focus();
                }
                else if (brn.value == "Select Branch") {
                    alert("Please select your Branch first.");
					chk.checked = false;
					brn.focus();
                }
                else if (bch.value == "Select Batch") {
                    alert("Please select your Batch first.");
					chk.checked = false;
					bch.focus();
                }
                else if (dsg.value == "") {
                    alert("Please enter your Designation first.");
					chk.checked = false;
					dsg.focus();
                }
                else if (cnm.value == "") {
                    alert("Please enter your Company Name first.");
					chk.checked = false;
					cnm.focus();
                }
                else if (cnt.value == "") {
                    alert("Please enter your Contact Number first.");
					chk.checked = false;
					cnt.focus();
                }
                else if (alp.files.length == 0) {
                    alert("Please upload a Photograph first.");
					chk.checked = false;
					alp.focus();
                }
                else if (eatn.value == "Select Event") {
                    alert("Please select Event first.");
					chk.checked = false;
					eatn.focus();
                }
                else if (crp.value == "Choose Option") {
                    alert("Please select Consent Regarding Participation first.");
					chk.checked = false;
					crp.focus();
                }
                else if (cont.value == "") {
                    alert("Please enter about Contribution first.");
					chk.checked = false;
					cont.focus();
                }
                else {
                    $("#p").attr("disabled", false);
                }
            }
            else {
                $("#p").attr("disabled", true);
            }
        });

        $("#p").click(function () {
            $("#mprev").modal("show");
            var t1 = document.getElementById("td1");
            var t2 = document.getElementById("td2");
            var t3 = document.getElementById("td3");
            var t4 = document.getElementById("td4");
            var t5 = document.getElementById("td5");
            var t6 = document.getElementById("td6");
            var t7 = document.getElementById("td7");
            var t8 = document.getElementById("td8");
            var t9 = document.getElementById("td9");
            var t10 = document.getElementById("td10");
            var t11 = document.getElementById("td11");

            var f1 = document.getElementById("emailid");
            var f2 = document.getElementById("name");
            var f3 = document.getElementById("branch");
            var f4 = document.getElementById("batch");
            var f5 = document.getElementById("desig");
            var f6 = document.getElementById("comname");
            var f7 = document.getElementById("contact");
            var f8 = document.getElementById("hrcontact");
            var f9 = document.getElementById("evattend");
            var f10 = document.getElementById("crpart");
            var f11 = document.getElementById("contribute");
            var pic = document.getElementById("alumpic");
            t1.value = f1.value;
            t2.value = f2.value;
            t3.value = f3.value;
            t4.value = f4.value;
            t5.value = f5.value;
            t6.value = f6.value;
            t7.value = f7.value;
            t8.value = f8.value;
            t9.value = f9.value;
            t10.value = f10.value;
            t11.value = f11.value;
            $("#td1, #td2, #td3, #td4, #td5, #td6, #td7, #td8, #td9, #td10, #td11").attr("disabled", true);
            var reader = new FileReader();
            reader.onload = function (e) {
                $(".imgprev img").remove();
                $(".imgprev").append("<img style='height:200px;width:150px;' />");
                $(".imgprev img").attr("src", e.target.result);
            }
            reader.readAsDataURL(pic.files[0]);
        });

        $("#updatebtn").click(function () {
            var ch = document.getElementById("agrtnc");
            var pic = document.getElementById("alumpic");
            var eid = document.getElementById("emailid");
            ch.checked = false;
            $("#p").attr("disabled", true);
            $(".imgprev img").remove();
			location.href = "#updatetop";
			eid.focus();
        });
	</script>
</body>
</html>
