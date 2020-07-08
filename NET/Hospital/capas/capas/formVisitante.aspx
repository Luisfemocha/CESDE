<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formVisitante.aspx.cs" Inherits="capas.formVisitante" %>

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
                        <asp:Label ID="lblCV" runat="server" Text="Crear Visitante"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidv" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idv" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridv" runat="server" Text="Verificar ID" OnClick="btnveridv_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridv" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnomv" runat="server" Text="Nombre:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nomv" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbledadv" runat="server" Text="Edad:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="edadv" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltel" runat="server" Text="Teléfono:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tel" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCV" runat="server" Text="Crear Visitante" OnClick="btnCV_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblCV1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblBV" runat="server" Text="Borrar Visitante"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidv2" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idv2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridv2" runat="server" Text="Verificar ID" OnClick="btnveridv2_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridv2" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnBV" runat="server" Text="Borrar Visitante" OnClick="btnBV_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblBV1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblAV" runat="server" Text="Actualizar Visitante"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidvviejo" runat="server" Text="ID Viejo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idvviejo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridvviejo" runat="server" Text="Verificar ID" OnClick="btnveridvviejo_Click" style="height: 26px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridvviejo" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidv3" runat="server" Text="Nuevo ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idv3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridv3" runat="server" Text="Verificar ID" OnClick="btnveridv3_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridv3" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnomv3" runat="server" Text="Nuevo nombre:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nomv3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbledadv3" runat="server" Text="Nueva edad:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="edadv3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltel3" runat="server" Text="Nuevo tel:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tel3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAV" runat="server" Text="Actualizar Visitante" OnClick="btnAV_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblAV1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblLV" runat="server" Text="Leer Visitante"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidv4" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idv4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridv4" runat="server" Text="Verificar ID" OnClick="btnveridv4_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridv4" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLV" runat="server" Text="Leer Visitante" OnClick="btnLV_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblLV1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
