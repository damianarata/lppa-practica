<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlCalendario.aspx.cs" Inherits="ControlCalendario" %>

<!DOCTYPE html>

<script runat="server">

    //DateTime fechita;
    protected void CalendarioCAMBIARSELECCION(object sender, EventArgs e)
    {
        lblFechas.Text = "<h2> Usted eligio las siguientes fechas: </h2>";
        foreach (DateTime fechita in calendario.SelectedDates)
        {
            lblFechas.Text += "<li>" + fechita.ToString("D");
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
            <asp:Calendar ID="calendario" 
                onselectionchanged="CalendarioCAMBIARSELECCION"
                selectionmode="DayWeekMonth"
                selectweektext="Seleccionar Semana"
                selectmonthtext="Seleccionar MEs"
                runat="server"></asp:Calendar>
            <asp:Label ID="lblFechas" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
