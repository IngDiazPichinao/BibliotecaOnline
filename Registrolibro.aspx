<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registrolibro.aspx.cs" Inherits="test" Title="ADMINISTRADOR BIBLIO-AIEP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
     <div>
    <center>
   
    <table>
    <tr>
    <td>Registro LIBRO</td>
    </tr>
    </table>
    
    <table>
    <tr>
    <td align="left">Ingrese ISBN</td>
    <td>
    <asp:TextBox ID="txtisbningreso" runat="server" Width="235px"></asp:TextBox>
    </td>
    <td>
    <asp:RequiredFieldValidator ID="req_ingresel" runat="server" ControlToValidate="txtisbningreso" ErrorMessage="*"></asp:RequiredFieldValidator>
    </td>
    <td>
    <asp:RegularExpressionValidator ID="revisbn" runat="server" ControlToValidate="txtisbningreso" ErrorMessage="Ingrese un ISBN Numerico"  ValidationExpression="\d*"></asp:RegularExpressionValidator>
    </td>
    </tr>
    
         <tr>
         <td align="left"> Ingrese el Autor del libro</td>
         <td>
         <asp:TextBox ID="txtautor" runat="server" Width="234px"></asp:TextBox>
         </td>
         <td> 
         <asp:RequiredFieldValidator ID="rfvautor" runat="server" ControlToValidate="txtautor" ErrorMessage="*"></asp:RequiredFieldValidator>
         </td>
         </tr>
         
           <tr>
           <td align="left">Ingrese el nombre del libro</td>
           <td>
           <asp:TextBox ID="txtnombre" runat="server" Width="234px"></asp:TextBox>
           </td>
           <td>
           <asp:RequiredFieldValidator ID="rfvname" runat="server"  ControlToValidate="txtnombre" ErrorMessage="*"></asp:RequiredFieldValidator>
           </td>
           </tr>
           
         <tr>
         <td align="left">Ingrese la categoria del libro</td>
         <td>
         <asp:TextBox ID="txtcategoria" runat="server" Width="235px"></asp:TextBox>
         </td>
         <td>
         <asp:RequiredFieldValidator ID="rfvcategoria" runat="server"  ControlToValidate="txtcategoria" ErrorMessage="*"></asp:RequiredFieldValidator>
         </td>
         </tr>
            
        <tr>
        <td align="left">Ingrese la cantidad</td>
        <td>
        <asp:TextBox ID="txtcantidad" runat="server" Width="235px"></asp:TextBox>
        </td>
        <td>
        <asp:RequiredFieldValidator ID="rfvcantidad" runat="server" ControlToValidate="txtcantidad" ErrorMessage="*"></asp:RequiredFieldValidator>
        </td>
        <td>
        <asp:RegularExpressionValidator ID="revcantidad" runat="server"  ControlToValidate="txtcantidad" ErrorMessage="La cantidad debe ser numerica"  ValidationExpression="\d"></asp:RegularExpressionValidator>
        </td>
        </tr>

            <tr>
                <td align="left">
                    Ingrese el precio del libro</td>
                <td>
                    <asp:TextBox ID="txtprecio" runat="server" Width="234px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvprecio" runat="server" 
                        ControlToValidate="txtprecio" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="revprecio" runat="server" 
                        ControlToValidate="txtprecio" ErrorMessage="El Precio debe ser numerico" 
                        ValidationExpression="\d*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnguardar" runat="server" onclick="btnguardar_Click1" 
                        Text="Guardar" Width="225px" />
                </td>
            </tr>
        </table>
 
    </center>
    </div> 
</asp:Content>

