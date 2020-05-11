<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart1.aspx.cs" Inherits="project.cart1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body style=" background-image:url('img/bg/cart.jpg')">
    <form id="form1" runat="server">
    <div>
    
                <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" BackColor="#513B30" BorderColor="White" 
            BorderStyle="Outset" BorderWidth="10px" ForeColor="White" 
            PostBackUrl="~/WebForm2.aspx" style="margin-left: 130px" Text="Home" 
            ToolTip="U will be taken back!"  />
        <br />
        <br />
        <br />
        <br />

        <asp:FormView 
                ID="FormView2" runat="server" 
                AllowPaging="True" DataKeyNames="ci" DataSourceID="SqlDataSource2" 
                EmptyDataText="Your Cart Is Empty." Font-Bold="True" ForeColor="White" 
                HeaderText="Your Cart" style="margin-left: 466px">
                <EditItemTemplate>
                   <asp:Label ID="ciLabel" runat="server" Text='<%# Bind("ci") %>'  Visible="false"/>
                   <asp:Label ID="cidLabel" runat="server" Text='<%# Bind("cid") %>'  Visible="false"/>
                    <asp:Label ID="custidLabel" runat="server" Text='<%# Bind("custid") %>'  Visible="false"/>
                    <asp:Label ID="fidLabel" runat="server" Text='<%# Bind("fid") %>'  Visible="false"/>

                    User:
                    <asp:Label ID="custnameLabel" runat="server" Text='<%# Bind("custname") %>' />
                    <asp:Image ID="Image1" runat="server" Height="74px" 
                        ImageUrl='<%# Eval("custphoto") %>' />
                    <br />
                    Canteen:
                    <asp:Label ID="cnameLabel" runat="server" Text='<%# Bind("cname") %>' />
                    <asp:Image ID="Image2" runat="server" Height="74px" 
                                    ImageUrl='<%# Eval("cphoto") %>' />
                    <br />
                    Food:
                    <asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
                    <br />
                    Price:
                    <asp:Label ID="fpriceLabel" runat="server" Text='<%# Bind("fprice") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="fquantityTextBox" runat="server" 
                        Text='<%# Bind("fquantity") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EmptyDataRowStyle Font-Bold="True" Font-Underline="True" ForeColor="#FFFFCC" />
                <FooterStyle Font-Italic="False" />
                <HeaderStyle Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFFCC" />
              
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                            <td>
                                User:
                                <asp:Label ID="custnameLabel" runat="server" Text='<%# Bind("custname") %>' />
                            </td>
                            <td>
                                <asp:Image ID="Image1" runat="server" Height="74px" 
                                    ImageUrl='<%# Eval("custphoto") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Canteen:
                                <asp:Label ID="cnameLabel" runat="server" Text='<%# Bind("cname") %>' />
                            </td>
                            <td>
                                <asp:Image ID="Image2" runat="server" Height="74px" 
                                    ImageUrl='<%# Eval("cphoto") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    Food:
                    <asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
                    <br />
                    Price:
                    <asp:Label ID="fpriceLabel" runat="server" Text='<%# Bind("fprice") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="fquantityLabel" runat="server" Text='<%# Bind("fquantity") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete"/>
                    
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Cart] WHERE [ci] = @ci" 
                InsertCommand="INSERT INTO [Cart] ([ci], [cid], [cname], [cphoto], [custid], [custname], [custphoto], [fid], [fname], [fprice], [fquantity]) VALUES (@ci, @cid, @cname, @cphoto, @custid, @custname, @custphoto, @fid, @fname, @fprice, @fquantity)" 
                SelectCommand="SELECT * FROM [Cart] WHERE ([custid] = @custid)" 
                
                
            UpdateCommand="UPDATE [Cart] SET [cid] = @cid, [cname] = @cname, [cphoto] = @cphoto, [custid] = @custid, [custname] = @custname, [custphoto] = @custphoto, [fid] = @fid, [fname] = @fname, [fprice] = @fprice, [fquantity] = @fquantity WHERE [ci] = @ci">
                <DeleteParameters>
                    <asp:Parameter Name="ci" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ci" Type="Int32" />
                    <asp:Parameter Name="cid" Type="Int32" />
                    <asp:Parameter Name="cname" Type="String" />
                    <asp:Parameter Name="cphoto" Type="String" />
                    <asp:Parameter Name="custid" Type="Int32" />
                    <asp:Parameter Name="custname" Type="String" />
                    <asp:Parameter Name="custphoto" Type="String" />
                    <asp:Parameter Name="fid" Type="Int32" />
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="fprice" Type="Decimal" />
                    <asp:Parameter Name="fquantity" Type="Decimal" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="0" Name="custid" SessionField="user" 
                        Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cid" Type="Int32" />
                    <asp:Parameter Name="cname" Type="String" />
                    <asp:Parameter Name="cphoto" Type="String" />
                    <asp:Parameter Name="custid" Type="Int32" />
                    <asp:Parameter Name="custname" Type="String" />
                    <asp:Parameter Name="custphoto" Type="String" />
                    <asp:Parameter Name="fid" Type="Int32" />
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="fprice" Type="Decimal" />
                    <asp:Parameter Name="fquantity" Type="Decimal" />
                    <asp:Parameter Name="ci" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    
        <br />
        <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="Confirm Order" style="margin-left: 521px" 
                         />
        <br />
    </div>
    </form>
</body>
</html>
