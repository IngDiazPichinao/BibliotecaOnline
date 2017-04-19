<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="RLU.aspx.cs" Inherits="test" Title="USUARIO BIBLIO-AIEP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="estilo.css">
    <style type="text/css">
        .style2
        {
            height: 33px;
        }
        .style5
        {
            height: 6px;
        }
        .style17
        {
            width: 108px;
        }
        .style19
        {
            height: 33px;
            width: 117px;
        }
        .style20
        {
            height: 6px;
            width: 117px;
        }
        .style25
        {
            width: 4px;
        }
         
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
   <br />
   <center>
    <div>
    <table style="width: 377px">
    <tr>
    <td class="style1"><asp:Label ID="lblmensaje" runat="server" Text=""></asp:Label></td>
    </tr>
    </table>               
     
    <table>
    <tr>
    <td class="style17">Reservar Libro</td>    
    </tr>
    </table>
    

       <table>
           <tr>
               <td>
                   Ingrese su RUN</td>
               <td>
                   <asp:TextBox ID="txtingreserunusu" runat="server" ValidationGroup="rl"></asp:TextBox>
               </td>
               <td class="style25">
                   <asp:RequiredFieldValidator ID="req_txtingrearusurun" runat="server" 
                       ControlToValidate="txtingreserunusu" ErrorMessage="*" ValidationGroup="rl"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
               </td>
               <td>
                   (*****9074)</td>
           </tr>
           <tr>
               <td class="style2">
                   Ingrese el ISBN del libro</td>
               <td class="style19">
                   <asp:TextBox ID="txtingreseus" runat="server" ValidationGroup="rl"></asp:TextBox>
               </td>
               <td class="style25">
                   <asp:RequiredFieldValidator ID="req_igresarus" runat="server" 
                       ControlToValidate="txtingreseus" CssClass="" ErrorMessage="*" 
                       ValidationGroup="rl"></asp:RequiredFieldValidator>
               </td>
               <td>
                   <asp:RegularExpressionValidator ID="reg_rlilibro" runat="server" 
                       ControlToValidate="txtingreseus" ErrorMessage="Ingrese Libro valido" 
                       ValidationExpression="\d*" ValidationGroup="rl"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
               <td>
                   Ingrese la fecha de hoy
               </td>
               <td>
                   <asp:TextBox ID="txtrlfechahoy" runat="server" ValidationGroup="rl"></asp:TextBox>
               </td>
               <td class="style25">
                   <asp:RequiredFieldValidator ID="rfvrlfechahoy" runat="server" 
                       ControlToValidate="txtrlfechahoy" ErrorMessage="*" ValidationGroup="rl"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
               </td>
               <td>
                   (D/M/A)</td>
           </tr>
           <tr>
               <td class="style5">
                   <asp:Label ID="lblmensajerlus" runat="server"></asp:Label>
               </td>
               <td class="style20">
                   <asp:Button ID="btnreservarlus" runat="server" onclick="btnreservarlus_Click" 
                       Text="Reservar" ValidationGroup="rl" Width="124px" />
               </td>
           </tr>
       </table>
    </div>
    <br />
    <br />
      
    <br />
    <br />
 </center>
</asp:Content>

