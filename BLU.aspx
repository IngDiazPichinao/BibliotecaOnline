<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="BLU.aspx.cs" Inherits="test" Title="USUARIO BIBLIO-AIEP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="estilo.css">
    <style type="text/css">
        .style22
        {
            width: 221px;
        }
        .style23
        {
            width: 75px;
        }
        .style24
        {
            width: 72px;
        }
                 
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
    <div>
    <table style="width: 657px; height: 40px;">
    <tr>
    <td ><asp:Label ID="lblmensaje" runat="server" Text=""></asp:Label></td>
    </tr>
    </table>
    
    
    
    <center>
    
    <table>
    <tr>
    <td>Buscar Libro</td>
    </tr>
    </table>
    </center>
    <center>
        <table>
            <tr>
                <td class="style24">
                    Ingrese nombre</td>
                <td class="style22">
                    <asp:TextBox ID="txtingreselus" runat="server" ValidationGroup="bl" Width="267px"></asp:TextBox>
                </td>
                <td class="style23">
                    <asp:Button ID="btnbuscarlus" runat="server" onclick="btnbuscarlus_Click" 
                        Text="Buscar" ValidationGroup="bl" Width="87px" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="req_txtingreseus" runat="server" 
                        ControlToValidate="txtingreselus" ErrorMessage="El Libro o Autor no existe" 
                        ValidationGroup="bl"></asp:RequiredFieldValidator>
                </td>
                <td>
                </td>
            </tr>
        </table>
        </center>
        <center>
        <table>
            <tr>
                <td>
                    <asp:GridView ID="gvblus" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </center>
     </div>
     
                        
    <br />
    <br />
   
    <br />
    <br />
    <br />
   
</asp:Content>

