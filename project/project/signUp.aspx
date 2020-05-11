<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="project.signUp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 381px;
        }
    </style>
</head>
<body style="background-image: url('img/bg/image1.png'); background-repeat:no-repeat; ">
    <form id="form1" runat="server">
    <div>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
        <table class="style1">
            <tr>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Please enter your name."></asp:RequiredFieldValidator>
                </td>
                <td>
    
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Please enter your hostel."></asp:RequiredFieldValidator>
                </td>
                <td>
        <asp:Label ID="Label2" runat="server" Text="Hostel"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Please enter your room no."></asp:RequiredFieldValidator>
                </td>
                <td>
        <asp:Label ID="Label3" runat="server" Text="Room No."></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Please enter your contact."></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="TextBox4" ErrorMessage="Please enter a valid contact info." 
            MaximumValue="9999999999" MinimumValue="1000000000" SetFocusOnError="True"></asp:RangeValidator>
                </td>
                <td>
        <asp:Label ID="Label4" runat="server" Text="Contact"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBox5" ErrorMessage="Please enter your email."></asp:RequiredFieldValidator>
                </td>
                <td>
        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox5" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="TextBox6" ErrorMessage="Please enter your password."></asp:RequiredFieldValidator>
                </td>
                <td>
        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="TextBox7" ErrorMessage="Please confirm your password."></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox6" ErrorMessage="The password does not match." 
            ControlToValidate="TextBox7"></asp:CompareValidator>
                </td>
                <td>
        <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
        <asp:Label ID="Label8" runat="server" Text="Upload pic"></asp:Label>
                </td>
                <td>
        <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: center">
        <asp:Button ID="Button1" runat="server" Text="Sign Up" 
            onclick="Button1_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
