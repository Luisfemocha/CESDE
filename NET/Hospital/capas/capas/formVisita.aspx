<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formVisita.aspx.cs" Inherits="capas.formVisita" %>

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
                        <asp:Label ID="lblCVis" runat="server" Text="Crear Visita"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidvis" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idvis" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridvis" runat="server" Text="Verificar ID" OnClick="btnveridvis_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridvis" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidv1" runat="server" Text="ID Visitante:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idv1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridv1" runat="server" Text="Verificar ID" OnClick="btnveridv1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridv1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp2" runat="server" Text="ID Paciente:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp2" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp2" runat="server" Text="Verificar ID" OnClick="btnveridp2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridp2" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
               <tr>
                    <td>
                        <asp:Label ID="lblfechac" runat="server" Text="Fecha:"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tdia" runat="server">DIA</asp:TextBox>
                        <asp:TextBox ID="tmes" runat="server">MES</asp:TextBox>
                        <asp:TextBox ID="tanio" runat="server">AÑO</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblhorac" runat="server" Text="Hora: "></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="thora" runat="server">HORAS</asp:TextBox>
                        <asp:TextBox ID="tminut" runat="server">MINUTOS</asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCVis" runat="server" Text="Crear Visita" OnClick="btnCVis_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblCVis1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblBVis" runat="server" Text="Borrar Visita"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidvis2" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idvis2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridvis2" runat="server" Text="Verificar ID" OnClick="btnveridvis2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridvis2" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnBVis" runat="server" Text="Borrar Visita" OnClick="btnBVis_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblBVis1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblAVis" runat="server" Text="Actualizar Visita"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidvisviejo" runat="server" Text="ID Viejo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idvisviejo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridvisviejo" runat="server" Text="Verificar ID" OnClick="btnveridvisviejo_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridvisviejo" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidvis3" runat="server" Text="Nuevo ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idvis3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridvis3" runat="server" Text="Verificar ID" OnClick="btnveridvis3_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridvis3" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidv13" runat="server" Text="Nuevo ID Visitante:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idv13" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridv13" runat="server" Text="Verificar ID" OnClick="btnveridv13_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridv13" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp23" runat="server" Text="Nuevo ID Paciente:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp23" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp23" runat="server" Text="Verificar ID" OnClick="btnveridp23_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridp23" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblfecha3" runat="server" Text="Fecha:"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="tdia3" runat="server">DIA</asp:TextBox>
                        <asp:TextBox ID="tmes3" runat="server">MES</asp:TextBox>
                        <asp:TextBox ID="tanio3" runat="server">AÑO</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblhora3" runat="server" Text="Hora: "></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="thora3" runat="server">HORAS</asp:TextBox>
                        <asp:TextBox ID="tminut3" runat="server">MINUTOS</asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAVis" runat="server" Text="Actualizar Visita" OnClick="btnAVis_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblAVis1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblLVis" runat="server" Text="Leer Visita"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidvis4" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idvis4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridvis4" runat="server" Text="Verificar ID" OnClick="btnveridvis4_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridvis4" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLVis" runat="server" Text="Leer Visita" OnClick="btnLVis_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblLVis1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
