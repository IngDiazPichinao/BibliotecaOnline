<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EPAD.aspx.cs" Inherits="test" Title="ADMINISTRADOR BIBLIO-AIEP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="estilo.css">
    <style type="text/css">
        .style14
        {
            width: 187px;
        }
        .style23
        {
            height: 32px;
        }
        
        .auto-style1
        {
            width: 4px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        
                        
    <div>
    
    <table>
    </table>
     <center>
     <div class="extenderpea">
     <table>
     <tr>
     <td class="style14">Extender plazo entrega</td>
     </tr>
     </table>
    
         <table>
             <tr>
                 <td>
                     Ingrese ISBN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </td>
                 <td>
                     <asp:TextBox ID="txtepeisbn" runat="server" ValidationGroup="epl" Width="196px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="rfvepeisbn" runat="server" 
                         ControlToValidate="txtepeisbn" ErrorMessage="*" ValidationGroup="epl"></asp:RequiredFieldValidator>
                 </td>
                 <td>
                     <asp:RegularExpressionValidator ID="req_epeiisbn" runat="server" 
                         ControlToValidate="txtepeisbn" ErrorMessage="Ingrese ISBN valido" 
                         ValidationExpression="\d*" ValidationGroup="epl"></asp:RegularExpressionValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                     Ingrese su RUN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </td>
                 <td>
                     <asp:TextBox ID="txteperun" runat="server" Height="21px" ValidationGroup="epl" 
                         Width="193px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RequiredFieldValidator ID="rfveperun" runat="server" 
                         ControlToValidate="txteperun" ErrorMessage="*" ValidationGroup="epl"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr>
                 <td>
                 </td>
                 <td>
                     (*****9074)</td>
             </tr>
             <tr>
                 <td class="style23">
                     Ingrese la fecha de hoy</td>
                 <td align="center" class="style23">
                     <asp:TextBox ID="txtepefhoy" runat="server" ValidationGroup="epl" Width="196px"></asp:TextBox>
                 </td>
                 <td class="style23">
                     <asp:RequiredFieldValidator ID="rfvepefhoy" runat="server" 
                         ControlToValidate="txtepefhoy" ErrorMessage="*" ValidationGroup="epl"></asp:RequiredFieldValidator>
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
                 <td>
                     <asp:Label ID="lblmensajeex" runat="server"></asp:Label>
                 </td>
                 <td>
                     <asp:Button ID="btnestenderad" runat="server" onclick="btnestenderad_Click1" 
                         Text="Guardar Datos" ValidationGroup="epl" Width="193px" />
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
        
     
     </center>
    
            
</asp:Content>
            


