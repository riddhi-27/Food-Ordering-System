<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="spicyOwner.aspx.cs" Inherits="project.spicyOwner" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 260px;
           height:50px;
      
        }
        .style2
        {
            height: 66px;
            text-align: center;
            width: 1285px;
        }
        .style4
        {
            height: 91px;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            width: 100%;
        }
        .style8
        {
            font-family: "Lucida Calligraphy";
            font-weight: bold;
            font-size: large;
        }
        .style9
        {
            font-family: Aparajita;
            font-size: x-large;
        }
        .style10
        {
            width: 1285px;
        }
        .style11
        {
            text-align: center;
            width: 1285px;
        }
        .PA1
        {
             margin-left: 150px;
             margin-right: 150px;
            }
        .style12
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
        </style>
</head>
<body  style="background-image: url('img/cant/pink11.jpg'); background-repeat: no-repeat; background-attachment: fixed; background-position: center">
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel3" runat="server">
            <asp:Button ID="Button32" runat="server" onclick="Button32_Click" 
                Text="LogOut" />
            <br />
            <asp:Image ID="Image1" runat="server" Height="284px" 
                ImageUrl="~/img/cant/Screenshot (171).png" Width="100%" />
        </asp:Panel>
        <br />
        <span class="style9"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Menu</strong></span><br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="75px" 
            ImageUrl="~/img/logo/images (1).jpg" Width="89px" 
            onclick="ImageButton1_Click" style="margin-left: 154px" />
        <asp:Panel ID="Panel4" runat="server" Visible="False" CssClass="PA1">
            <table class="style1"  style="background-image:url('img/cant/qwe.jpg')">
                <tr>
                    <td class="style10">
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="31px" 
                            ImageUrl="~/img/logo/cross.png" Width="30px" 
                            onclick="ImageButton2_Click" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="Profile" Width="134px" Font-Bold="True" Font-Italic="True" 
                            Height="41px" />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                            Text="My Canteen" style="text-align: center" Font-Bold="True" 
                            Font-Italic="True" Height="41px" Width="134px" />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Menu" 
                            Width="134px" Font-Bold="True" Font-Italic="True" Height="41px" />
                        <br />
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
    
    </div>
    <asp:Panel ID="Panel5" runat="server" >
        <asp:MultiView ID="MultiView1" runat="server" >
            <asp:View ID="View1" runat="server">
                <asp:Panel ID="Panel12" runat="server" >
                    <table class="style1">
                        <tr >
                            <td class="style4" height="50" style="text-align: center">
                                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Orders" />
                            </td>
                            <td class="style4" height="50" style="text-align: center">
                                <asp:Button ID="Button5" runat="server" Text="Earnings" 
                                    onclick="Button5_Click" />
                            </td>
                            <td class="style4" height="50" style="text-align: center">
                                <asp:Button ID="Button6" runat="server" Text="Reviews" 
                                    onclick="Button6_Click" />
                                <br />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:MultiView ID="MultiView2" runat="server">
                    <asp:View ID="View4" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                                        Text="View by customer" />
                                </td>
                                <td rowspan="2">
                                    <asp:Panel ID="Panel6" runat="server" Visible="False">
                                        <table class="style1">
                                            <tr>
                                                <td>
                                                    <asp:Panel ID="Panel8" runat="server" Visible="False">
                                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                                            DataSourceID="SqlDataSource1" DataTextField="ocustname" DataValueField="ocustid" 
                                                           />
                                                       
                                                        <br />
                                                        <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Next" />
                                                        <br />
                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                            
                                                            
                                                            SelectCommand="SELECT DISTINCT [ocustid], [ocustname] FROM [foodOrders] WHERE ([ocid] = @ocid)">
                                                            <SelectParameters>
                                                                <asp:Parameter DefaultValue="1" Name="ocid" Type="Int32" />
                                                            </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        <br />
                                                    </asp:Panel>
                                                </td>
                                                <td>
                                                    <asp:Panel ID="Panel9" runat="server" Visible="False">
                                                        <table class="style1">
                                                            <tr>
                                                                <td>
                                                                    <asp:Image ID="Image2" runat="server" Height="102px" Width="115px" />
                                                                    <br />
                                                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                                    <br />
                                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                                                    <br />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                                                                        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
                                                                        AutoGenerateColumns="False">
                                                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                                        <Columns>
                                                                            <asp:BoundField DataField="odate" HeaderText="Order Date" SortExpression="odate" DataFormatString="{0:dd/MM/yyyy}"/>
                                                                            <asp:BoundField DataField="ofcat" HeaderText="Category" SortExpression="ofcat" />
                                                                            <asp:BoundField DataField="ofname" HeaderText="Food" 
                                                                                SortExpression="ofname" />
                                                                            <asp:BoundField DataField="ofquantity" HeaderText="Quantity" 
                                                                                SortExpression="ofquantity" />
                                                                        <asp:BoundField DataField="ofprice" HeaderText="Price" 
                                                                                SortExpression="ofprice" />
                                                                            </Columns>
                                                                        <EditRowStyle BackColor="#999999" />
                                                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                                                    </asp:GridView>
                                                                    <br />
                                                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                                        onselecting="SqlDataSource2_Selecting" SelectCommand="StoredProcedure5" 
                                                                        SelectCommandType="StoredProcedure">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="RadioButtonList1" DefaultValue="1" Name="id" 
                                                                                PropertyName="SelectedValue" Type="Int32" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <br />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                    </asp:Panel>
                                    <asp:Panel ID="Panel7" runat="server" Visible="False">
                                        <table class="style1">
                                            <tr>
                                                <td>
                                                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                                                        DataSourceID="SqlDataSource4" DataTextField="ofcat" DataValueField="ofcat">
                                                    </asp:RadioButtonList>
                                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                        SelectCommand="SELECT DISTINCT [ofcat] FROM [foodOrders] where [ocid] = 1" 
                                                        >
                                                    </asp:SqlDataSource>
                                                    <br />
                                                    <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                                                        Text="Next" />
                                                </td>
                                                <td>
                                                    <table class="style1">
                                                        <tr>
                                                            <td>
                                                                <asp:Panel ID="Panel10" runat="server" Visible="False">
                                                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                                        
                                                                        SelectCommand="SELECT DISTINCT [ofname] FROM [foodOrders] WHERE ([ofcat] = @ofcat) and [ocid ]= 1">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="RadioButtonList3" DefaultValue="Chinese" 
                                                                                Name="ofcat" PropertyName="SelectedValue" Type="String" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                                                                        DataSourceID="SqlDataSource5" DataTextField="ofname" DataValueField="ofname">
                                                                    </asp:RadioButtonList>
                                                                    <br />
                                                                    <asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
                                                                        Text="Next" />
                                                                    <br />
                                                                </asp:Panel>
                                                            </td>
                                                            <td>
                                                                <asp:Panel ID="Panel11" runat="server" Visible="False">
                                                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                                        DataSourceID="SqlDataSource3">
                                                                        <Columns>
                                                                            <asp:BoundField DataField="oid" HeaderText="Order ID" SortExpression="oid" />
                                                                            <asp:BoundField DataField="odate" HeaderText="Date" SortExpression="odate" DataFormatString="{0:dd/MM/yyyy}"/>
                                                                            <asp:BoundField DataField="ocustname" HeaderText="Name" 
                                                                                SortExpression="ocustname" />
                                                                            <asp:BoundField DataField="ocusthostel" HeaderText="Hostel" 
                                                                                SortExpression="ocusthostel" />
                                                                            <asp:BoundField DataField="ocustcontact" HeaderText="Contact" 
                                                                                SortExpression="ocustcontact" />
                                                                            <asp:BoundField DataField="ofcat" HeaderText="Category" SortExpression="ofcat" />
                                                                            <asp:BoundField DataField="ofname" HeaderText="Food" 
                                                                                SortExpression="ofname" />
                                                                            <asp:BoundField DataField="ofquantity" HeaderText="Quantity" 
                                                                                SortExpression="ofquantity" />
                                                                            <asp:BoundField DataField="ofprice" HeaderText="Price" 
                                                                                SortExpression="ofprice" />
                                                                        </Columns>
                                                                    </asp:GridView>
                                                                    <br />
                                                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                                        SelectCommand="SELECT [oid], [odate], [ocustname], [ocusthostel], [ocustcontact], [ofcat], [ofname], [ofquantity], [ofprice] FROM [foodOrders] WHERE (([ofcat] = @ofcat) AND ([ofname] = @ofname)) ORDER BY [oid], [odate], [ofcat]">
                                                                        <SelectParameters>
                                                                            <asp:ControlParameter ControlID="RadioButtonList3" DefaultValue="Chinese" 
                                                                                Name="ofcat" PropertyName="SelectedValue" Type="String" />
                                                                            <asp:ControlParameter ControlID="RadioButtonList2" DefaultValue="Momos" 
                                                                                Name="ofname" PropertyName="SelectedValue" Type="String" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </asp:Panel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                                        Text="View by food item" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                    <asp:View ID="View8" runat="server">
                        <asp:Label ID="Label11" runat="server" 
                            Text="Select a month a display each year's sale for that month!" 
                            BackColor="White" style="text-align: left"></asp:Label>
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            AutoPostBack="True" 
                            >
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [oid], [oprice] FROM [foodOrders] WHERE ([omonth] = @omonth)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="omonth" 
                                    PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                            style="color: #FFFFFF" EmptyDataText="No food purchased." ForeColor="Black" 
                            Height="453px" Width="545px" AllowPaging="True" 
                            AllowSorting="True" DataSourceID="SqlDataSource12" BorderColor="Black" 
                            BorderStyle="Double" BorderWidth="5px" Font-Bold="True" Font-Size="Large">
                            <Columns>
                                <asp:BoundField DataField="oid" HeaderText="Order ID" SortExpression="oid" />
                                <asp:BoundField DataField="oprice" HeaderText="Sale" 
                                    SortExpression="oprice" />
                            </Columns>
                        </asp:GridView>
                        <br />
                        
                    </asp:View>
                    <asp:View ID="View9" runat="server">
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [custphoto], [custname], [rdesc] FROM [review] WHERE ([cid] = @cid)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="cid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                            AutoGenerateRows="False" DataSourceID="SqlDataSource6" Height="304px" 
                            onpageindexchanging="DetailsView1_PageIndexChanging" Width="542px">
                            <Fields>
                                <asp:ImageField ControlStyle-Height="100px" ControlStyle-Width="100px" 
                                    DataImageUrlField="custphoto" DataImageUrlFormatString="{0}" 
                                    HeaderText="Customer">
                                    <ControlStyle Height="100px" Width="100px" />
                                </asp:ImageField>
                                <asp:BoundField DataField="custname" HeaderText="Name" 
                                    SortExpression="custname" />
                                <asp:BoundField DataField="rdesc" HeaderText="Review" SortExpression="rdesc" />
                            </Fields>
                        </asp:DetailsView>
                    </asp:View>
                </asp:MultiView>
                <br />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Panel ID="Panel13" runat="server" 
                    style="text-align: center; margin-left: 400px">
                    <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" Height="322px" 
                        Width="695px" onfinishbuttonclick="Wizard1_FinishButtonClick" 
                        style="margin-left: 0px">
                        <HeaderTemplate>
                            <div class="style5">
                                <span class="style8">Profile</span></div>
                        </HeaderTemplate>
                        <WizardSteps>
                            <asp:WizardStep runat="server" title="Canteen">
                                <table class="style6">
                                    <tr>
                                        <td>
                                            <asp:Button ID="Button13" runat="server" OnClick="Button13_Click" 
                                                Text="Photo Gallery" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" 
                                                Text="Description" />
                                        </td>
                                        <td>
                                            <asp:Button ID="Button18" runat="server" OnClick="Button18_Click" 
                                                Text="Contact" />
                                        </td>
                                    </tr>
                                </table>
                                <asp:MultiView ID="MultiView3" runat="server">
                                    <asp:View ID="View5" runat="server">
                                        <span class="style12"><strong>Add new photo to your gallery</strong></span><asp:ImageButton 
                                            ID="ImageButton3" runat="server" Height="77px" 
                                            ImageUrl="~/img/cant/plus.png" OnClick="ImageButton3_Click" 
                                            Width="108px" />
                                        <br />
                                        <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" />
                                        <asp:Button ID="Button19" runat="server" OnClick="Button19_Click" Text="Post" 
                                            Visible="False" />
                                        <br />
                                        <asp:Image ID="Image15" runat="server" Height="305px" Visible="False" 
                                            Width="563px" />
                                        <br />
                                        <br />
                                        <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:Image ID="Image4" runat="server" Height="140px" 
                                            ImageUrl="~/img/cant/Screenshot (171).png" Width="576px" />
                                        <br />
                                    </asp:View>
                                    <asp:View ID="View6" runat="server">
                                        <asp:TextBox ID="TextBox4" runat="server" Height="239px" ReadOnly="True" 
                                            TextMode="MultiLine" Width="607px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                                        <br />
                                        <asp:Button ID="Button22" runat="server" OnClick="Button22_Click" 
                                            Text="Edit" />
                                        <asp:Button ID="Button21" runat="server" OnClick="Button21_Click" Text="Save" 
                                            Visible="False" />
                                        <br />
                                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [cid], [cdesc] FROM [canteen]"></asp:SqlDataSource>
                                    </asp:View>
                                    <asp:View ID="View7" runat="server">
                                        <asp:Label ID="Label7" runat="server" Text="Contact"></asp:Label>
                                        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Width="303px"></asp:TextBox>
                                        <br />
                                        <asp:Button ID="Button23" runat="server" OnClick="Button23_Click" Text="Edit" />
                                        &nbsp;
                                        <asp:Button ID="Button24" runat="server" OnClick="Button24_Click" Text="Save" 
                                            Visible="False" />
                                    </asp:View>
                                </asp:MultiView>
                                <br />
                            </asp:WizardStep>
                            <asp:WizardStep runat="server" title="Self">
                                <asp:Image ID="Image3" runat="server" Height="139px" />
                                <br />
                                <br />
                                <asp:Label ID="Label3" runat="server" Text="Your Name "></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="Button25" runat="server" OnClick="Button25_Click" Text="Edit" />
                                <asp:Button ID="Button12" runat="server" Text="Change Password!" />
                                &nbsp;<asp:Button ID="Button26" runat="server" OnClick="Button26_Click" Text="Save" 
                                    Visible="False" />
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT [cid], [cophoto], [cocontact], [coname], [cemail], [cpassword] FROM [canteen] WHERE ([cid] = @cid)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="cid" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                    <br />
                </asp:Panel>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource7" runat="server"></asp:SqlDataSource>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" Interval="800">
                        </asp:Timer>
                        <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [spicyImage] WHERE [iid] = @iid" 
                            InsertCommand="INSERT INTO [spicyImage] ([iid], [ipath]) VALUES (@iid, @ipath)" 
                            SelectCommand="SELECT * FROM [spicyImage]" 
                            UpdateCommand="UPDATE [spicyImage] SET [ipath] = @ipath WHERE [iid] = @iid">
                            <DeleteParameters>
                                <asp:Parameter Name="iid" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="iid" Type="Int32" />
                                <asp:Parameter Name="ipath" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ipath" Type="String" />
                                <asp:Parameter Name="iid" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:FormView ID="FormView2" runat="server" AllowPaging="True" 
                            DataKeyNames="iid" DataSourceID="SqlDataSource11" Height="366px" 
                            style="color: #FFFFFF" Width="468px" 
                            onpageindexchanging="FormView2_PageIndexChanging">
                            <EditItemTemplate>
                                iid:
                                <asp:Label ID="iidLabel1" runat="server" Text='<%# Eval("iid") %>' />
                                <br />
                                ipath:
                                <asp:TextBox ID="ipathTextBox" runat="server" Text='<%# Bind("ipath") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton0" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton0" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                iid:
                                <asp:TextBox ID="iidTextBox" runat="server" Text='<%# Bind("iid") %>' />
                                <br />
                                ipath:
                                <asp:TextBox ID="ipathTextBox0" runat="server" Text='<%# Bind("ipath") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton0" runat="server" CausesValidation="True" 
                                    CommandName="Insert" Text="Insert" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton0" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                iid:
                                <asp:Label ID="iidLabel" runat="server" Text='<%# Eval("iid") %>' />
                                <br />
                                <asp:Image ID="Image16" runat="server" Height="200px" 
                                    ImageUrl='<%# Bind("ipath") %>' Width="200px" />
                                <br />
                                <asp:LinkButton ID="DeleteButton0" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="Delete" />
                                &nbsp;
                            </ItemTemplate>
                        </asp:FormView>
                        <br />
                    </ContentTemplate>
                </asp:UpdatePanel>
                <br />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [food] WHERE [fid] = @original_fid" 
                    InsertCommand="INSERT INTO [food] ([fid], [fname], [fcat], [fprice], [fphoto], [favail], [cid]) VALUES (@fid, @fname, @fcat, @fprice, @fphoto, @favail, @cid)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT * FROM [food] WHERE ([cid] = @cid) ORDER BY [fid], [fname], [fcat]" 
                    
                    
                    UpdateCommand="UPDATE [food] SET [fname] = @fname, [fcat] = @fcat, [fprice] = @fprice, [fphoto] = @fphoto, [favail] = @favail, [cid] = @cid WHERE [fid] = @original_fid">
                    <DeleteParameters>
                        <asp:Parameter Name="original_fid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="fid" Type="Int32" />
                        <asp:Parameter Name="fname" Type="String" />
                        <asp:Parameter Name="fcat" Type="String" />
                        <asp:Parameter Name="fprice" Type="Decimal" />
                        <asp:Parameter Name="fphoto" Type="String" />
                        <asp:Parameter Name="favail" Type="String" />
                        <asp:Parameter Name="cid" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="cid" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="fname" Type="String" />
                        <asp:Parameter Name="fcat" Type="String" />
                        <asp:Parameter Name="fprice" Type="Decimal" />
                        <asp:Parameter Name="fphoto" Type="String" />
                        <asp:Parameter Name="favail" Type="String" />
                        <asp:Parameter Name="cid" Type="Int32" />
                        <asp:Parameter Name="original_fid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:Button ID="Button29" runat="server" BackColor="#CCFFFF" Font-Bold="True" 
                    Font-Size="Large" style="margin-left: 507px" Text="Add more food items" 
                    onclick="Button29_Click" />
                <br />
                <asp:Panel ID="Panel14" runat="server" style="margin-left: 262px" 
                    Visible="False">
                    <table class="style6">
                        <tr>
                            <td>
                                Item Name</td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Item Category</td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Item Price</td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Upload Picture</td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="..."></asp:Label>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Item Availaility</td>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                    <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button30" runat="server" onclick="Button30_Click" 
                                    Text="Submit" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                    DataKeyNames="fid" DataSourceID="SqlDataSource10" 
                    EmptyDataText="No items in your menu." Font-Bold="True" Font-Size="Large" 
                    ForeColor="#FF6666" style="margin-left: 425px" Width="389px">
                    <EditItemTemplate>
                        Food ID:
                        <asp:Label ID="fidLabel1" runat="server" Text='<%# Eval("fid") %>' />
                        <br />
                        Category:
                        <asp:TextBox ID="fcatTextBox" runat="server" Text='<%# Bind("fcat") %>' />
                        <br />
                        Name:
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                        <br />
                        Price:
                        <asp:TextBox ID="fpriceTextBox" runat="server" Text='<%# Bind("fprice") %>' />
                        <br />
                        Photo:
                        <asp:Image ID="Image18" runat="server" Height="200px" 
                            ImageUrl='<%# Bind("fphoto") %>' Width="200px" />
                        <br />
                        Available:
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            SelectedValue='<%# Bind("favail") %>'>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Canteen ID:
                        <asp:Label ID="cidLabel" runat="server" Text='<%# Bind("cid") %>' />
                        
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                            CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        Sorry, your canteen do not have any food item listed!
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        fid:
                        <asp:TextBox ID="fidTextBox" runat="server" Text='<%# Bind("fid") %>' />
                        <br />
                        fname:
                        <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                        <br />
                        fcat:
                        <asp:TextBox ID="fcatTextBox" runat="server" Text='<%# Bind("fcat") %>' />
                        <br />
                        fprice:
                        <asp:TextBox ID="fpriceTextBox" runat="server" Text='<%# Bind("fprice") %>' />
                        <br />
                        fphoto:
                        <asp:TextBox ID="fphotoTextBox" runat="server" Text='<%# Bind("fphoto") %>' />
                        <br />
                        favail:
                        <asp:TextBox ID="favailTextBox" runat="server" Text='<%# Bind("favail") %>' />
                        <br />
                        cid:
                        <asp:TextBox ID="cidTextBox" runat="server" Text='<%# Bind("cid") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Food ID:
                        <asp:Label ID="fidLabel" runat="server" Text='<%# Eval("fid") %>' />
                        <br />
                        Category:
                        <asp:Label ID="fcatLabel" runat="server" Text='<%# Bind("fcat") %>' />
                        <br />
                        Name:
                        <asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
                        <br />
                        Price:
                        <asp:Label ID="fpriceLabel" runat="server" Text='<%# Bind("fprice") %>' />
                        <br />
                        Photo:
                        <asp:Image ID="Image17" runat="server" Height="200px" Width="200px" 
                            ImageUrl='<%# Bind("fphoto") %>' />
                        <br />
                        Available:
                        <asp:Label ID="favailLabel" runat="server" Text='<%# Bind("favail") %>' />
                        <br />
                        Canteen ID:
                        <asp:Label ID="cidLabel" runat="server" Text='<%# Bind("cid") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;&nbsp;
                    </ItemTemplate>
                    <PagerSettings Mode="NextPreviousFirstLast" />
                </asp:FormView>
                <br />
                <br />
                <br />
            </asp:View>
        </asp:MultiView>
    </asp:Panel>
    </form>
</body>
</html>
