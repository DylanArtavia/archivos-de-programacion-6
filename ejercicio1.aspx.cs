using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3ero2026PVI
{
    public partial class ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnProcesar_Click(object sender, EventArgs e)
        {
            string strNombre, strCedula,strAsociado;
            int intSalario;

            if (optSi.Checked == true)
                strAsociado = "SI";
            else
                strAsociado = "NO";


            strNombre = txtNombre.Text;
            strCedula = txtCedula.Text;
            intSalario = Convert.ToInt32(txtSalario.Text);

            Session["s_Nombre"] = strNombre;
            Session["s_Cedula"] = strCedula;
            Session["s_Salario"] = intSalario;
            Session["s_Asociado"] = strAsociado;

            Response.Redirect("frm_Horas.aspx");


        }
    }
}