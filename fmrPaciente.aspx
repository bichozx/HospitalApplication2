<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fmrPaciente.aspx.cs" Inherits="HospitalApplication2.fmrPaciente" %>

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
            width: 170px;
        }
        .auto-style4 {
            width: 145px;
            height: 23px;
        }
        .auto-style5 {
            width: 170px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
    </style>
</head>
<body>
    <h1>Ingresar Paciente</h1>
    <form id="form1" runat="server">
        <div>
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Codigo paciente</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtcodPaciente" runat="server" Width="72px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnasignarcodPaciente" runat="server" BackColor="White" BorderColor="#66CCFF" BorderStyle="Solid" CssClass="auto-style2" Font-Names="roboto" Font-Size="Medium" ForeColor="#66CCFF" OnClick="btnasignarcodPaciente_Click" Text="Buscar Paciente" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblasigPaciente" runat="server" Font-Names="roboto" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Documento</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtdocPaciente" runat="server" CssClass="auto-style6"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Nombre Paciente</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtnombPaciente" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Direccion Paciente</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtdirPaciente" runat="server" CssClass="auto-style1"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Telefono Paciente</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txttelPaciente" runat="server" CssClass="auto-style2"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Celular Paciente</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TxtcelPaciente" runat="server" CssClass="auto-style2"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblingPaciente" runat="server" Font-Names="roboto" ForeColor="#FF9900"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btningresarPaciente" runat="server" BackColor="White" BorderColor="#66CCFF" BorderStyle="Solid" CssClass="auto-style2" Font-Names="roboto" Font-Size="Medium" ForeColor="#66CCFF" OnClick="btningresarPaciente_Click" Text="Ingresar Paciente" />
                    </td>
                    <td>
                        <asp:Button ID="btnLimpiar" runat="server" BackColor="White" BorderColor="#66CCFF" BorderStyle="Solid" CssClass="auto-style2" Font-Names="roboto" Font-Size="Medium" ForeColor="#66CCFF" OnClick="btnLimpiar_Click" Text="Limpiar" />
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
