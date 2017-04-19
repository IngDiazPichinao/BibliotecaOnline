<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="estilo.css">
    <style type="text/css">
        .style1
        {
            width: 58px;
        }

        #form1
        {
            height: 539px;
        }

    </style>
</head>
<body background="" >
    <form id="form1" runat="server">
    <center>
    
    <table>
    <tr>
    <td></td>
    </tr>
    </table>
    
    <br />
    <br />
    <br />
    
    </center>
    
    <br />
    <center>
    
    <center>
    <div class="al">
    <br />
    <br />
    <center>
    
    <table>
    <tr>
    <td class="style1"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
    </tr>
    
    <tr>
    <td class="style1">Usuario/Administrador</td>
    <td><asp:TextBox ID="txtuser" runat="server" ValidationGroup="login"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="req_txtuser" runat="server" ErrorMessage="Ingrese RUN usuario/administrador existente" ControlToValidate="txtuser" ValidationGroup="login"></asp:RequiredFieldValidator></td>
    </tr>
    
    <tr>
    <td class="style1">Contraseña</td>
    <td><asp:TextBox ID="txtpas" runat="server" TextMode="Password" ontextchanged="txtpas_TextChanged" ValidationGroup="login"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="rfpas" runat="server" ErrorMessage="Ingrese su contraseña" ControlToValidate="txtpas" ValidationGroup="login"></asp:RequiredFieldValidator></td>
    </tr>
    
    <tr>
    <td class="style1"><asp:Button ID="btn1" runat="server" Text="Entrar" onclick="btn1_Click" Width="138px" ValidationGroup="login" /></td>
    </tr>
    </table>
    
    </center>
    
    </div>
    </center>
    
    </div>
    </center>
</form>
</body>
</html>
