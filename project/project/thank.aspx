<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thank.aspx.cs" Inherits="project.thank" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image: url('img/cant/mainbg.jpg');  background-repeat:no-repeat; background-attachment: fixed; background-position:center;" bgcolor="#400000">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#513B30" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="10px" ForeColor="White" 
            PostBackUrl="~/WebForm2.aspx" style="margin-left: 130px" Text="Home" 
            ToolTip="U will be taken back!"  />
        <br />
        <br />
        <br />
        <br />

        <asp:Label ID="Label2" runat="server" BorderWidth="50px" ForeColor="White" 
            style="margin-left: 354px" Text="Thank You for visting us!"></asp:Label>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
