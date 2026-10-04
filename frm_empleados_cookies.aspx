<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_empleados_cookies.aspx.cs" Inherits="_3ero2026PVI.frm_empleados_cookies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MI PRimer pagina ASPX</title>
    <style type="text/css">
        .auto-style1 {
            color:azure;
            font-size: x-large;
            text-align: left;
        }
        .auto-style2 {
            color: azure;
            font-size: xx-large;
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
        .auto-style6 {
            height: 25px;
            color: #FFFF66;
            font-size: x-large;
            width: 396px;
        }
        .auto-style3 {
            height: 25px;
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
        .auto-style11 {
            color: azure;
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body style="background-color:cornflowerblue ">
    <form id="form1" runat="server">
        <div>
        </div>
    <p class="auto-style11">
        <strong>Registro de Empleados con Cookies</strong></p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="18pt" ForeColor="Yellow" style="text-align: center" />
        <p class="auto-style1">
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style5">Cedula: </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtCedula" runat="server" Height="20px" Width="116px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCedula" ErrorMessage="Debe digitar la cedula" ForeColor="Yellow">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCedula" ErrorMessage="Formato Erroneo (9-9999-9999)" ForeColor="Yellow" ValidationExpression="\d{1}-\d{4}-\d{4}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Nombre:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNombre" runat="server" Height="20px" Width="198px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe digitar un Nombre" ForeColor="Yellow">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Email:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtEmail" runat="server" Height="20px" TextMode="Email" Width="198px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Debe digitar un Email" ForeColor="Yellow">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formato Erroneo " ForeColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Digite su nuevo email:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtNuevoEmail" runat="server" Height="20px" TextMode="Email" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNuevoEmail" ErrorMessage="Debe digitar un Email" ForeColor="Yellow">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtNuevoEmail" ErrorMessage="Formato Erroneo " ForeColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtNuevoEmail" ErrorMessage="Email's no coinciden" ForeColor="Yellow">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Telefono:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtTelefono" runat="server" Height="20px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Debe digitar un Telefono" ForeColor="Yellow">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Formato Erroneo (9999-9999)" ForeColor="Yellow" ValidationExpression="\d{4}-\d{4}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Edad:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEdad" runat="server" Height="20px" TextMode="Number" Width="72px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEdad" ErrorMessage="Debe digitar la Edad" Font-Size="18pt" ForeColor="Yellow">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtEdad" ErrorMessage="Valor no permitido (18 a 65)" ForeColor="Yellow" MaximumValue="65" MinimumValue="18" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Asociado?</td>
                    <td class="auto-style3">
                        <asp:RadioButton ID="optSi" runat="server" Text="Si" />
                        <asp:RadioButton ID="OptNo" runat="server" Text="No" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Salario:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtSalario" runat="server" Height="20px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtSalario" ErrorMessage="Debe digitar lel salario" ForeColor="Yellow">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtSalario" Display="Dynamic" ErrorMessage="Valor no permitido (3000 a 7000)" ForeColor="Yellow" MaximumValue="7000" MinimumValue="3000" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                        <asp:Button ID="btnProcesar" runat="server" OnClick="btnProcesar_Click" Text="Procesar" />
                    </td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
