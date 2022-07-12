

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pagina2.aspx.cs" Inherits="Pagina2" %>

<!DOCTYPE html>

<script runat="server">
    protected void elegirFecha(object sender, EventArgs e)
    {
        TextBox2.Text = Calendar1.SelectedDate.Date.ToShortDateString();
    }
</script>


<script runat="server">
    protected void BotonCLICK(object sender, EventArgs e)
    {
        if (IsValid)
        {
            Response.Redirect("fw.aspx");
        }
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Fecha Seleccionada:&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Validar" OnClick="BotonCLICK" />
            <asp:RangeValidator
                ID="fechareunion"
                controltovalidate="TextBox2"
                display="Dynamic"
                text="Su eleccion no debe superar los 2 meses desde la fecha actual"
                type="Date"
                runat="server" 
                ErrorMessage="RangeValidator">
            </asp:RangeValidator>
            <br />
            <br />
            <asp:Calendar ID="Calendar1" 
                runat="server"
                selection="Day"
                OnSelectionChanged="elegirFecha">   
            </asp:Calendar>
        </div>
    </form>
</body>
</html>
