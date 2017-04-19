<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RLAD.aspx.cs" Inherits="test" Title="ADMINISTRADOR BIBLIO-AIEP" %>

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
        .style24
        {
            width: 8px;
        }
        
        #btnimprimir
        {
            width: 184px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
    <div>
    <table>
    <tr>
    <td class="style17">Reservar Libro</td>    
    </tr>
    </table>
    
       <table>
           <tr>
               <td class="style2">
                   Ingrese el ISBN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </td>
               <td class="style19">
                   <asp:TextBox ID="txtrlisbn" runat="server" ValidationGroup="rl" Width="185px"></asp:TextBox>
               </td>
               <td class="style24">
                   <asp:RequiredFieldValidator ID="rfvrlisbn" runat="server" 
                       ControlToValidate="txtrlisbn" CssClass="" ErrorMessage="*" ValidationGroup="rl"></asp:RequiredFieldValidator>
               </td>
               <td>
                   <asp:RegularExpressionValidator ID="reg_rliisbbn" runat="server" 
                       ControlToValidate="txtrlisbn" ErrorMessage="Ingrese ISBN valido" 
                       ValidationExpression="\d*" ValidationGroup="rl"></asp:RegularExpressionValidator>
               </td>
           </tr>
           <tr>
               <td>
                   RUN usuario&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </td>
               <td>
                   <asp:TextBox ID="txtrlrun" runat="server" ValidationGroup="rl" Width="185px"></asp:TextBox>
               </td>
               <td class="style24">
                   <asp:RequiredFieldValidator ID="rfvrlrun" runat="server" 
                       ControlToValidate="txtrlrun" ErrorMessage="*" ValidationGroup="rl"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
               </td>
               <td>
                   (*****9074)</td>
           </tr>
           <tr>
               <td>
                   Ingrese la fecha de hoy</td>
               <td>
                   <asp:TextBox ID="txtrlfreserva" runat="server" ValidationGroup="rl" 
                       Width="184px"></asp:TextBox>
               </td>
               <td class="style24">
                   <asp:RequiredFieldValidator ID="rfvrlfreserva" runat="server" 
                       ControlToValidate="txtrlfreserva" ErrorMessage="*" ValidationGroup="rl"></asp:RequiredFieldValidator>
               </td>
           </tr>
           <tr>
               <td>
               </td>
               <td>
                   (D/M(A)
               </td>
           </tr>
           <tr>
               <td class="style5">
                   <asp:Label ID="lblmensaje1" runat="server"></asp:Label>
               </td>
               <td class="style20">
                   <asp:Button ID="btnreservarlad" runat="server" onclick="btnreservarlad_Click" 
                       Text="Reservar" ValidationGroup="rl" Width="189px" />
               </td>
           </tr>
           <tr>
               <td>
               </td>
               <td>
                   <input id="btnimprimir" onclick="window.print();" type="button" 
                       value="Imprimir" />
               </td>
           </tr>
       </table>
     </div>
     </center>
     
     <br />

     <br />
     <br />
           
     <br />
           
     <br />
     <br />
        
      
     </center>
    
            
</asp:Content>
            


