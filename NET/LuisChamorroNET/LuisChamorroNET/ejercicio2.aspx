<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio2.aspx.cs" Inherits="LuisChamorroNET.ejercicio2" %>

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
        <table class="auto-style1">
            <tr>
                <td><asp:Label ID="ej2lbl0" runat="server" Text="Ejercicio 2."></asp:Label></td>
                <td>
                    <asp:Label ID="ej2lbl00" runat="server" Text="Ingrese sus ventas."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="ej2lbl" runat="server" Text="Salario Base:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ej2num" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="ej2lbl1" runat="server" Text="Venta 1: "></asp:Label></td>
                <td>
                    <asp:TextBox ID="ej2num1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="ej2lbl2" runat="server" Text="Venta 2: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ej2num2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="ej2lbl3" runat="server" Text="Venta 3: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ej2num3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Label ID="ej2lbl4" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
