using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3ero2026PVI
{
    public partial class frm_horas_cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookieEmpleados = Request.Cookies["Empleadoscookie"];
            if (cookieEmpleados == null)
                lblMensaje.Text = "No existen datos!!!";
            else
            {
                txtCedula.Text = cookieEmpleados["cedula"];
                txtNombre.Text = cookieEmpleados["nombre"];
                txtSalario.Text = cookieEmpleados["salario"];
               // txtAsociado.Text = cookieEmpleados["asociacion"];
            }
        }

        protected void btnProcesar_Click(object sender, EventArgs e)
        {
            HttpCookie cookieEmpleados = Request.Cookies["Empleadoscookie"];
            if (cookieEmpleados == null)
                lblMensaje.Text = "No existen datos!!!";
            else
            {
                //2. Llenar los datos
                cookieEmpleados["horas"] = txtHoras.Text;

                //3. La expiracion de la cookie
                cookieEmpleados.Expires = DateTime.Today.AddDays(10);

                //4. Escribirla
                Response.Cookies.Add(cookieEmpleados);

              //  Response.Redirect("frm_Horas_cookies.aspx");
            }

        }
    }
}