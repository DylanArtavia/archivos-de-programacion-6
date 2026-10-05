<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmMuelle.aspx.cs" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void btnProcesar_Click(object sender, EventArgs e)
    {


    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
    <style type="text/css">
        .auto-style2 {
            width: 101px;
        }
        .auto-style3 {
            height: 23px;
            width: 101px;
        }
        .auto-style4 {
            width: 578px;
        }
        .auto-style5 {
            height: 23px;
            width: 578px;
        }
    </style>
</head>
<body style="background-color:lightblue; height: 769px;">
    <form id="form1" runat="server">   
                <div>
                    
        </div>
        <p class="auto-style11">
            <strong style="font-size: x-large; text-align: center;">Registro de Empleados</strong>
        </p>
        <br />
        <p class="auto-style1">
            <table style="width: 100%;">

            <tr>
                <td class="auto-style3">Matricula</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtMatricula" runat="server" Width="248px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatricula" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF3300">Ingrese la matricula.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMatricula" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3300" ValidationExpression="\d{1}-\d{2}-\d{3}" Font-Size="Large">Formato de la matricula incorrecto.</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nombre</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtNombre" runat="server" Width="248px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF3300">Ingrese el nombre.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmail" runat="server"  Width="248px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF3300">Ingrese el email.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Formato incorrecto.</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Digite de nuevo su email</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtEmail2" runat="server" Width="248px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail2" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF3300">Ingrese el email.</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmail2" ErrorMessage="CompareValidator" Font-Size="Large" ForeColor="#FF3300">Email no coincide.</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Dias</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDias" runat="server" Width="248px" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDias" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF3300">Ingrese la cantidad de dias.</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDias" ErrorMessage="RangeValidator" Font-Size="Large" ForeColor="#FF3300" MaximumValue="30" MinimumValue="1">Numero de dias invalido (1-30)</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Tarifa</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTarifa" runat="server" Width="248px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTarifa" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF3300">Ingrese la Tarifa.</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtTarifa" ErrorMessage="RangeValidator" Font-Size="Large" ForeColor="#FF3300" MaximumValue="20" MinimumValue="10">valor de tarifa invalido (10-20)</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Tipo</td>
                <td class="auto-style5">
                    <asp:RadioButton ID="op1" runat="server" Text="1" />
                    <asp:RadioButton ID="op2" runat="server" Text="2" />
                    <asp:RadioButton ID="op3" runat="server" Text="3" />
                    <asp:RadioButton ID="op4" runat="server" Text="4" />
                    <asp:RadioButton ID="op5" runat="server" Text="5" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Telefono</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtTelefono" runat="server" Width="248px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTelefono" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF3300">Ingrese el numero de telefono.</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefono" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#FF3300" ValidationExpression="\d{4}-\d{4}">Formato incorrecto.</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">largo</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtLargo" runat="server" Width="248px" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtLargo" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF3300">Ingrese el largo.</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="txtLargo" ErrorMessage="RangeValidator" Font-Size="Large" ForeColor="#FF3300" MaximumValue="30" MinimumValue="5" Type="Double">Largo incorrecto (5-30).</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Modelo</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtModelo" runat="server" Width="248px" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtModelo" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF3300">Ingrese el modelo.</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtModelo" ErrorMessage="RangeValidator" Font-Size="Large" ForeColor="#FF3300" MaximumValue="2026" MinimumValue="1970">Año del modelo incorrecto (1970-2026).</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">posición</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPosicion" runat="server"  Width="248px" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPosicion" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#FF3300">Ingrese la posición.</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="txtPosicion" ErrorMessage="RangeValidator" Font-Size="Large" ForeColor="#FF3300" MaximumValue="130" MinimumValue="1" Type="Integer">Posición incorrecta (1-130).</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Gobierno</td>
                <td class="auto-style5">
                    <asp:CheckBox ID="chkGobierno" runat="server" />
                </td>
            </tr>
        </table>
            <br />
<hr />
            <br />
            
            <asp:Button ID="btnProcesar" runat="server" style="margin-left: 70px" Text="Button" Width="185px" OnClick="btnProcesar_Click" />
            
            <asp:Button ID="btnLimpiar" runat="server" style="margin-left: 258px" Text="Button" Width="176px" OnClick="Button1_Click" />
    </form>
</body>
</html>
