<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formEmpleado.aspx.cs" Inherits="capas.formEmpleado" %>

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
    <script src="formEmpleado.aspx.cs"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblCE" runat="server" Text="Crear Empleado"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblide" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ide" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveride" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveride" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnome" runat="server" Text="Nombre:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nome" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbledade" runat="server" Text="Edad:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="edade" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltele" runat="server" Text="Telefono:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tele" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcargo" runat="server" Text="Cargo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="cargo" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCE" runat="server" Text="Crear Empleado" />
                    </td>
                    <td>
                        <asp:Label ID="lblCE1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblBE" runat="server" Text="Borrar Empleado"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblide2" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="ide2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveride2" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveride2" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnBE" runat="server" Text="Borrar Empleado" />
                    </td>
                    <td>
                        <asp:Label ID="lblBE1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblAE" runat="server" Text="Actualizar Empleado"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblideviejo" runat="server" Text="ID Viejo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ideviejo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnverideviejo" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblverideviejo" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblide3" runat="server" Text="Nuevo ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ide3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveride3" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveride3" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnome3" runat="server" Text="Nuevo nombre:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nome3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbledade3" runat="server" Text="Nueva edad:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="edade3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltele3" runat="server" Text="Nuevo teléfono:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tele3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcargo3" runat="server" Text="Nuevo cargo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="cargo3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAE" runat="server" Text="Actualizar Empleado" />
                    </td>
                    <td>
                        <asp:Label ID="lblAE1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblLE" runat="server" Text="Leer Empleado"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblide4" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="ide4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveride4" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveride4" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLE" runat="server" Text="Leer Empleado" />
                    </td>
                    <td>
                        <asp:Label ID="lblLE1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
