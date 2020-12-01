<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmMedicos.aspx.cs" Inherits="HospitalApplication2.frmMedicos" %>

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
            width: 145px;
        }
        .auto-style3 {
            width: 145px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 180px;
        }
        .auto-style6 {
            height: 23px;
            width: 180px;
        }
        .auto-style8 {
            width: 180px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1 style="font-family: roboto">Ingresar Medico</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">Codigo Medico</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtcodigoMedico" runat="server" BorderStyle="Solid" Width="97px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnCodigoMedico" runat="server" BackColor="White" BorderColor="#66CCFF" BorderStyle="Solid" CssClass="auto-style9" Font-Names="roboto" Font-Size="Medium" ForeColor="#66CCFF" OnClick="btnCodigoMedico_Click" Text="Buscar Medico" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6">
                    <asp:Label ID="lblCodigoMedico" runat="server" ForeColor="#FF9900"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Nombre Medico</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtnombreMedico" runat="server" BorderStyle="Solid" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Telefono Medico</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txttelefonoMedico" runat="server" BorderStyle="Solid" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Especialidad Medica</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtespecialidadMedica" runat="server" BorderStyle="Solid" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnagregarMedico" runat="server" BackColor="White" BorderColor="#66CCFF" BorderStyle="Solid" CssClass="auto-style9" Font-Names="roboto" Font-Size="Medium" ForeColor="#66CCFF" OnClick="Button1_Click" Text="Agregar Medico" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="#66CCFF" BorderStyle="Solid" CssClass="auto-style9" Font-Names="roboto" Font-Size="Medium" ForeColor="#66CCFF" OnClick="Button2_Click" Text="Limpiar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblguardarMedico" runat="server" ForeColor="#FF9900"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
