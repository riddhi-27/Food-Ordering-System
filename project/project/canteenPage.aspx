<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="canteenPage.aspx.cs" Inherits="project.canteenPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            margin-left:500px;
            border-width:thick;
            line-height:30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: url('img/logo/bk1.jpg'); color: #FFFFFF; width: 100%; height: 100%;">
    
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/WebForm1.aspx" 
            Text="Back" />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <table class="style1" frame="box">
                <tr>
                    <td >
                        Select A Canteen To Proceed:</td>
                </tr>
                <tr>
                    <td >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="cname" DataValueField="cid">
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td >
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="RadioButtonList1" 
                            ErrorMessage=" Please select a canteen to proceed"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td >
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [cid], [cname] FROM [canteen]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td  >
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Next" 
                            Width="53px" />
                    </td>
                </tr>
                <tr>
                    <td >
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
