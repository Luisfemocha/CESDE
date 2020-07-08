<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio3.aspx.cs" Inherits="LuisChamorroNET.ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Ejercicio3"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Ingrese el valor de su compra."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Valor: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej3num1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej3lb" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
