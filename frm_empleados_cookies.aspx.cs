using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3ero2026PVI
{
    public partial class frm_empleados_cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProcesar_Click(object sender, EventArgs e)
        {
            string strNombre, strCedula, strAsociado, intSalario;
            

            if (optSi.Checked == true)
                strAsociado = "SI";
            else
                strAsociado = "NO";


            strNombre = txtNombre.Text;
            strCedula = txtCedula.Text;
            intSalario = txtSalario.Text;

            //Creacion de una cookie

            //1. Creacion
            HttpCookie cookieEmpleados = new HttpCookie("EmpleadosCookie");

            //2. Llenar los datos
            cookieEmpleados["cedula"] = strCedula;
            cookieEmpleados["nombre"] = strNombre;
            cookieEmpleados["salario"] = intSalario;
            cookieEmpleados["asociacion"] = strAsociado;


            //3. La expiracion de la cookie
            cookieEmpleados.Expires = DateTime.Today.AddDays(10);

            //4. Escribirla
            Response.Cookies.Add(cookieEmpleados);

            Response.Redirect("frm_Horas_cookies.aspx");
        }
    }
}