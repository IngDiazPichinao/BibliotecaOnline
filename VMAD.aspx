<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VMAD.aspx.cs" Inherits="test" Title="ADMINISTRADOR BIBLIO-AIEP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="estilo.css">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
    <div>
     <table>
     <tr>
     <td>Ver multa</td>
     </tr>
     </table>
            
               <table>
                   <tr>
                       <td>
                           Ingrese RUN alumno
                       </td>
                       <td>
                           <asp:TextBox ID="txtvmrun" runat="server" ValidationGroup="vm" Width="212px"></asp:TextBox>
                       </td>
                       <td>
                           <asp:RequiredFieldValidator ID="req_dlrun" runat="server" 
                               ControlToValidate="txtvmrun" ErrorMessage="*" ValidationGroup="vm"></asp:RequiredFieldValidator>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           <asp:Label ID="lblmensajevm" runat="server"></asp:Label>
                       </td>
                       <td>
                           (*****9074)</td>
                   </tr>
                   <tr>
                       <td>
                       </td>
                       <td>
                           <asp:Button ID="btnvermultaad" runat="server" onclick="btnvermultaad_Click" 
                               Text="Consultar" ValidationGroup="vm" Width="202px" />
                       </td>
                   </tr>
               </table>
               <table>
                   <tr>
                       <td>
                           <asp:GridView ID="fgvvmad" runat="server">
                           </asp:GridView>
                       </td>
                   </tr>
               </table>
       </div>
       </center>
          
     <br />
     <br />
        
     
     </center>
    
            
</asp:Content>
            


