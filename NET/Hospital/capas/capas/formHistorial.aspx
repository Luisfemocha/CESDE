<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formHistorial.aspx.cs" Inherits="capas.formHistorial" %>

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
                        <asp:Label ID="lblCH" runat="server" Text="Crear Historial"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidph" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idph" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridph" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridph" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp3" runat="server" Text="ID Paciente:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp3" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridp3" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidenf1" runat="server" Text="ID Enfermedad:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idenf1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridenf1" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridenf1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblfechad" runat="server" Text="Fecha y hora:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="fechad" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblOJOhistorial" runat="server" Text="La fecha debe estar en formato 'DD-MM-YYYY' Ej: '18-06-2012'"></asp:Label>
                    </td>
                </tr>
                
                
                <tr>
                    <td>
                        <asp:Label ID="lblnotas" runat="server" Text="Notas:"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="notas" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCH" runat="server" Text="Crear Historial" />
                    </td>
                    <td>
                        <asp:Label ID="lblCH1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblBH" runat="server" Text="Borrar Historial"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidph2" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idph2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridph2" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridph2" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnBH" runat="server" Text="Borrar Historial" />
                    </td>
                    <td>
                        <asp:Label ID="lblBH1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblAH" runat="server" Text="Actualizar Historial"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidphviejo" runat="server" Text="ID Viejo:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idphviejo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridphviejo" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridphviejo" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidph3" runat="server" Text="Nuevo ID:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idph3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridph3" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridph3" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp33" runat="server" Text="Nuevo ID Paciente:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp33" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp33" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridp33" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidenf13" runat="server" Text="Nuevo ID Enfermedad:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idenf13" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridenf13" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridenf13" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblfechad3" runat="server" Text="Nueva Fecha:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="fechad3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblOJOhistorial1" runat="server" Text="La fecha debe estar en formato 'DD-MM-YYYY' Ej: '18-06-2012'"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnotas3" runat="server" Text="Nuevas notas:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="notas3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnAH" runat="server" Text="Actualizar Historial" />
                    </td>
                    <td>
                        <asp:Label ID="lblAH1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblLH" runat="server" Text="Leer Historial"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidph4" runat="server" Text="ID:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idph4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridph4" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridph4" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnLH" runat="server" Text="Leer Historial" />
                    </td>
                    <td>
                        <asp:Label ID="lblLH1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblBuscar" runat="server" Text="Buscar Historial"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblidp35" runat="server" Text="ID Paciente:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="idp35" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="btnveridp35" runat="server" Text="Verificar ID" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblveridp35" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar Historial" />
                    </td>
                    <td>
                        <asp:Label ID="lblBuscar1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
