<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="project.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/img/bg/bg3.jpg">
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/canteenPage.aspx" 
                        Text="Place Order" onclick="Button1_Click" BackColor="Black" 
                        ForeColor="White" Font-Bold="True" Font-Names="Bookman Old Style" 
                        Font-Size="Large" />
                </td>
                <td class="style2">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Profile" BackColor="Black" ForeColor="White" Font-Bold="True" 
                        Font-Names="Bookman Old Style" Font-Size="Large" />
                </td>
                <td class="style2">
                    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                        Text="Your Orders" BackColor="Black" ForeColor="White" Font-Bold="True" 
                        Font-Names="Bookman Old Style" Font-Size="Large" />
                </td>
                <td class="style2">
                    <asp:Button ID="Button16" runat="server" Text="Your Cart"  BackColor="Black" 
                        ForeColor="White" Font-Bold="True" 
                        Font-Names="Bookman Old Style" Font-Size="Large" onclick="Button16_Click"/>
                </td>
                <td class="style2">
                    <asp:Button ID="Button6" runat="server" Text="Reviews" 
                        onclick="Button6_Click" BackColor="Black" Font-Bold="True" 
                        Font-Names="Bookman Old Style" Font-Size="Large" ForeColor="White" />
                </td>
                <td class="style2">
                    <asp:Button ID="Button3" runat="server" Text="Logout" BackColor="Black" 
                        Font-Bold="True" Font-Names="Bookman Old Style" Font-Size="Large" 
                        ForeColor="White" onclick="Button3_Click" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:Panel ID="Panel3" runat="server">
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
                                    Text="Show Profile" BackColor="Black" BorderColor="White" 
                                    BorderStyle="Double" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                            </td>
                            <td>
                                <asp:Button ID="Button13" runat="server" onclick="Button13_Click" 
                                    Text="Edit Profile" BackColor="Black" BorderColor="White" 
                                    BorderStyle="Double" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                            </td>
                            <td style="text-align: right">
                                <asp:Button ID="Button14" runat="server" onclick="Button4_Click" Text="Back" 
                                    BackColor="Black" BorderColor="White" BorderStyle="Groove" Font-Bold="True" 
                                    Font-Size="Medium" ForeColor="White" />
                            </td>
                        </tr>
                    </table>
                    <asp:MultiView ID="MultiView2" runat="server">
                        <asp:View ID="View4" runat="server">
                            <asp:DetailsView ID="DetailsView4" runat="server" AutoGenerateRows="False" 
                                CellPadding="2" DataSourceID="SqlDataSource1" Height="560px" 
                                style="text-align: center; margin-left: 415px" Width="478px" 
                                EmptyDataText="No Available info." ForeColor="Black" GridLines="None" 
                                BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                                Font-Bold="True" Font-Size="Larger" HeaderText="Your Profile">
                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                <Fields>
                                    <asp:BoundField DataField="custname" HeaderText="Name" 
                                        SortExpression="custname" />
                                    <asp:BoundField DataField="custhostel" HeaderText="Hostel" 
                                        SortExpression="custhostel" />
                                    <asp:BoundField DataField="custroom" HeaderText="Room No." 
                                        SortExpression="custroom" />
                                    <asp:BoundField DataField="custcontact" HeaderText="Contact" 
                                        SortExpression="custcontact" />
                                    <asp:BoundField DataField="custemail" HeaderText="Email" 
                                        SortExpression="custemail" />
                                    <asp:BoundField DataField="custpassword" HeaderText="Password" 
                                        SortExpression="custpassword" />
                                </Fields>
                                <FooterStyle BackColor="Tan" />
                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                    HorizontalAlign="Center" />
                            </asp:DetailsView>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="StoredProcedure2" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="0" Name="id1" SessionField="user" 
                                        Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </asp:View>
                        <asp:View ID="View5" runat="server">
                            <table class="style1">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="Name" CssClass="style3"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox2" 
                                            CssClass="style3"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Hostel" CssClass="style3"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="style3" 
                                            style="color: #000000"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3" 
                                            CssClass="style3"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="Room no" CssClass="style3"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="style3" 
                                            style="color: #000000"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox4" 
                                            CssClass="style3"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="Contact" CssClass="style3"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="style3" 
                                            style="color: #000000"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                            ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox5" 
                                            CssClass="style3"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Email" CssClass="style3"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="style3" 
                                            style="color: #000000"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox6" 
                                            CssClass="style3"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="style2">
                                        <asp:Button ID="Button15" runat="server" Text="Save" onclick="Button15_Click" 
                                            style="height: 35px; text-align: center;" BackColor="Black" 
                                            BorderColor="White" BorderStyle="Double" Font-Bold="True" Font-Size="Medium" 
                                            ForeColor="White" />
                                    </td>
                                    <td class="style2">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                    <br />
                </asp:Panel>
                <br />
                <br />
                <br />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <br />
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2">
                    <AlternatingItemTemplate>
                        <li style="background-color: #FFF8DC;">
                        Canteen:
                            <asp:Label ID="ocnameLabel" runat="server" Text='<%# Eval("ocname") %>' />
                       <asp:Image ID="ophotoimage" runat="server" ImageUrl='<%#Eval("ocphoto")%>' Height="150px" Width="150px" />
                            <br />
                            Date:
                            <asp:Label ID="odateLabel" runat="server" Text='<%# Eval("odate") %>' />
                            <br />
                            Food:
                            <asp:Label ID="ofnameLabel" runat="server" Text='<%# Eval("ofname") %>' />
                            <br />
                            Quantity:
                            <asp:Label ID="ofquantityLabel" runat="server" 
                                Text='<%# Eval("ofquantity") %>' />
                            <br />
                            Price:
                            <asp:Label ID="ofpriceLabel" runat="server" Text='<%# Eval("ofprice") %>' />
                            <br />
                        </li>
                    </AlternatingItemTemplate>
                    
                    <EmptyDataTemplate>
                        <h1 style="color:White">You have not ordered anything yet! What are you waiting for! </h1>
                    </EmptyDataTemplate>
                    
                    <ItemSeparatorTemplate>
                        <br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li style="background-color: #DCDCDC;color: #000000;">
                        Canteen:
                            <asp:Label ID="ocnameLabel" runat="server" Text='<%# Eval("ocname") %>' />
                            
                            <asp:Image ID="ophotoimage" runat="server" ImageUrl='<%#Eval("ocphoto")%>' Height="150px" Width="150px" />
                            <br />
                            Date:
                            <asp:Label ID="odateLabel" runat="server" Text='<%# Eval("odate") %>' />
                            <br />
                            Food:
                            <asp:Label ID="ofnameLabel" runat="server" Text='<%# Eval("ofname") %>' />
                            <br />
                            Quantity:
                            <asp:Label ID="ofquantityLabel" runat="server" 
                                Text='<%# Eval("ofquantity") %>' />
                            <br />
                            Price:
                            <asp:Label ID="ofpriceLabel" runat="server" Text='<%# Eval("ofprice") %>' />
                            <br />
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul ID="itemPlaceholderContainer" runat="server" 
                            style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                   </asp:ListView>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [ocname], [ocphoto], [odate], [ofname], [ofcat], [ofquantity], [ofprice] FROM [foodOrders] WHERE ([ocustid] = @ocustid)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="ocustid" SessionField="user" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </asp:View>
            <asp:View ID="View3" runat="server">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                                Text="Add review" BackColor="Black" BorderColor="White" 
                                BorderStyle="Double" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                        </td>
                        <td style="text-align: right">
                            <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                                Text="Back" Width="185px" BackColor="Black" BorderColor="White" 
                                BorderStyle="Double" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <asp:Panel ID="Panel2" runat="server" Visible="False">
                    <table class="style1">
                        <tr>
                            <td>
                                
                                <br />
                                <br />
                                <asp:DropDownList ID="DropDownList1" runat="server" 
                                    DataSourceID="SqlDataSource4" DataTextField="cname" DataValueField="cid">
                                </asp:DropDownList>
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [cid], [cname] FROM [canteen]"></asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Height="115px" TextMode="MultiLine" 
                                    Width="418px" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Submit" 
                                    BackColor="Black" BorderColor="White" BorderStyle="Double" Font-Bold="True" 
                                    Font-Size="Medium" ForeColor="White" style="margin-left: 473px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <br />
                <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" 
                    AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource3" 
                    ForeColor="#333333" GridLines="None" Height="341px" style="margin-left: 446px" 
                    Width="509px" EmptyDataText="No reviews to show yet.">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
                    <EmptyDataTemplate>
                        <span class="style3"><strong>You have not reviewed any canteen yet!</strong></span>
                    </EmptyDataTemplate>
                    <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
                    <Fields>
                        <asp:TemplateField HeaderText="Canteen:" SortExpression="cphoto">
                            
                            <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Bind("cphoto")%>' Height="100px" Width="100px"></asp:Image>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("cname") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="rdesc" HeaderText="Review:" SortExpression="rdesc" />
                    </Fields>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:DetailsView>
                <br />
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="StoredProcedure4" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="id1" SessionField="user" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:View>
        </asp:MultiView>
        <br />
    </asp:Panel>
</asp:Content>
