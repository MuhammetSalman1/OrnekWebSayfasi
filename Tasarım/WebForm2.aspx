<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Tasarım.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtcumle" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnara" runat="server" Text="Arama Yap" OnClick="btnara_Click" />

    </form>
</body>
</html>
