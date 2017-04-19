<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BLAD.aspx.cs" Inherits="test" Title="ADMINISTRADOR BIBLIO-AIEP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="estilo.css">
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
        .style22
        {
            width: 42px;
        }
        .style25
        {
            width: 257px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
        <div>
    <center>
    
   

    <center>
    
    <table>
    <tr>
    <td>Buscar Libro</td>
    </tr>
    </table>
    
    <table style="width:85px">
    <tr>
    <td class="style1"><asp:Label ID="lblmensaje1" runat="server" Text=""></asp:Label></td>
    </tr>
    </table>
    
    </center>
    
        <table>
            <tr>
                <td class="style22">
                    Ingrese Nombre</td>
                <td>
                    <asp:TextBox ID="txtblbuscar" runat="server" ValidationGroup="bl" Width="258px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnbuscarlad" runat="server" onclick="btnbuscarlad_Click" 
                        style="margin-right: 0px" Text="Buscar" ValidationGroup="bl" Width="68px" />
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td class="style25">
                    <center style="width: 264px">
                        <asp:RequiredFieldValidator ID="rfvbuscar" runat="server" 
                            ControlToValidate="txtblbuscar" ErrorMessage="Ingrese el nombre del libro" 
                            ValidationGroup="bl"></asp:RequiredFieldValidator>
                    </center>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:GridView ID="gbblad" runat="server">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblmensaje2" runat="server"></asp:Label>
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
   
     <br />
     <br />
           
     <br />
           
     <br />
     <br />
    </center>
            
</asp:Content>
            


