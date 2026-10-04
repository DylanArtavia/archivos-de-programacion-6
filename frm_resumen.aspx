<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_resumen.aspx.cs" Inherits="_3ero2026PVI.frm_resumen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">















        

        .auto-style3 {
            text-align: center;
            color: #FFFF66;
            font-size: xx-large;
        }
        

        .auto-style4 {
            color: #FF0000;
            text-align: center;
        }
        

        .auto-style7 {
            width: 71px;
            color: #FFFF66;
            text-align: left;
            height: 26px;
            font-weight: bold;
        }
        .auto-style8 {
            text-align: left;
            width: 182px;
            height: 26px;
        }
            

        .auto-style2 {
            width: 71px;
            color: #FFFF66;
            text-align: left;
            font-weight: bold;
        }
        .auto-style6 {
            text-align: left;
            width: 182px;
        }
        </style>
</head>
<body style="background-color:brown">
    <form id="form2" runat="server">
        <div>
            <div class="auto-style3">
                Resumen del Pago</div>
            <p>
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style4" colspan="2">
                            <asp:Label ID="lblMEnsaje" runat="server" ForeColor="#FF9900"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Cedula:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtCedula" runat="server" BackColor="#99FF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Nombre: </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtNombre" runat="server" BackColor="#99FF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Salario:</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtSalario" runat="server" BackColor="#99FF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Asociado?</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtAsociado" runat="server" BackColor="#99FF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Horas</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtHoras" runat="server" BackColor="#99FF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Bruto</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtBruto" runat="server" BackColor="#FFFF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">CCSS</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtCCSS" runat="server" BackColor="#FFFF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">Banco</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtBanco" runat="server" BackColor="#FFFF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Asociacion</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtAsociacion" runat="server" BackColor="#FFFF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Neto</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtApagar" runat="server" BackColor="#FFFF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Dolares</td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtDolares" runat="server" BackColor="#FFFF99" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </p>
        </div>
    </form>

</body>
</html>
