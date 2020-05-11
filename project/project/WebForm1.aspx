<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/img/logo/back.jpg" 
        Height="71px">
    <table class="style1" style="height: 68px">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Place Order" 
                    PostBackUrl="~/canteenPage.aspx" BorderStyle="Groove" Font-Bold="True" 
                    Font-Size="Small" onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" PostBackUrl="~/signUp.aspx" 
                    Text="Create Account" BorderStyle="Groove" Font-Bold="True" 
                    Font-Italic="False" Font-Size="Small" />
            </td>
            <td>
                <asp:Menu ID="Menu1" runat="server" DynamicVerticalOffset="5" ForeColor="White" >
                    <Items>
                        <asp:MenuItem Text="Login" Value="Login">
                            <asp:MenuItem NavigateUrl="~/loginPage.aspx?a=1" Text="Customer" 
                                Value="Customer">
                            </asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/loginPage.aspx?a=2" Text="Owner" 
                                Value="Owner">
                            </asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                </asp:Menu>
            </td>
        </tr>
    </table>
</asp:Panel>
<p>
</p>
</asp:Content>
