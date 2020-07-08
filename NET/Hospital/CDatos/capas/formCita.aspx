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
                        <asp:Button ID="btnveridc" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridc" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
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
                        <asp:Button ID="btnveridp1" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridp1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
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
                        <asp:Button ID="btnveride1" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveride1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblfechac" runat="server" Text="Fecha y hora:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="fechac" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblOJO" runat="server" Text="La fecha debe estar en formato 'DD-MM-YYYY HH:MM XM' Ej: '18-06-2012 10:34:09 AM'"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbldiag" runat="server" Text="Diagnostico:"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="diag" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCC" runat="server" Text="Crear Cita" />
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
                        <asp:Button ID="btnveridc2" runat="server" Text="Verificar ID" />
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
                        <asp:Button ID="btnBC" runat="server" Text="Borrar Cita" />
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
                        <asp:Button ID="btnveridcviejo" runat="server" Text="Verificar ID" />
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
                        <asp:Button ID="btnveridc3" runat="server" Text="Verificar ID" />
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
                        <asp:Button ID="btnveridp13" runat="server" Text="Verificar ID" />
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
                        <asp:Button ID="btnveride13" runat="server" Text="Verificar ID" />
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
                        <asp:Label ID="lblfechac3" runat="server" Text="Nueva Fecha:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="fechac3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblOJO1" runat="server" Text="La fecha debe estar en formato 'DD-MM-YYYY HH:MM XM' Ej: '18-06-2012 10:34:09 AM'"></asp:Label>
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
                        <asp:Button ID="btnAC" runat="server" Text="Actualizar Cita" />
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
                        <asp:Button ID="btnveridc4" runat="server" Text="Verificar ID" />
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
                        <asp:Button ID="btnLC" runat="server" Text="Leer Cita" />
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
