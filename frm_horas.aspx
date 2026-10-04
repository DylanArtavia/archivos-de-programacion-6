<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_horas.aspx.cs" Inherits="_3ero2026PVI.frm_horas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style11 {
            color: azure;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style1 {
            color:azure;
            font-size: x-large;
            text-align: left;
        }
        .auto-style5 {
            color: #FFFF66;
            font-size: x-large;
            width: 396px;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style7 {
            height: 23px;
            color: #FFFF66;
            font-size: x-large;
            width: 396px;
        }
        .auto-style2 {
            color: azure;
            font-size: xx-large;
            text-align: left;
        }
        .auto-style9 {
            color: #FFFF66;
            font-size: x-large;
            width: 396px;
            height: 63px;
        }
        .auto-style10 {
            text-align: left;
            height: 63px;
        }
    </style>
</head>
<body style="background-color:brown ">
    <form id="form1" runat="server">
        <div>
        </div>
        <div>
        </div>
    <p class="auto-style11">
        <strong>Registro de Horas</strong></p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="18pt" ForeColor="Yellow" style="text-align: center" />
        <p class="auto-style1">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style5">Cedula: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtCedula" runat="server" BackColor="#99FF33" Height="20px" ReadOnly="True" Width="116px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Nombre:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNombre" runat="server" BackColor="#66FF66" Height="20px" ReadOnly="True" Width="198px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Salario:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtSalario" runat="server" BackColor="#66FF66" Height="20px" ReadOnly="True" TextMode="Number" Width="120px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Horas:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtHoras" runat="server" Height="20px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtHoras" ErrorMessage="Debe digitar horas" ForeColor="Yellow">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtHoras" Display="Dynamic" ErrorMessage="Valor no permitido (0 a 100)" ForeColor="Yellow" MaximumValue="100" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:Button ID="btnProcesar" runat="server" Height="39px" Text="PRocesar" Width="88px" OnClick="btnProcesar_Click" />
                        <asp:Button ID="btnLimpiar" runat="server" Height="39px" Text="Limpiar" Width="88px" />
                    </td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
