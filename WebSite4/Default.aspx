<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="Label1" runat="server" Text="Club Atletico Social Sarasa"></asp:Label>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Apellido:  "></asp:Label>
            <asp:TextBox ID="ApellidoTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ApellidoTextBox" Display="Dynamic" ErrorMessage="Debe ingresar un apellido"></asp:RequiredFieldValidator>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Socio"></asp:Label>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Activo</asp:ListItem>
            <asp:ListItem>Adherente</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Label ID="Label4" runat="server" Text="Fecha de ingreso: "></asp:Label>
        <asp:TextBox ID="FechaTextBox" runat="server" OnTextChanged="FechaTextBox_TextChanged"></asp:TextBox>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False"></asp:Calendar>
        <asp:Label ID="Label5" runat="server" Text="Dias de actividad"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>L</asp:ListItem>
            <asp:ListItem>M</asp:ListItem>
            <asp:ListItem>R</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Label ID="Label6" runat="server" Text="Edad "></asp:Label>
        <asp:TextBox ID="EdadTextBox" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="EdadTextBox" ErrorMessage="Validar la edad ingresada" MaximumValue="70" MinimumValue="18"></asp:RangeValidator>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Actividades "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Tennis</asp:ListItem>
                <asp:ListItem>Rugby</asp:ListItem>
                <asp:ListItem>Football</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" />
        </p>
    </form>
</body>
</html>
