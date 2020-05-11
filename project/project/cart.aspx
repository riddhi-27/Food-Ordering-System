d runat="server">
     <title></title><style type="text/css">

        .style2
        {
            width: 100%;
        }
        .style3
        {
            color: #FFFFFF;
            font-family: "Showcard Gothic";
        }
        .style4
        {
            color: #000000;
            font-weight: bold;
            font-family: "Showcard Gothic";
        }
        .style5
        {
            color: #FFFFFF;
            font-weight: bold;
            font-family: "Showcard Gothic";
        }
    </style>
 </head>
 <html xmlns="http://www.w3.org/1999/xhtml">
 <body style=" background-image:url('img/bg/cart.jpg')">
     <form id="form1" runat="server">
     <div style="text-align: center">
    
        
        <asp:Panel ID="Panel1" runat="server" Height="603px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:FormView 
                ID="FormView2" runat="server" 
                AllowPaging="True" DataKeyNames="ci" DataSourceID="SqlDataSource2" 
                EmptyDataText="Your Cart Is Empty." Font-Bold="True" ForeColor="White" 
                HeaderText="Your Cart" style="margin-left: 466px">
                <EditItemTemplate>
                    ci:
                    <asp:Label ID="ciLabel1" runat="server" Text='<%# Eval("ci") %>' />
                    <br />
                    cid:
                    <asp:TextBox ID="cidTextBox" runat="server" Text='<%# Bind("cid") %>' />
                    <br />
                    cname:
                    <asp:TextBox ID="cnameTextBox" runat="server" Text='<%# Bind("cname") %>' />
                    <br />
                    cphoto:
                    <asp:TextBox ID="cphotoTextBox" runat="server" Text='<%# Bind("cphoto") %>' />
                    <br />
                    custid:
                    <asp:TextBox ID="custidTextBox" runat="server" Text='<%# Bind("custid") %>' />
                    <br />
                    custname:
                    <asp:TextBox ID="custnameTextBox" runat="server" 
                        Text='<%# Bind("custname") %>' />
                    <br />
                    custphoto:
                    <asp:TextBox ID="custphotoTextBox" runat="server" 
                        Text='<%# Bind("custphoto") %>' />
                    <br />
                    fid:
                    <asp:TextBox ID="fidTextBox" runat="server" Text='<%# Bind("fid") %>' />
                    <br />
                    fname:
                    <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    <br />
                    fprice:
                    <asp:TextBox ID="fpriceTextBox" runat="server" Text='<%# Bind("fprice") %>' />
                    <br />
                    fquantity:
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        SelectedValue='<%# Bind("fquantity") %>'>
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EmptyDataRowStyle Font-Bold="True" Font-Underline="True" ForeColor="#FFFFCC" />
                <FooterStyle Font-Italic="False" />
                <HeaderStyle Font-Bold="True" Font-Size="XX-Large" ForeColor="#FFFFCC" />
                <InsertItemTemplate>
                    ci:
                    <asp:TextBox ID="ciTextBox" runat="server" Text='<%# Bind("ci") %>' />
                    <br />
                    cid:
                    <asp:TextBox ID="cidTextBox0" runat="server" Text='<%# Bind("cid") %>' />
                    <br />
                    cname:
                    <asp:TextBox ID="cnameTextBox0" runat="server" Text='<%# Bind("cname") %>' />
                    <br />
                    cphoto:
                    <asp:TextBox ID="cphotoTextBox0" runat="server" Text='<%# Bind("cphoto") %>' />
                    <br />
                    custid:
                    <asp:TextBox ID="custidTextBox0" runat="server" Text='<%# Bind("custid") %>' />
                    <br />
                    custname:
                    <asp:TextBox ID="custnameTextBox0" runat="server" 
                        Text='<%# Bind("custname") %>' />
                    <br />
                    custphoto:
                    <asp:TextBox ID="custphotoTextBox0" runat="server" 
                        Text='<%# Bind("custphoto") %>' />
                    <br />
                    fid:
                    <asp:TextBox ID="fidTextBox0" runat="server" Text='<%# Bind("fid") %>' />
                    <br />
                    fname:
                    <asp:TextBox ID="fnameTextBox0" runat="server" Text='<%# Bind("fname") %>' />
                    <br />
                    fprice:
                    <asp:TextBox ID="fpriceTextBox0" runat="server" Text='<%# Bind("fprice") %>' />
                    <br />
                    fquantity:
                    <asp:TextBox ID="fquantityTextBox" runat="server" 
                        Text='<%# Bind("fquantity") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ci:
                    <asp:Label ID="ciLabel" runat="server" Text='<%# Eval("ci") %>' />
                    <br />
                    cid:
                    <asp:Label ID="cidLabel" runat="server" Text='<%# Bind("cid") %>' />
                    <br />
                    cname:
                    <asp:Label ID="cnameLabel" runat="server" Text='<%# Bind("cname") %>' />
                    <br />
                    cphoto:
                    <asp:Image ID="Image3" runat="server" Height="98px" 
                        ImageUrl='<%# Bind("cphoto") %>' Width="104px" />
                    <br />
                    custid:
                    <asp:Label ID="custidLabel" runat="server" Text='<%# Bind("custid") %>' />
                    <br />
                    custname:
                    <asp:Label ID="custnameLabel" runat="server" Text='<%# Bind("custname") %>' />
                    <br />
                    custphoto:
                    <asp:Label ID="custphotoLabel" runat="server" Text='<%# Bind("custphoto") %>' />
                    <br />
                    fid:
                    <asp:Label ID="fidLabel" runat="server" Text='<%# Bind("fid") %>' />
                    <br />
                    fname:
                    <asp:Label ID="fnameLabel" runat="server" Text='<%# Bind("fname") %>' />
                    <br />
                    fprice:
                    <asp:Label ID="fpriceLabel" runat="server" Text='<%# Bind("fprice") %>' />
                    <br />
                    fquantity:
                    <asp:Label ID="fquantityLabel" runat="server" Text='<%# Bind("fquantity") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="New" />
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
            <asp:Label ID="Label1" runat="server" style="color: #FFFFFF" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Height="102px" TextMode="MultiLine" 
                Width="301px" style="color: #000000"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <table class="style2">
            <tr>
                <td>
                    
                    <asp:Button ID="Button5" runat="server" Text="Change Add" onclick="Button5_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server"  OnClientClick="goto()"
                        Text="Payment Mode" onclick="Button4_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Confirm Order" 
                        onclientclick="return Confirm(&quot;Ready To Order?&quot;)" />
                </td>
            </tr>
        </table>
        <br />
                <asp:Panel ID="Panel2" runat="server" style="text-align: center">
                    <br />
                    <table class="style2">
                        <tr>
                            <td class="style5">
                                Hostel</td>
                            <td>
                                <b>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox1" CssClass="style3" 
                                    ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                </b>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="style4" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Room No.</td>
                            <td>
                                <b>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox2" CssClass="style3" 
                                    ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                </b>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="style4" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                Contact</td>
                            <td>
                                <b>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox3" CssClass="style3" 
                                    ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                </b>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="style4" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Update" 
            Visible="False" />
       
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel3" runat="server" BackColor="#282828" Font-Bold="True" 
            Font-Size="X-Large" ForeColor="White" GroupingText="Payment">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                style="text-align: left; font-weight: 700; text-decoration: underline; font-family: 'Showcard Gothic'; color: #FFFFFF">
                <asp:ListItem Selected="True">Cash On Delivery</asp:ListItem>
                <asp:ListItem>Paytm</asp:ListItem>
                <asp:ListItem>Net Banking/Debit Card/Credit Card</asp:ListItem>
            </asp:RadioButtonList>
        </asp:Panel>
        <br />
    
    </div>
    </form>
</body>
</html>
