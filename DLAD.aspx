<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DLAD.aspx.cs" Inherits="test" Title="ADMINISTRADOR BIBLIO-AIEP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="estilo.css">
    <style type="text/css">
        .auto-style1
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
    
    
    <div>
     <center>
     <table>
     <tr>
     <td>Devolucion Libro&nbsp;</td>
     </tr>
     </table>
            
         <table>
             <tr>
                 <td>
                     Ingrese ISBN del libro&nbsp;&nbsp;&nbsp;
                 </td>
                 <td>
                     <asp:TextBox ID="txtdlisbn" runat="server" ValidationGroup="dl" Width="191px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="rfvdlisbn" runat="server" 
                         ControlToValidate="txtdlisbn" CssClass="" ErrorMessage="*" ValidationGroup="dl"></asp:RequiredFieldValidator>
                 </td>
                 <td>
                     <asp:RegularExpressionValidator ID="reg_dlisbn" runat="server" 
                         ControlToValidate="txtdlisbn" ErrorMessage="Ingrese ISBN valido" 
                         ValidationExpression="\d*" ValidationGroup="dl"></asp:RegularExpressionValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                     Ingrese RUN del alumno</td>
                 <td>
                     <asp:TextBox ID="txtdlrun" runat="server" ValidationGroup="dl" Width="189px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="rfvdlrun" runat="server" 
                         ControlToValidate="txtdlrun" ErrorMessage="*" ValidationGroup="dl"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                     <asp:Label ID="lblmensajede" runat="server"></asp:Label>
                 </td>
                 <td>
                     (*****9074)</td>
             </tr>
             <tr>
                 <td>
                 </td>
                 <td>
                     <asp:Button ID="btnguardaralumnoad" runat="server" 
                         onclick="btnguardaralumnoad_Click" Text="Guardar" ValidationGroup="dl" 
                         Width="189px" />
                 </td>
             </tr>
         </table>
     </div>
     </center>
           
     <br />
           
     <br />
     <br />
     
     </center>
    
            
</asp:Content>
            


