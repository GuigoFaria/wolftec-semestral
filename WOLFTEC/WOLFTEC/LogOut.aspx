<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="WOLFTEC.LogOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title>Logout</title>
    <link rel="icon" type="image/png" href="images/wolftec.png"/>
	<link rel="stylesheet" type="text/css" href="css/css pagina grafico.css"/>
	<link rel="stylesheet" type="text/css" href="css/normalize.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" Text="Saindo do App..." runat="server" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
