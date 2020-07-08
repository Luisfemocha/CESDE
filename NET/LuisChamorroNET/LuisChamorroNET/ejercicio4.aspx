<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio4.aspx.cs" Inherits="LuisChamorroNET.ejercicio4" %>

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
                        <asp:Label ID="Label1" runat="server" Text="Ejercicio 4"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Ingrese sus notas."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Parcial 1:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="p1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Parcial 2:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="p2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Parcial 3:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="p3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Examen: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ex" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Trabajo: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tr" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej4lb" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
