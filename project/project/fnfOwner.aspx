<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fnfOwner.aspx.cs" Inherits="project.fnfOwner" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="#400000">
    <form id="form1" runat="server">
    <div>
     <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#513B30" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="10px" ForeColor="White" 
            PostBackUrl="~/WebForm1.aspx" 
            style="margin-left: 164px; margin-top: 21px;" Text="Home" 
            ToolTip="U will be logged out!" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" BorderWidth="25px" ForeColor="White" 
            style="margin-left: 418px" 
            Text="Spicy Bite's Owner Page is available currently!" Width="437px"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" BorderWidth="50px" ForeColor="White" 
            style="margin-left: 510px" Text="Thank You for visting us!"></asp:Label>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
