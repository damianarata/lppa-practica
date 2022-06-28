using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Apellido"] = TextBox1.Text;
        Session["tipo_socio"] = RadioButtonList1.SelectedValue;
        Session["fec_ingreso"] = fec_ingreso.SelectedDate;
        Session["edad"] = txt_edad.Text;
        Session["actividades"] = lst_actividades.SelectedValue;
        Session["actividades1"] = CheckBox1.Checked;
        Session["actividades2"] = CheckBox2.Checked;
        Session["actividades3"] = CheckBox3.Checked;

        Response.Redirect("Respuesta.aspx");
    }


    protected void fec_ingreso_SelectionChanged(object sender, EventArgs e)
    {
    
        
            this.TextBox2.Text = fec_ingreso.SelectedDate.ToString("dd\\/MM\\/yyyy");
            fec_ingreso.Visible = false;
        
    }
}