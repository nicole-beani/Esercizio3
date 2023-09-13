<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Esercizio3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <asp:TextBox ID="Username" runat="server"></asp:TextBox><br />
    <asp:TextBox ID="Password" TextMode="Password" runat="server"></asp:TextBox><br />
    <asp:Button ID="Bottone" runat="server" Text="Accedi" OnClick="Bottone_Click" />
</div>
<div id="DatiNonCorretti" class="alert alert-danger" runat="server">
    <p>Dati inseriti non corretti </br> Riprova</p>
</div>
    </form>
</body>
</html>
