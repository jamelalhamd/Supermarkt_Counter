<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_super.aspx.cs" Inherits="product_super" MasterPageFile="Main.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 830px;
        }
        .auto-style2 {
            width: -86;
        }
        .auto-style3 {
            width: 232px;
        }
        .auto-style9 {            text-align: left;
        }
        .auto-style10 {
            width: 238px;
            text-align: right;
        }
        .auto-style16 {
            text-align: right;
        }
        .auto-style18 {
            width: 155px;
        }
        .auto-style19 {
            width: 83px;
            text-align: right;
        }
        .auto-style21 {
            width: 238px;
            text-align: left;
        }
        .auto-style23 {
            height: 297px;
            width: 858px;
        }
        .auto-style24 {
            width: 83px;
        }
        .auto-style25 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <div >
    <fieldset >
            <legend style="font-size: 20px;">ADD TO SHALVES
            </legend>
        <table class="auto-style1">
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="4" class="auto-style16">
                    <asp:Label ID="Label16" runat="server" Text="Name   :" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:Label ID="Label18" runat="server" Text="Jamel" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td colspan="5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style16">
                    &nbsp;</td>
                <td colspan="2" class="auto-style16">
                    <asp:Label ID="Label17" runat="server" Text="ID   :" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:Label ID="Label19" runat="server" Text="55871" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td colspan="3">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style16">
                    &nbsp;</td>
                <td colspan="2" class="auto-style16">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="3">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="13">
                    <div style="text-align: left; margin-left: 0px; margin-top: 0px; clip: rect(auto, auto, auto, 20px);" class="auto-style23">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="storeid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="200px" Width="200px" AllowPaging="True" PageSize="7" ShowFooter="True">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="storeid" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="storeid" />
                            <asp:BoundField DataField="emp_id" HeaderText="Employee ID" SortExpression="emp_id" />
                            <asp:BoundField DataField="storedate" HeaderText="Store Date" SortExpression="storedate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="itemid" HeaderText="Item ID" SortExpression="itemid" />
                            <asp:BoundField DataField="quantaty" HeaderText="Quantaty" SortExpression="quantaty" />
                            <asp:BoundField DataField="baracode" HeaderText="Bar Code" SortExpression="baracode" />
                            <asp:BoundField DataField="expiredate" HeaderText="Expire Date" SortExpression="expiredate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="productdate" HeaderText="Product Date" SortExpression="productdate" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                            <asp:BoundField DataField="categoryid" HeaderText="Category ID" SortExpression="categoryid" />
                            <asp:BoundField DataField="itemunit" HeaderText="Unit" SortExpression="itemunit" />
                            <asp:BoundField DataField="min_quantaty" HeaderText="Min_Quantaty" SortExpression="min_quantaty" />
                        </Columns>
                       <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#851010" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#851010" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:Button ID="Button7" runat="server" Font-Bold="True" Height="33px" OnClick="Button2_Click" style="text-align: left" Text=" Add  to Cart" Width="159px" CssClass="button"  CausesValidation="False" />
                        </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [store]">
                    </asp:SqlDataSource>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="3">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" BackColor="#EEEEEE">
                        <asp:ListItem Selected="True">name</asp:ListItem>
                        <asp:ListItem>Baracode</asp:ListItem>
                        <asp:ListItem>Item ID</asp:ListItem>
                        <asp:ListItem>Category ID</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style2" colspan="3">
                    &nbsp;</td>
                <td class="auto-style3" colspan="7">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="13">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Find and Add" Width="100px" CssClass="button" CausesValidation="False" Height="30px" />
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="90px"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Reset" Width="100px" CssClass="button" CausesValidation="False" Height="30px" />
                    &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" CssClass="button" Height="30px" OnClick="Button2_Click" Text="Select  and Add" Width="118px" CausesValidation="False" />
                    &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Remove" Width="97px" CssClass="button" CausesValidation="False" Height="30px" />
                    <asp:Label ID="Label14" runat="server" style="text-align: center" ForeColor="#FF0066"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="13">
                    <div>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cartid" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="cartid" HeaderText="cartid" InsertVisible="False" ReadOnly="True" SortExpression="cartid" />
                            <asp:BoundField DataField="storedate" HeaderText="storedate" SortExpression="storedate" />
                            <asp:BoundField DataField="itemid" HeaderText="itemid" SortExpression="itemid" />
                            <asp:BoundField DataField="quantaty" HeaderText="quantaty" SortExpression="quantaty" />
                            <asp:BoundField DataField="baracode" HeaderText="baracode" SortExpression="baracode" />
                            <asp:BoundField DataField="expiredate" HeaderText="expiredate" SortExpression="expiredate" />
                            <asp:BoundField DataField="productdate" HeaderText="productdate" SortExpression="productdate" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="categoryid" HeaderText="categoryid" SortExpression="categoryid" />
                            <asp:BoundField DataField="itemunit" HeaderText="itemunit" SortExpression="itemunit" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#851010" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#851010" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cart_to_store]" DeleteCommand="DELETE FROM [cart_to_store] WHERE [cartid] = @cartid" InsertCommand="INSERT INTO [cart_to_store] ([storedate], [itemid], [quantaty], [baracode], [expiredate], [productdate], [price], [name], [categoryid], [itemunit]) VALUES (@storedate, @itemid, @quantaty, @baracode, @expiredate, @productdate, @price, @name, @categoryid, @itemunit)" UpdateCommand="UPDATE [cart_to_store] SET [storedate] = @storedate, [itemid] = @itemid, [quantaty] = @quantaty, [baracode] = @baracode, [expiredate] = @expiredate, [productdate] = @productdate, [price] = @price, [name] = @name, [categoryid] = @categoryid, [itemunit] = @itemunit WHERE [cartid] = @cartid">
                        <DeleteParameters>
                            <asp:Parameter Name="cartid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="storedate" Type="DateTime" />
                            <asp:Parameter Name="itemid" Type="Int32" />
                            <asp:Parameter Name="quantaty" Type="Int32" />
                            <asp:Parameter Name="baracode" Type="String" />
                            <asp:Parameter Name="expiredate" Type="DateTime" />
                            <asp:Parameter Name="productdate" Type="DateTime" />
                            <asp:Parameter Name="price" Type="Double" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="categoryid" Type="Int32" />
                            <asp:Parameter Name="itemunit" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="storedate" Type="DateTime" />
                            <asp:Parameter Name="itemid" Type="Int32" />
                            <asp:Parameter Name="quantaty" Type="Int32" />
                            <asp:Parameter Name="baracode" Type="String" />
                            <asp:Parameter Name="expiredate" Type="DateTime" />
                            <asp:Parameter Name="productdate" Type="DateTime" />
                            <asp:Parameter Name="price" Type="Double" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="categoryid" Type="Int32" />
                            <asp:Parameter Name="itemunit" Type="String" />
                            <asp:Parameter Name="cartid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [store]"></asp:SqlDataSource>
                </div>
                        </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="3">
                    <asp:Label ID="Label5" runat="server" Text="Item ID"></asp:Label>
                </td>
                <td class="auto-style9" colspan="3">
                    <asp:TextBox ID="TextBoxid" runat="server"  ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style24" colspan="2">
                    <asp:Label ID="Label10" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style9" colspan="2">
                    <asp:TextBox ID="TextBoxname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9" colspan="3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxname" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="3">
                    <asp:Label ID="Label6" runat="server" Text="Bara Code"></asp:Label>
                </td>
                <td class="auto-style9" colspan="3">
                    <asp:TextBox ID="TextBoxbara" runat="server"  ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style24" colspan="2">
                    <asp:Label ID="Label11" runat="server" Text="Category ID"></asp:Label>
                </td>
                <td class="auto-style9" colspan="2">
                    <asp:TextBox ID="TextBoxcategory" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style9" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="3">
                    <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
                </td>
                <td class="auto-style9" colspan="3">
                    <asp:TextBox ID="TextBoxprice" runat="server" CssClass="auto-style25"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxprice" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxprice" ErrorMessage="RegularExpressionValidator" ForeColor="#FF0066" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+">insert real number</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style24" colspan="2">
                    <asp:Label ID="Label12" runat="server" Text="Item Unit"></asp:Label>
                </td>
                <td class="auto-style9" colspan="2">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource6" DataTextField="unit_name" DataValueField="unit_name" AutoPostBack="True">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="3">
                    <asp:Label ID="Label8" runat="server" Text="Quantaty"></asp:Label>
                </td>
                <td class="auto-style9" colspan="3">
                    <asp:TextBox ID="TextBoxquantaty" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxquantaty" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxquantaty" ErrorMessage="RegularExpressionValidator" ForeColor="#FF0066" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+">insert numbers only</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style24" colspan="2">
                    <asp:Label ID="Label13" runat="server" Text="Item Product"></asp:Label>
                </td>
                <td class="auto-style9" colspan="2">
                    <asp:TextBox ID="TextBoxproduct" runat="server"  ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style9" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="3">
                    <asp:Label ID="Label9" runat="server" Text="Place"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="placename" DataValueField="placename">
                    </asp:DropDownList>
                    <asp:Button ID="Button8" runat="server" CssClass="button" OnClick="Button8_Click" Text="+" Width="24px" CausesValidation="False" />
                   &nbsp;<asp:Button ID="Button9" runat="server" Font-Bold="True" OnClick="Button9_Click" Text="-" Width="19px" CssClass="button" CausesValidation="False" />
                    &nbsp;
                    <asp:TextBox ID="TextBoxaddplace" runat="server" Width="62px"></asp:TextBox>
                </td>
                <td class="auto-style24" colspan="2">Item Expire</td>
                <td class="auto-style9" colspan="2">
                    <asp:TextBox ID="TextBoxexpire" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style9" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="3">
                    <asp:Label ID="Label15" runat="server" Text="Min Sales"></asp:Label>
                </td>
                <td class="auto-style9" colspan="3">
                    <asp:TextBox ID="TextBoxmin_sale" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxmin_sale" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxmin_sale" ErrorMessage="RegularExpressionValidator" ForeColor="#FF0066" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+">insert number only</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style19" colspan="4">
                    &nbsp;</td>
                <td class="auto-style9" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21" colspan="3">
                    &nbsp;</td>
                <td class="auto-style8" colspan="7">
                    <asp:Button ID="Button5" runat="server" Font-Bold="True" Height="41px" OnClick="Button5_Click" Text="ADD  to Shelves" Width="125px" CssClass="button" />
                </td>
                <td class="auto-style9" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="13">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource5_Selecting" SelectCommand="SELECT * FROM [places]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [places]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [item_unit]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </fieldset>
    </div>
</asp:Content>
