using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["Apellido"]    = ApellidoTextBox.Text;
        Session["Socio"]       = RadioButtonList1.SelectedValue.ToString();
        Session["dias"]        = CheckBoxList1.SelectedItem.Value.ToString();
        Session["Actividades"] = DropDownList1.SelectedValue.ToString();
        Response.Redirect("Respuesta.aspx");
        /*if (Convert.ToInt32(Session["Socio"]) >= 18 && Convert.ToInt32(Session["Socio"]) <= 25)
        {
            if (Session["Socio"].ToString() == "Activo")
            {
                if ( CheckBoxList1.SelectedItem.Value >= 2)
                
            }
        }*/

    }

    protected void FechaTextBox_TextChanged(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        FechaTextBox.Text = Calendar1.SelectedDate.ToString();
        Calendar1.Visible = false;
    }
}