using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3ero2026PVI
{
    public partial class frm_horas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtNombre.Text = Session["s_Nombre"].ToString();
            txtCedula.Text = Session["s_Cedula"].ToString();
            txtSalario.Text = Session["s_Salario"].ToString();
        }

        protected void btnProcesar_Click(object sender, EventArgs e)
        {
            Session["s_Horas"] = txtHoras.Text;
            
            Response.Redirect("frm_resumen.aspx");
        }
    }
}