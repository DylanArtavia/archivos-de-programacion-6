using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3ero2026PVI
{
    public partial class frm_resumen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtNombre.Text = Session["s_Nombre"].ToString();
            txtCedula.Text = Session["s_Cedula"].ToString();
            txtSalario.Text = Session["s_Salario"].ToString();
            txtHoras.Text = Session["s_Horas"].ToString();
            txtAsociado.Text = Session["s_Asociado"].ToString();

            string strAsociado;
            int intSalario,intHoras;
            double intCCSS, intBruto, intNeto, intBanco, intAso;

            intSalario = Convert.ToInt32(txtSalario.Text);
            strAsociado = txtAsociado.Text;
            intHoras = Convert.ToInt32(txtHoras.Text);

            intBruto = intSalario * intHoras;
            intCCSS = intBruto * 0.09;
            intBanco = intBruto * 0.01;
            if (strAsociado == "SI")
                intAso = intBruto * 0.05;
            else
                intAso = 0;

            intNeto = intBruto - intCCSS - intAso - intBanco;

            txtApagar.Text = intNeto.ToString();
            txtBruto.Text = intBruto.ToString();
            txtCCSS.Text = intCCSS.ToString();
            txtBanco.Text = intBanco.ToString();
            txtAsociacion.Text= intAso.ToString();



        }
    }
}