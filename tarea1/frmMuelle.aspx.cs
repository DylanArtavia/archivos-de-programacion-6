using System;
using System.Web;

namespace 3ero2026PVI
{
    public partial class frmMuelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProcesar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string strMatricula;
                string strNombre;
                string strEmail;
                string strNuevoEmail;
                string strDias;
                string strTarifa;
                string strTipo;
                string strTelefono;
                string strLargo;
                string strModelo;
                string strPosicion;
                string strGobierno;

                strMatricula = txtMatricula.Text;
                strNombre = txtNombre.Text;
                strEmail = txtEmail.Text;
                strNuevoEmail = txtNuevoEmail.Text;
                strDias = txtDias.Text;
                strTarifa = txtTarifa.Text;
                strTelefono = txtTelefono.Text;
                strLargo = txtLargo.Text;
                strModelo = txtModelo.Text;
                strPosicion = txtPosicion.Text;

                if (optTipo1.Checked == true)
                    strTipo = "1";
                else if (optTipo2.Checked == true)
                    strTipo = "2";
                else if (optTipo3.Checked == true)
                    strTipo = "3";
                else if (optTipo4.Checked == true)
                    strTipo = "4";
                else
                    strTipo = "5";

                if (chkGobierno.Checked == true)
                    strGobierno = "SI";
                else
                    strGobierno = "NO";

                // Creacion de una cookie

                HttpCookie cookieMuelle = new HttpCookie("MuelleCookie");

                // Llenar los datos

                cookieMuelle["matricula"] = strMatricula;
                cookieMuelle["nombre"] = strNombre;
                cookieMuelle["email"] = strEmail;
                cookieMuelle["nuevoemail"] = strNuevoEmail;
                cookieMuelle["dias"] = strDias;
                cookieMuelle["tarifa"] = strTarifa;
                cookieMuelle["tipo"] = strTipo;
                cookieMuelle["telefono"] = strTelefono;
                cookieMuelle["largo"] = strLargo;
                cookieMuelle["modelo"] = strModelo;
                cookieMuelle["posicion"] = strPosicion;
                cookieMuelle["gobierno"] = strGobierno;

                // Expiracion de la cookie

                cookieMuelle.Expires = DateTime.Today.AddDays(10);

                // Escribir cookie

                Response.Cookies.Add(cookieMuelle);

                // Ir a la siguiente pagina

                Response.Redirect("frm_muelle_datos.aspx");
            }
        }
    }
}