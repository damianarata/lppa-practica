using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pagina2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        fechareunion.MinimumValue = DateTime.Now.ToShortDateString();
        fechareunion.MaximumValue = DateTime.Now.AddMonths(2).ToShortDateString();
        TextBox1.Text = DateTime.Now.ToShortDateString();

    }
}