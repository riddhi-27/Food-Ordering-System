<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shanuz.aspx.cs" Inherits="project.shanuz" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .men
    {
        float:right;
    }
    </style>
</head>
<body style="background-image:url('img/bg/shan.png'); background-position:top; background-repeat:no-repeat; background-attachment:fixed; background-size:contain;">
    <form id="form1" runat="server">
    <div>
       
        <asp:Panel ID="Panel1" runat="server" style="margin-left: 360px">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="Menu" Value="Menu"></asp:MenuItem>
                    <asp:MenuItem Text="Order Now" Value="Order Now" NavigateUrl="shaMenu.aspx"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle Font-Bold="True" Font-Size="Large" ForeColor="White" 
                    HorizontalPadding="100px" />
            </asp:Menu>
        </asp:Panel>
       
    </div>
    </form>
</body>
</html>
