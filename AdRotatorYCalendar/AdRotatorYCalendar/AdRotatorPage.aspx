<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdRotatorPage.aspx.cs" Inherits="AdRotatorPage" %>

<!DOCTYPE html>
<script runat="server">
    protected void submitBotonClick(object sender, EventArgs e)
    {
        Response.Write("Hola " + Nombre.Text + "has elegido: " + Categoria.SelectedItem.Text);
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Prueba AdRotator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator 
                AdvertisementFile="ADS.xml"
                BorderColor="Black"
                BorderWidth="1"
                ID="AdRotator1" 
                runat="server" />
            <h3>
                Nombre:
                <asp:TextBox 
                    ID="Nombre"
                    runat="server"></asp:TextBox>
            </h3>
            <h3>
                Categoria:
                <asp:DropDownList 
                    ID="Categoria" 
                    runat="server">
                    <asp:listitem>Motor</asp:listitem>
                    <asp:listitem>Ciclismo</asp:listitem>
                    <asp:listitem>Natacion</asp:listitem>
                </asp:DropDownList>
            </h3>
            <asp:Button 
                ID="Button1" 
                runat="server" 
                Text="Enviar" 
                onclick="submitBotonClick"/>
        </div>
    </form>
</body>
</html>
