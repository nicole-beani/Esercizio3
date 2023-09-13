<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Esercizio3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container ">
       <div class="row">
           <div class="col-md-12 text-center" >
               <h1>Scegli il tuo Menù</h1>
               
               <h2>Le nostre pizze</h2>
         <div class="col-md-12 text-center my-3" >
     <asp:DropDownList ID="Lista" runat="server" class="px-5 border border-info border-3 " >
     <asp:ListItem Value="" Text=" "></asp:ListItem>
     <asp:ListItem Value="margherita" Text="Margherita"></asp:ListItem>
     <asp:ListItem Value="diavola" Text="Diavola"></asp:ListItem>
     <asp:ListItem Value="quattroFormaggi" Text="Quattro Formaggi"></asp:ListItem>
     <asp:ListItem Value="capricciosa" Text="Capricciosa"></asp:ListItem>
     <asp:ListItem Value="napoli" Text="Napoli"></asp:ListItem>
     <asp:ListItem Value="prosciuttoEfunghi" Text="Prosciutto e Funghi"></asp:ListItem>
     <asp:ListItem Value="vegetariana" Text="Vegeteriana"></asp:ListItem>
     <asp:ListItem Value="marinara" Text="Marinara"></asp:ListItem>
     </asp:DropDownList>
             </div>
              
               <h4>Aggiunzioni</h4>
               <asp:CheckBoxList TextAlign="Right" CssClass=" form-control m-3" ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" RepeatLayout="Flow">
                   <asp:ListItem Value="3" Text="Carciofi (+3,00)"></asp:ListItem>    
                   <asp:ListItem Value="3" Text="Mozza. Bufala (+3,00)"></asp:ListItem>    
                   <asp:ListItem Value="2" Text="Funghi (+2,00)"></asp:ListItem>    
                   <asp:ListItem Value="2" Text="Olive (+2,00)"></asp:ListItem>
                   <asp:ListItem Value="4" Text="Salame Piccante (+4,00)"></asp:ListItem>
                   <asp:ListItem Value="4" Text="Speck (+4,00)"></asp:ListItem>
               </asp:CheckBoxList>
           </div>
           <div class="row text-center">
               <asp:Button CssClass="btn btn-primary my-3" ID="AggiungiPiatto" runat="server" Text="Aggiungi il Piatto e Concludi l'ordine" OnClick="AggiungiPiatto_Click" />
           </div>
           <hr />
           <div class="row text-center">
              
           </div>
            <h3>Resoconto:</h3>
 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <p id="Result" runat="server"></p>
            <asp:Label ID="vediamo" runat="server" Text=""></asp:Label>
        </div>
        </div>
    </form>
</body>
</html>
