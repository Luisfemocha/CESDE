<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formVista1.aspx.cs" Inherits="LuisChamorroNET.formVista1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 350px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <hr/>
        &nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style4">
        <div>
            Ejercicio 1</div>
                </td>
                <td>Ingrese su capital a invertir.</td>
            </tr>
            <tr>
                <td class="auto-style4">Capital: </td>
                <td>
                    <asp:TextBox ID="num1" runat="server">
</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                </td>
                <td>
                    <asp:Label ID="l1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <hr>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"><asp:Label ID="ej2lbl0" runat="server" Text="Ejercicio 2."></asp:Label></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Ingrese sus ventas."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="ej2lbl" runat="server" Text="Salario Base:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ej2num" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><asp:Label ID="ej2lbl1" runat="server" Text="Venta 1: "></asp:Label></td>
                <td>
                    <asp:TextBox ID="ej2num1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="ej2lbl2" runat="server" Text="Venta 2: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ej2num2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="ej2lbl3" runat="server" Text="Venta 3: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="ej2num3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Label ID="ej2lbl4" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <hr/>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Ejercicio3"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Ingrese el valor de su compra."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Valor: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ej3num1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej3lb" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <hr/>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label5" runat="server" Text="Ejercicio 4"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Ingrese sus notas."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label7" runat="server" Text="Parcial 1:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="p1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label8" runat="server" Text="Parcial 2:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="p2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label9" runat="server" Text="Parcial 3:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="p3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label10" runat="server" Text="Examen: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ex" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label11" runat="server" Text="Trabajo: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tr" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej4lb" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <hr/>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label12" runat="server" Text="Ejercicio 5"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Ingrese la cantidad de mujeres y de hombres."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label14" runat="server" Text="Mujeres: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="muj" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label15" runat="server" Text="Hombres: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="hom" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button5" runat="server" Text="Calcular" OnClick="Button5_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej5lb" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <hr/>
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label16" runat="server" Text="Ejercicio 6"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label17" runat="server" Text="Ingrese su fecha de nacimiento y la fecha actual."></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label18" runat="server" Text="Fecha de nacimiento: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nac" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label19" runat="server" Text="Fecha actual: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="act" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Button ID="Button6" runat="server" Text="Button" OnClick="Button6_Click" />
                    </td>
                    <td>
                        <asp:Label ID="ej6lb" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
