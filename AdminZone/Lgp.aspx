<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lgp.aspx.cs" Inherits="AdminZone_Lgp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LAN Gaming (PUBG) List</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>     
    <link id="Link1" runat="server" rel="Shortcut Icon" href="../Images/fi.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Finger+Paint|Gloria+Hallelujah|Homemade+Apple|Muli" rel="stylesheet"/>
    <!--font-family: 'Gloria Hallelujah', cursive; font-family: 'Homemade Apple', cursive; font-family: 'Finger Paint', cursive;-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css"/>
    <link href="../ExtCSS/MyCSS.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../MyJS/MyJS.js"></script>
    <script>
        function prnt() {
            window.print();
        }
    </script>
    <style>
		*{
			font-family:muli;
		}
    	td, th {
			border:0.5px solid lightgray;
    		padding: 2px 5px 2px 5px;
    		font-size: 12px;
    	}
    	@media print {
    		.print {
    			display: none;
    		}
    	}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container print">
            <br /><button class="btn btn-success" type="button" onclick="prnt()"><span class="glyphicon glyphicon-print"></span> Print</button><br /><br />
        </div>
        <div class="container-fluid">
            <img src="../Images/Other/scrietlogo.jpg" style="width:100%;" />
            <h5 style="margin-top:20px;font-weight:bold;text-align:center;">Attendance List for LAN Gaming (PUBG)</h5>
            <table border="1" style="width:100%;margin-top:20px;">
                <tr><th>Sr.No.</th><th>Student Name</th><th>Department - Branch - Year</th><th>Team</th><th>College</th><th>Contact</th><th>Attendance</th></tr>
                <asp:PlaceHolder ID="ph" runat="server"></asp:PlaceHolder>
            </table>
        </div>        
    </form>
</body>
</html>