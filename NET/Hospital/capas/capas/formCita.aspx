<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formCita.aspx.cs" Inherits="capas.formCita" %>

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
    <script src="formCita.aspx.cs"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblCC" runat="server" Text="Crear Cita"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidc" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idc" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridc" runat="server" Text="Verificar ID" OnClick="btnveridc_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridc" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp1" runat="server" Text="ID Paciente:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp1" runat="server" Text="Verificar ID" OnClick="btnveridp1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridp1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblide1" runat="server" Text="ID Empleado:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ide1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveride1" runat="server" Text="Verificar ID" OnClick="btnveride1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveride1" runat="server" Text=""></asp:Label>
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
                        <asp:Label ID="lbldiag" runat="server" Text="Diagnostico:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="diag" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnverdiag" runat="server" Text="Verificar ID" OnClick="btnverdiag_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblverdiag" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCC" runat="server" Text="Crear Cita" OnClick="btnCC_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblCC1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblBC" runat="server" Text="Borrar Cita"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidc2" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idc2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridc2" runat="server" Text="Verificar ID" OnClick="btnveridc2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridc2" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnBC" runat="server" Text="Borrar Cita" OnClick="btnBC_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblBC1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblAC" runat="server" Text="Actualizar Cita"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidcviejo" runat="server" Text="ID Viejo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idcviejo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridcviejo" runat="server" Text="Verificar ID" OnClick="btnveridcviejo_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridcviejo" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidc3" runat="server" Text="Nuevo ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idc3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridc3" runat="server" Text="Verificar ID" OnClick="btnveridc3_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridc3" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp13" runat="server" Text="Nuevo ID Paciente:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp13" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp13" runat="server" Text="Verificar ID" OnClick="btnveridp13_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridp13" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblide13" runat="server" Text="Nuevo ID Empleado:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ide13" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveride13" runat="server" Text="Verificar ID" OnClick="btnveride13_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveride13" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
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
                        <asp:Label ID="lbldiag3" runat="server" Text="Nuevo diagnostico:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="diag3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAC" runat="server" Text="Actualizar Cita" OnClick="btnAC_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblAC1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblLC" runat="server" Text="Leer Cita"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidc4" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idc4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridc4" runat="server" Text="Verificar ID" OnClick="btnveridc4_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridc4" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLC" runat="server" Text="Leer Cita" OnClick="btnLC_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblLC1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
