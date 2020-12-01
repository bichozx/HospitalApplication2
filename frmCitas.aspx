<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCitas.aspx.cs" Inherits="HospitalApplication2.frmCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 47%;
        }
        .auto-style2 {
            width: 160px;
        }
        .auto-style3 {
            width: 232px;
        }
        .auto-style4 {
            width: 282px;
        }
        .auto-style5 {
            width: 160px;
            height: 26px;
        }
        .auto-style6 {
            width: 232px;
            height: 26px;
        }
        .auto-style7 {
            width: 282px;
            height: 26px;
        }
        .auto-style8 {
            width: 47%;
            margin-left: 0px;
        }
        .auto-style9 {
            width: 65%;
        }
        .auto-style10 {
            width: 160px;
            height: 23px;
        }
        .auto-style11 {
            width: 232px;
            height: 23px;
        }
        .auto-style12 {
            width: 282px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-bottom: 39px">
           <h1>Asignacion De Citas</h1>
        </div>

        <table class="auto-style9">
            <tr>
                <td class="auto-style2">Codigo Cita</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtcodigocita" runat="server" BorderStyle="Inset" CssClass="auto-style8"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnConfirmarCita" runat="server" BackColor="White" BorderColor="#33CCFF" BorderStyle="Solid" CssClass="auto-style2" Font-Bold="True" Font-Names="roboto" Font-Size="11pt" ForeColor="#9999FF" Text="Confirmar Cita" OnClick="btnConfirmarCita_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblCita" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">fecha</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtfecha" runat="server" BorderStyle="Inset" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Hora</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txthora" runat="server" BorderStyle="Inset" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style2">Codigo Paciente</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtcodigopaciente" runat="server" BorderStyle="Inset" CssClass="auto-style1"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnBuscarPaciente" runat="server" BackColor="White" BorderColor="#33CCFF" BorderStyle="Solid" CssClass="auto-style2" Font-Bold="True" Font-Names="roboto" Font-Size="11pt" ForeColor="#9999FF" Text="Buscar Paciente" OnClick="btnBuscarPaciente_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style11">
                    <asp:Label ID="lblPaciente" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style2">Codigo Medico</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtcodigomedico" runat="server" BorderStyle="Inset" CssClass="auto-style1"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnBuscarMedico" runat="server" BackColor="White" BorderColor="#33CCFF" BorderStyle="Solid" CssClass="auto-style2" Font-Bold="True" Font-Names="roboto" Font-Size="11pt" ForeColor="#9999FF" Text="Buscar Medico" OnClick="btnBuscarMedico_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblMedico" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Vlr Consulta</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtvlrconsulta" runat="server" BorderStyle="Inset" CssClass="auto-style2"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Diagnostico</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtdiagnostico" runat="server" BorderStyle="Inset" CssClass="auto-style4"></asp:TextBox>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Acompañante</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtacompañante" runat="server" BorderStyle="Inset" CssClass="auto-style3"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnGuardarCita" runat="server" BackColor="White" BorderColor="#33CCFF" BorderStyle="Solid" Font-Bold="True" Font-Names="roboto" Font-Size="14pt" ForeColor="#9999FF" Text="Guardar Cita" Width="285px" OnClick="btnGuardarCita_Click" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnlimpiar" runat="server" BackColor="White" BorderColor="#33CCFF" BorderStyle="Solid" Font-Names="roboto" Font-Size="14pt" ForeColor="#9999FF" Height="28px" OnClick="Button1_Click" Text="Limpiar" Width="168px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="lblguardarCita" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>

    </form>
</body>
</html>
