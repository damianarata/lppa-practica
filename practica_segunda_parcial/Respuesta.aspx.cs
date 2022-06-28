using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string apellido = Convert.ToString(Session["apellido"]);
        int tipo_socio = Convert.ToInt32(Session["tipo_socio"]);
        int edad = Convert.ToInt32(Session["edad"]);
        DateTime fec_ingreso = Convert.ToDateTime(Session["fec_ingreso"]);
        int actividades = Convert.ToInt32(Session["actividades"]);
        bool dias1 = Convert.ToBoolean(Session["actividades1"]);
        bool dias2 = Convert.ToBoolean(Session["actividades2"]);
        bool dias3 = Convert.ToBoolean(Session["actividades3"]);
        if ((edad >=18) && (edad <=25))
        {
            if ((tipo_socio == 1) && (dias1 == true) && (dias2 == true) && (dias3 == true) && (actividades == 3))
            {
                lbl_rta.Text = "El gasto total del socio es: " + 3 * 70;
            }
            
            else
            { 
                lbl_rta.Text = "SIN CUOTA";
            } 
        }
    }
}