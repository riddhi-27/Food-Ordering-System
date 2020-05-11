<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="project.loginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: "Snap ITC";
            font-size: x-small;
            font-weight: 700;
            margin-left: 0px;
        }
        .style2
        {
            font-family: serif;
            font-size: medium;
        }
        .style3
        {
            font-size: medium;
        }
        .style4
        {}
    </style>
</head>
<body style="background-image: url('img/bg/cust.png'); background-attachment:fixed; background-position:center; background-repeat:no-repeat; height: 651px;">
    <form id="form1" runat="server">
    <div >
        <asp:Panel ID="Panel1" runat="server" 
            
            style="margin-top:50px; margin-left: 470px;   text-align: center;" 
            BorderColor="#006666" BorderStyle="Ridge" Height="511px" Width="300px">
       
            <div class="style4">
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="style1" Font-Bold="True" 
                    Font-Size="Large" Text="Email"></asp:Label>
                <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style2" TextMode="Email"></asp:TextBox>
                <br class="style3" />
                <br class="style1" />
                <br class="style1" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    BorderStyle="Dotted" ControlToValidate="TextBox1" CssClass="style1" 
                    ErrorMessage="   Email is compulsory" Font-Size="Larger"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="style1" Font-Bold="True" 
                    Font-Size="Large" Text="Password"></asp:Label>
                <span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style1" TextMode="Password"></asp:TextBox>
                <br />
                <br class="style1" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    BorderStyle="Dotted" ControlToValidate="TextBox2" CssClass="style1" 
                    ErrorMessage="Password is compulsory" Font-Size="Larger" Width="252px"></asp:RequiredFieldValidator>
                <br class="style1" />
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="style1" Font-Bold="True" 
                    Font-Size="Medium" onclick="Button1_Click" Text="Login" />
                <span class="style1">
                <br />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="style1" Text="Label" 
                    Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><asp:HyperLink ID="HyperLink1" 
                    runat="server" CssClass="style1" NavigateUrl="~/signUp.aspx">New User?</asp:HyperLink>
                <br />
                <br 
        class="style1" />
                <span class="style1">&nbsp; </span><asp:HyperLink ID="HyperLink2" runat="server" 
                    CssClass="style1">Forgot Password?</asp:HyperLink>
            </div>
          
     </asp:Panel>
    </div>
    </form>
</body>
</html>
