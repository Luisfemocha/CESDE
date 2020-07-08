<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formEnfermedad.aspx.cs" Inherits="capas.formEnfermedad" %>

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
                        <asp:Label ID="lblCEnf" runat="server" Text="Crear Enfermedad"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidenf" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idenf" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridenf" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridenf" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnomenf" runat="server" Text="Nombre:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nomenf" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblsintenf" runat="server" Text="Síntomas:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="sintenf" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcuidenf" runat="server" Text="Cuidados:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="cuidenf" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblespecs" runat="server" Text="Especificaciones:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="especs" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCEnf" runat="server" Text="Crear Enfermedad" />
                    </td>
                    <td>
                        <asp:Label ID="lblCEenf1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblBEnf" runat="server" Text="Borrar Enfermedad"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidenf2" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idenf2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridenf2" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridenf2" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnBEnf" runat="server" Text="Borrar Enfermedad" />
                    </td>
                    <td>
                        <asp:Label ID="lblBEenf1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblAEnf" runat="server" Text="Actualizar Enfermedad"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidenfviejo" runat="server" Text="ID Viejo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idenfviejo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridenfviejo" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridenfviejo" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidenf3" runat="server" Text="Nuevo ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idenf3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridenf3" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridenf3" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnomenf3" runat="server" Text="Nuevo nombre:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nomenf3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblsintenf3" runat="server" Text="Nuevos síntomas:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="sintenf3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcuidenf3" runat="server" Text="Nuevos cuidados:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="cuidenf3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblespecs3" runat="server" Text="Nuevas especificaciones:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="especs3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAEnf" runat="server" Text="Actualizar Enfermedad" />
                    </td>
                    <td>
                        <asp:Label ID="lblAEnf1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblLEnf" runat="server" Text="Leer Enfermedad"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidenf4" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idenf4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridenf4" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridenf4" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLEnf" runat="server" Text="Leer Enfermedad" />
                    </td>
                    <td>
                        <asp:Label ID="lblLEnf1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
