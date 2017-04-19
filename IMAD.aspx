<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="IMAD.aspx.cs" Inherits="test" Title="ADMINISTRADOR BIBLIO-AIEP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="estilo.css">
    <style type="text/css">
        .style21
        {
            width: 123px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
    
    <div>
             <table>
     <tr>
     <td>Ingresar Multa</td>
     </tr>
     </table>
            
             <table>
                 <tr>
                     <td>
                         Ingrese RUN alumno</td>
                     <td>
                         <asp:TextBox ID="txtimrun" runat="server" ValidationGroup="im" Width="178px"></asp:TextBox>
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="rfvimrun" runat="server" 
                             ControlToValidate="txtimrun" ErrorMessage="*" ValidationGroup="im"></asp:RequiredFieldValidator>
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
                         Ingrese Tiempo multa</td>
                     <td>
                         <asp:TextBox ID="txtimtmulta" runat="server" ValidationGroup="im" Width="178px"></asp:TextBox>
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="rfvimtmulta" runat="server" 
                             ControlToValidate="txtimtmulta" ErrorMessage="*" ValidationGroup="im"></asp:RequiredFieldValidator>
                     </td>
                     <td>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Ingrese ISBN libro&nbsp;&nbsp;&nbsp;&nbsp;
                     </td>
                     <td>
                         <asp:TextBox ID="txtimisbn" runat="server" ValidationGroup="im" Width="175px"></asp:TextBox>
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="rfvimisbn" runat="server" 
                             ControlToValidate="txtimisbn" ErrorMessage="*" ValidationGroup="im"></asp:RequiredFieldValidator>
                     </td>
                     <td>
                         <asp:RegularExpressionValidator ID="reg_imisbnl" runat="server" 
                             ControlToValidate="txtimisbn" ErrorMessage="Ingrese ISBN valido" 
                             ValidationExpression="\d*" ValidationGroup="im"></asp:RegularExpressionValidator>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     </td>
                 </tr>
                 <tr>
                     <td>
                         Descripcion&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     </td>
                     <td>
                         <asp:TextBox ID="txtimdescripcion" runat="server" Height="65px" 
                             TextMode="MultiLine" ValidationGroup="im" Width="175px"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td>
                         Precio libro&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     </td>
                     <td>
                         <asp:TextBox ID="txtprecio" runat="server" ValidationGroup="im" Width="173px"></asp:TextBox>
                     </td>
                     <td>
                         <asp:RequiredFieldValidator ID="rfvimprecio2" runat="server" 
                             ControlToValidate="txtprecio" ErrorMessage="*" ValidationGroup="im"></asp:RequiredFieldValidator>
                     </td>
                     <td>
                         <asp:RegularExpressionValidator ID="rfvimprecio" runat="server" 
                             ControlToValidate="txtprecio" ErrorMessage="El precio debe ser numerico" 
                             ValidationExpression="\d*" ValidationGroup="im"></asp:RegularExpressionValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="style21">
                         <asp:Label ID="lblmensajemu" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Button ID="btnmultar" runat="server" onclick="btnmultar_Click" 
                             Text="Multar" ValidationGroup="im" Width="174px" />
                     </td>
                 </tr>
             </table>
     </div> 
     </center>
     
     </center>
    
            
</asp:Content>
            


