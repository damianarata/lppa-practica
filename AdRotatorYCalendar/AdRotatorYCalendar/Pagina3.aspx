<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pagina3.aspx.cs" Inherits="Pagina3" %>

<!DOCTYPE html>

<script runat="server">
    protected void botonClick(object sender, EventArgs e)
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
            ELIJA UNA FECHA PARA LA REUNION A LLEVARSE A CABO EN 2 MESES
            <asp:TextBox ID="feREUNION" 
                runat="server"
                columns="10">
            </asp:TextBox>
            <br/>
            <asp:RangeValidator 
                ID="fechaReunion"
                controltovalidate="feREUNION"
                display="dynamic"
                text="La fecha de reunion no debe superar los 2 meses"
                type="Date"
                runat="server" 
                ErrorMessage="RangeValidator">

            </asp:RangeValidator>
        <p>
        <asp:Button 
            ID="BB" 
            runat="server" 
            Text="ENVIAR"
            onclick="botonClick"/>
        </div>
    </form>
</body>
</html>
