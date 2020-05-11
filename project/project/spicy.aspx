<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="spicy.aspx.cs" Inherits="project.img.spicy" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 400px;
        }
        .style2
        {
            color: #FFFFFF;
            font-size: larger;

        }
        .style3
        {
            color: #FFFFFF;
            font-family: "Old English Text MT";
            font-size: xx-large;
        }
        .style4
        {
            text-align: center;
        }
        
        
         html {  
                background-color: #cccccc;     
            }  
              
            .staticPanel {  
                 width: 150px;  
                 background-color: White;    
                 border: solid 1px black;  
                 padding: 10px;   
            }  
          
          
          
        .style6
        {
            text-align: left;
        }
        .style7
        {
            color: #FFFFFF;
            font-size: larger;
            text-align: right;
            margin-left: 0px;
        }
          
          
          
        .style8
        {
            text-align: left;
            height: 26px;
        }
        .style10
        {
            text-align: left;
            height: 25px;
        }
        .style11
        {
            color: #FFFFFF;
            font-size: larger;
            text-align: right;
            margin-left: 0px;
            height: 30px;
        }
          
          
          
    </style>
</head>
<body style="background-image: url('img/cant/b132.png');   background-repeat: no-repeat; background-attachment: fixed; width:100%">
    <form id="form1" runat="server">
    <div >
    <asp:Panel ID="Panel2" runat="server">
            <asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DisappearAfter="15" 
                DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="Engravers MT" 
                Font-Size="0.8em" ForeColor="Maroon" Orientation="Horizontal" 
                StaticPopOutImageUrl="~/img/cat/drink/pineapple juice.jpg" 
                StaticSubMenuIndent="10px" Width="100%">
                <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#E3EAEB" />
                <DynamicSelectedStyle BackColor="#1C5E55" />
                <Items>
                    <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="Order Now" Value="Order Now" 
                        NavigateUrl="~/spicyOrder.aspx"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#CCCCFF" ForeColor="White" />
                <StaticMenuItemStyle Font-Size="Large" HorizontalPadding="5px" 
                    VerticalPadding="2px" Width="200px" />
                <StaticSelectedStyle BackColor="#FF9999" />
            </asp:Menu>
        </asp:Panel>
          <asp:AlwaysVisibleControlExtender   
            ID="AlwaysVisibleControlExtender1"   
            TargetControlID="Panel2"  
            VerticalSide="Top"  
            VerticalOffset="0"  
            HorizontalSide="Right"  
            HorizontalOffset="0"  
            runat="server" />  
          
        <br />
        <asp:ToolkitScriptManager ID="ToolkitScriptManager2" runat="server">
        </asp:ToolkitScriptManager>
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
        <br />
    
        <br />
        
        <br />
        <asp:Panel ID="Panel1" runat="server" 
            style="text-align: right; margin-left: 548px">
            <br />
            <br class="style2" />
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                AutoGenerateRows="False" DataSourceID="SqlDataSource1" Height="342px" 
                Width="549px" CssClass="style2">
                <Fields>
                   <asp:ImageField DataImageUrlField="fphoto" DataImageUrlFormatString="{0}" 
                        HeaderText="Picture" ControlStyle-Height="150px" ControlStyle-Width="150px" >
                       <ControlStyle Height="150px" Width="150px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="fname" HeaderText="Name" SortExpression="fname" />
                    <asp:BoundField DataField="fprice" HeaderText="Amount" 
                        SortExpression="fprice" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="StoredProcedure1" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
        </asp:Panel>
        <br />
   
        <table class="style1">
            <tr>
                <td>
                         <asp:Panel ID="Panel5" runat="server" CssClass="style2">
            <table class="style1">
                <tr>
                    <td class="style6">
                        <asp:Label ID="Label3" runat="server" Text="Details" 
                            style="text-align: center; font-weight: 700; font-size: x-large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        <asp:Label ID="Label4" runat="server" Text="Price Range" 
                            style="font-size: large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label5" runat="server" Text="0"></asp:Label>
                        &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="to"></asp:Label>
&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="1000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        <asp:Label ID="Label8" runat="server" Text="Cuisines" style="font-size: large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <asp:Label ID="Label9" runat="server" Text="Indian"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style6">
                        <asp:Label ID="Label10" runat="server" Text="Meals" style="font-size: large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="Label11" runat="server" Text="Breakfast,Lunch,Dinner"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel></td>
                <td>
                    <table class="style1">
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                                <asp:Label ID="Label12" runat="server" Text="Contact" CssClass="style2"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label13" runat="server" Text="1234567890" CssClass="style2"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                <asp:Label ID="Label14" runat="server" Text="View all Details" 
                                    CssClass="style2"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style11">
                                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="style2">About Us</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
   
        <br />
    
    </div>
        <asp:Panel ID="Panel4" runat="server">
            <div class="style4">
                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="style3" 
                    Text="What customers like about us"></asp:Label>
                <br class="style3" />
                <br class="style3" />
                <asp:Label ID="Label2" runat="server" CssClass="style3" Text="Reviews"></asp:Label>
                </strong>
                <br class="style2" />
                <br class="style2" />
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CssClass="style2" DataSourceID="SqlDataSource2" Height="368px" Width="1035px">
                <Columns>
                    <asp:ImageField ControlStyle-Height="250px" ControlStyle-Width="250px" 
                        DataImageUrlField="custphoto" DataImageUrlFormatString="{0}" 
                        HeaderText="Photo" />
                    <asp:BoundField DataField="custname" HeaderText="Name" 
                        SortExpression="custname" />
                    <asp:BoundField DataField="rdesc" HeaderText="Reviews" SortExpression="rdesc" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="StoredProcedure3" SelectCommandType="StoredProcedure">
            </asp:SqlDataSource>
        </asp:Panel>
    </form>
</body>
</html>
