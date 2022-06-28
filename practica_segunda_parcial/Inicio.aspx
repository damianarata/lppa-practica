<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Inicio.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 871px">
    
        <br />
        <br />
        APELLIDO&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="16px"  Width="178px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Este campo debe completarse"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        SOCIO<asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="93px" style="margin-left: 62px" Width="146px">
            <asp:ListItem Selected="True" Value="1">ACTIVO</asp:ListItem>
            <asp:ListItem Value="0">ADHERENTE</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        FECHA DE INGRESO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Height="19px" style="margin-top: 0px" Width="253px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Calendar ID="fec_ingreso" runat="server" Height="16px" SelectedDate="06/11/2022 23:25:00" style="margin-left: 185px" Width="41px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" OnSelectionChanged="fec_ingreso_SelectionChanged">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
        <br />
&nbsp;<br />
        <br />
        DIAS DE ACTIVIDAD
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="L" />
&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox2" runat="server" Text="M" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox3" runat="server" Text="R" />
        <br />
        <br />
        EDAD<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_edad" runat="server" Height="33px" style="margin-left: 0px; margin-top: 0px" Width="43px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_edad" ErrorMessage="Este campo debe completarse"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <br />
        <br />
        ACTIVIDADES<br />
        <asp:DropDownList ID="lst_actividades" runat="server" Height="16px" style="margin-left: 113px" Width="99px">
            <asp:ListItem Selected="True" Value="1">RUGBY</asp:ListItem>
            <asp:ListItem Value="2">TENNIS</asp:ListItem>
            <asp:ListItem Value="3">FOOTBALL</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button1" runat="server" style="margin-left: 557px" Text="ENVIAR" Width="246px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
