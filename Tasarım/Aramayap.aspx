<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aramayap.aspx.cs" Inherits="Tasarım.Aramayap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>
                <p>
                    <h1>
                        <%#Eval(" urunAdi")    %>
                    </h1>
                </p>
                 <p>
     <img src="Resimler/<%#Eval("UrunResmi") %>" width="200" height="200"
                </p>
            </ItemTemplate>
        </asp:Repeater>

    </form>
</body>
</html>
