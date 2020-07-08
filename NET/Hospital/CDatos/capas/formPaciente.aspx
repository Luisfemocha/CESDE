<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formPaciente.aspx.cs" Inherits="capas.formPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblCP" runat="server" Text="Crear Paciente"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp" runat="server" Text="Verificar ID" OnClick="btnveridp_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridp" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnomp" runat="server" Text="Nombre:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nomp" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbledadp" runat="server" Text="Edad:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="edadp" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltelp" runat="server" Text="Telefono:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="telp" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCP" runat="server" Text="Crear Paciente" OnClick="btnCP_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblCP1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblBP" runat="server" Text="Borrar Paciente"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidp2" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idp2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
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
                        <asp:Button ID="btnBP" runat="server" Text="Borrar Paciente" OnClick="btnBP_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblBP1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblAP" runat="server" Text="Actualizar Paciente"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidpviejo" runat="server" Text="ID Viejo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idpviejo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridpviejo" runat="server" Text="Verificar ID" OnClick="btnveridpviejo_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridpviejo" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp3" runat="server" Text="Nuevo ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp3" runat="server" Text="Verificar ID" OnClick="btnveridp3_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridp3" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnomp3" runat="server" Text="Nuevo nombre:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nomp3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbledadp3" runat="server" Text="Nueva edad:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="edadp3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltelp3" runat="server" Text="Nuevo teléfono:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="telp3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAP" runat="server" Text="Actualizar Paciente" OnClick="btnAP_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblAP1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblLP" runat="server" Text="Leer Paciente"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidp4" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idp4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridp4" runat="server" Text="Verificar ID" OnClick="btnveridp4_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridp4" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLP" runat="server" Text="Leer Paciente" OnClick="btnLP_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblLP1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>