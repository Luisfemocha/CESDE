<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio5.aspx.cs" Inherits="LuisChamorroNET.ejercicio5" %>

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
                        <asp:Label ID="Label1" runat="server" Text="Ejercicio 5"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Ingrese la cantidad de mujeres y de hombres."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Mujeres: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="muj" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Hombres: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="hom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej5lb" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
