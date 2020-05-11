<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shaMenu.aspx.cs" Inherits="project.shaMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 537px;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            width: 537px;
            text-align: center;
        }
    </style>
</head>
<body style="background-image:url('img/bg/shaMenu.png'); background-position:top; background-repeat:no-repeat; background-attachment:fixed; background-size:contain">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td dir="rtl">
        <asp:Button ID="Button15" runat="server" onclick="Button15_Click" 
            Text="Your cart" BackColor="White" BorderColor="#663300" BorderStyle="Groove" 
                        Font-Bold="True" Font-Names="Lucida Calligraphy" Font-Size="Large" 
                        ForeColor="#993300" style="margin-right: 113px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:Panel ID="Panel1" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Image ID="Image1" runat="server" Height="106px" 
                                    ImageUrl="~/img/cat/south/south.jpg" margin-left="500px" margin-right="0px" 
                                    Width="167px" />
                            </td>
                            <td>
                                <strong>South Indian</strong></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    
                                    SelectCommand="SELECT [fid], [fname], [fprice] FROM [food] WHERE (([cid] = @cid) AND ([favail] = @favail) AND ([fcat] = @fcat)) ORDER BY [fname]">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="cid" Type="Int32" />
                                        <asp:Parameter DefaultValue="Yes" Name="favail" Type="String" />
                                        <asp:Parameter DefaultValue="South Indian" Name="fcat" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                                    AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
                                    DataSourceID="SqlDataSource1" DataKeyNames="fid" 
                                    onselectedindexchanged="GridView1_SelectedIndexChanged" EmptyDataText="Cooking Up..." 
                                      >
                                    <Columns>
                                       
                                     <asp:BoundField DataField="fid" HeaderText="Food ID" 
                                            SortExpression="fid" />
                            
                                        <asp:BoundField DataField="fname" HeaderText="Food" 
                                            SortExpression="fname" />
                                        <asp:BoundField DataField="fprice" HeaderText="Price" 
                                            SortExpression="fprice" />
                                    </Columns>
                                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#993300" />
                                    <selectedrowstyle backcolor="#996600"
         forecolor="DarkBlue"
         font-bold="true" /> 
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <br />
                            </td>
                            <td class="style5">
                                <asp:Button ID="Button16" runat="server" onclick="Button16_Click" 
                                    Text="Button" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Panel ID="Panel2" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Image ID="Image2" runat="server" Height="106px" 
                                    ImageUrl="~/img/cat/north/chole bhature.jpg" margin-left="500px" 
                                    margin-right="0px" Width="167px" />
                            </td>
                            <td>
                                <strong>North Indian</strong></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    
                                    SelectCommand="SELECT [fid],[fname], [fprice] FROM [food] WHERE (([cid] = @cid) AND ([favail] = @favail) AND ([fcat] = @fcat))">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="cid" Type="Int32" />
                                        <asp:Parameter DefaultValue="Yes" Name="favail" Type="String" />
                                        <asp:Parameter DefaultValue="North Indian" Name="fcat" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                                    AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
                                    datasourceid="SqlDataSource2" 
                                    onselectedindexchanged="GridView2_SelectedIndexChanged" DataKeyNames="fid" 
                                    EmptyDataText="Cooking Up...">
                                    <Columns>
                                     
                                        <asp:BoundField DataField="fid" HeaderText="FoodID" SortExpression="fid" 
                                            ReadOnly="True" />
                                        <asp:BoundField DataField="fname" HeaderText="Name" 
                                            SortExpression="fname" />
                                        <asp:BoundField DataField="fprice" HeaderText="Price" 
                                            SortExpression="fprice" />
                                    </Columns>
                                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#993300" />
                                   <selectedrowstyle backcolor="#996600"
         forecolor="DarkBlue"
         font-bold="true" />   </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="text-align:center">
                                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                    Text="Previous" />
                            </td>
                            <td style="text-align: center">
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Next" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Panel ID="Panel3" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Image ID="Image3" runat="server" Height="106px" 
                                    ImageUrl="~/img/cat/roti/roti.jpg" margin-left="500px" margin-right="0px" 
                                    Width="167px" />
                            </td>
                            <td>
                                <strong>Torquilla</strong></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    
                                    SelectCommand="SELECT [fid],[fname], [fprice] FROM [food] WHERE (([cid] = @cid) AND ([favail] = @favail) AND ([fcat] = @fcat))">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="cid" Type="Int32" />
                                        <asp:Parameter DefaultValue="Yes" Name="favail" Type="String" />
                                        <asp:Parameter DefaultValue="Torquilla" Name="fcat" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:GridView ID="GridView3" runat="server" AllowSorting="True" 
                                    AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
                                    datasourceid="SqlDataSource3" 
                                    onselectedindexchanged="GridView3_SelectedIndexChanged" DataKeyNames="fid" 
                                    EmptyDataText="Cooking Up...">
                                    <Columns>
                                        <asp:BoundField DataField="fid" HeaderText="FoodID" SortExpression="fid" 
                                            ReadOnly="True" />
                                        <asp:BoundField DataField="fname" HeaderText="Name" 
                                            SortExpression="fname" />
                                        <asp:BoundField DataField="fprice" HeaderText="Price" 
                                            SortExpression="fprice" />
                                    </Columns>
                                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#993300" />
                                        <selectedrowstyle backcolor="#996600"
         forecolor="DarkBlue"
         font-bold="true" />  
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="text-align: center">
                                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                                    Text="Previous" />
                            </td>
                            <td style="text-align: center">
                                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Next" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
            <asp:View ID="View4" runat="server">
                <asp:Panel ID="Panel4" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Image ID="Image4" runat="server" Height="106px" 
                                    ImageUrl="~/img/cat/veg/dish.jpg" margin-left="500px" margin-right="0px" 
                                    Width="167px" />
                            </td>
                            <td>
                                <strong>Vegetables</strong></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    
                                    SelectCommand="SELECT [fid],[fname], [fprice] FROM [food] WHERE (([cid] = @cid) AND ([favail] = @favail) AND ([fcat] = @fcat))">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="cid" Type="Int32" />
                                        <asp:Parameter DefaultValue="Yes" Name="favail" Type="String" />
                                        <asp:Parameter DefaultValue="Vegetables" Name="fcat" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:GridView ID="GridView4" runat="server" AllowSorting="True" 
                                    AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
                                    datasourceid="SqlDataSource4" 
                                    onselectedindexchanged="GridView4_SelectedIndexChanged" 
                                    DataKeyNames="fid" EmptyDataText="Cooking Up..." >
                                    <Columns>
                                        <asp:BoundField DataField="fid" HeaderText="FoodID" SortExpression="fid" 
                                            ReadOnly="True" />
                                        <asp:BoundField DataField="fname" HeaderText="Name" 
                                            SortExpression="fname" />
                                        <asp:BoundField DataField="fprice" HeaderText="Price" 
                                            SortExpression="fprice" />
                                    </Columns>
                                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#993300" />
                              <selectedrowstyle backcolor="#996600"
         forecolor="DarkBlue"
         font-bold="true" />    </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="text-align:center">
                                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                                    Text="Previous" />
                            </td>
                            <td style="text-align: center">
                                <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Next" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
            <asp:View ID="View5" runat="server">
                <asp:Panel ID="Panel5" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Image ID="Image5" runat="server" Height="106px" 
                                    ImageUrl="~/img/cat/roti/roti.jpg" margin-left="500px" margin-right="0px" 
                                    Width="167px" />
                            </td>
                            <td>
                                <strong>Italian</strong></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    
                                    SelectCommand="SELECT [fid],[fname], [fprice] FROM [food] WHERE (([cid] = @cid) AND ([favail] = @favail) AND ([fcat] = @fcat))">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="cid" Type="Int32" />
                                        <asp:Parameter DefaultValue="Yes" Name="favail" Type="String" />
                                        <asp:Parameter DefaultValue="Italian" Name="fcat" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:GridView ID="GridView5" runat="server" AllowSorting="True" 
                                    AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
                                    datasourceid="SqlDataSource5" 
                                    onselectedindexchanged="GridView5_SelectedIndexChanged" DataKeyNames="fid" 
                                    EmptyDataText="Cooking Up...">
                                    <Columns>
                                        <asp:BoundField DataField="fid" HeaderText="FoodID" SortExpression="fid" 
                                            ReadOnly="True" />
                                        <asp:BoundField DataField="fname" HeaderText="Name" 
                                            SortExpression="fname" />
                                        <asp:BoundField DataField="fprice" HeaderText="Price" 
                                            SortExpression="fprice" />
                                    </Columns>
                                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#993300" />
                                 <selectedrowstyle backcolor="#996600"
         forecolor="DarkBlue"
         font-bold="true" />    </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="text-align:center">
                                <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                                    Text="Previous" />
                            </td>
                            <td style="text-align: center">
                                <asp:Button ID="Button9" runat="server" onclick="Button9_Click" Text="Next" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
            <asp:View ID="View6" runat="server">
                <asp:Panel ID="Panel6" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Image ID="Image6" runat="server" Height="126px" 
                                    ImageUrl="~/img/cat/chinese/wsp1.jpg" margin-left="500px" margin-right="0px" 
                                    Width="167px" />
                            </td>
                            <td>
                                <strong>Junk Food</strong></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    
                                    SelectCommand="SELECT [fid],[fname], [fprice] FROM [food] WHERE (([cid] = @cid) AND ([favail] = @favail) AND ([fcat] = @fcat))">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="cid" Type="Int32" />
                                        <asp:Parameter DefaultValue="Yes" Name="favail" Type="String" />
                                        <asp:Parameter DefaultValue="Junk Food" Name="fcat" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:GridView ID="GridView6" runat="server" AllowSorting="True" 
                                    AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
                                    datasourceid="SqlDataSource6" 
                                    onselectedindexchanged="GridView6_SelectedIndexChanged" DataKeyNames="fid" 
                                    EmptyDataText="Cooking Up...">
                                    <Columns>
                                        <asp:BoundField DataField="fid" HeaderText="FoodID" SortExpression="fid" 
                                            ReadOnly="True" />
                                        <asp:BoundField DataField="fname" HeaderText="Name" 
                                            SortExpression="fname" />
                                        <asp:BoundField DataField="fprice" HeaderText="Price" 
                                            SortExpression="fprice" />
                                    </Columns>
                                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#993300" />
                              <selectedrowstyle backcolor="#996600"
         forecolor="DarkBlue"
         font-bold="true" />     </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="text-align:center">
                                <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                                    Text="Previous" />
                            </td>
                            <td style="text-align: center">
                                <asp:Button ID="Button11" runat="server" onclick="Button11_Click" Text="Next" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
            <asp:View ID="View7" runat="server">
                <asp:Panel ID="Panel7" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Image ID="Image7" runat="server" Height="152px" 
                                    ImageUrl="~/img/cat/drink/o.jpg" margin-left="500px" margin-right="0px" 
                                    Width="167px" />
                            </td>
                            <td>
                                <strong>Cold Coffee &amp; Shakes</strong></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    SelectCommand="SELECT [fid],[fname], [fprice] FROM [food] WHERE (([cid] = @cid) AND ([favail] = @favail) AND ([fcat] = @fcat))">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="cid" Type="Int32" />
                                        <asp:Parameter DefaultValue="Yes" Name="favail" Type="String" />
                                        <asp:Parameter DefaultValue="Drinks" Name="fcat" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:GridView ID="GridView7" runat="server" AllowSorting="True" 
                                    AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
                                    datasourceid="SqlDataSource7" 
                                    onselectedindexchanged="GridView7_SelectedIndexChanged" DataKeyNames="fid" 
                                    EmptyDataText="Cooking Up...">
                                    <Columns>
                                        <asp:BoundField DataField="fid" HeaderText="FoodID" SortExpression="fid" 
                                            ReadOnly="True" />
                                        <asp:BoundField DataField="fname" HeaderText="Name" 
                                            SortExpression="fname" />
                                        <asp:BoundField DataField="fprice" HeaderText="Price" 
                                            SortExpression="fprice" />
                                    </Columns>
                                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#993300" />
                              <selectedrowstyle backcolor="#996600"
         forecolor="DarkBlue"
         font-bold="true" />    </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="text-align:center">
                                <asp:Button ID="Button12" runat="server" onclick="Button12_Click" 
                                    Text="Previous" />
                            </td>
                            <td style="text-align: center">
                                <asp:Button ID="Button13" runat="server" onclick="Button13_Click" Text="Next" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
            <asp:View ID="View8" runat="server">
                <asp:Panel ID="Panel8" runat="server">
                    <table class="style1">
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Image ID="Image8" runat="server" Height="149px" 
                                    ImageUrl="~/img/cat/drink/hai.jpg" margin-left="500px" margin-right="0px" 
                                    Width="167px" />
                            </td>
                            <td>
                                <strong>Beverages</strong></td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    
                                    SelectCommand="SELECT [fid],[fname], [fprice] FROM [food] WHERE (([cid] = @cid) AND ([favail] = @favail) AND ([fcat] = @fcat))">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="2" Name="cid" Type="Int32" />
                                        <asp:Parameter DefaultValue="Yes" Name="favail" Type="String" />
                                        <asp:Parameter DefaultValue="Beverages" Name="fcat" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:GridView ID="GridView8" runat="server" AllowSorting="True" 
                                    AutoGenerateColumns="False" AutoGenerateSelectButton="True" 
                                    datasourceid="SqlDataSource8" 
                                    onselectedindexchanged="GridView8_SelectedIndexChanged" DataKeyNames="fid" 
                                    EmptyDataText="Cooking Up...">
                                    <Columns>
                                     <asp:BoundField DataField="fid" HeaderText="FoodID" 
                                            SortExpression="fid" ReadOnly="True" />
                            
                                        <asp:BoundField DataField="fname" HeaderText="Name" SortExpression="fname" />
                                        <asp:BoundField DataField="fprice" HeaderText="Price" 
                                            SortExpression="fprice" />
                                    </Columns>
                                    <EmptyDataRowStyle Font-Bold="True" ForeColor="#993300" />
                                  <selectedrowstyle backcolor="#996600"
         forecolor="DarkBlue"
         font-bold="true" />  </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="text-align:center">
                                <asp:Button ID="Button14" runat="server" onclick="Button14_Click" 
                                    Text="Previous" />
                            </td>
                            <td style="text-align: center">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </asp:View>
        </asp:MultiView>
        <br />
        <br />
        <br />
        <br />
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
