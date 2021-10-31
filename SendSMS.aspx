<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SendSMS.aspx.cs" Inherits="SendSMS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>send sms</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="number" runat="server" placeholder="number" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="text" runat="server" placeholder="text"></asp:TextBox>
		<asp:Button ID="sendbtn" runat="server" Text="send" OnClick="sendbtn_Click" />
    </form>
</body>
</html>
