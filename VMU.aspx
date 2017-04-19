<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="VMU.aspx.cs" Inherits="test" Title="USUARIO BIBLIO-AIEP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="estilo.css">
    <style type="text/css">
        .auto-style2
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <center>
    
    
    <div >
    
    <table>
    <tr>
    
    </tr>
    </table>
     
    </div>
    <center>
    <div class=">
    <table style="width: 377px">
    <tr>
    <td class="style1"><asp:Label ID="lblmensaje" runat="server" Text=""></asp:Label></td>
    </tr>
    </table>
    
     </div>
     </center>
      
      <center>
        <div class="vermu">   
    <table>
    <tr>
    <td>Ver Multa</td>
    </tr>
    </table>
            
            <table>
                <tr>
                    <td>
                        Ingrese su RUN
                    </td>
                    <td>
                        <asp:TextBox ID="txtvermulus" runat="server" ValidationGroup="vm" Width="219px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnvermultaus" runat="server" onclick="btnvermultaus_Click" 
                            Text="Consultar" ValidationGroup="vm" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="req_vmirun" runat="server" 
                            ControlToValidate="txtvermulus" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        (*****9074)</td>
                    <td>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="gvvmus" runat="server" Width="224px">
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

