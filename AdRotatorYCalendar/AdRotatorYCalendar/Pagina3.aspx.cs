using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pagina3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fechaReunion.MinimumValue = DateTime.Now.ToShortDateString();
        fechaReunion.MaximumValue = DateTime.Now.AddMonths(2).ToShortDateString();
    }
}