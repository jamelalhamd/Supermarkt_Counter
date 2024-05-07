<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product_store.aspx.cs" Inherits="product_store" MasterPageFile="~/Main.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style11 {
            width: 266px;
        }
        .auto-style12 {
            width: 190px;
            text-align: left;
        }
        .auto-style13 {
            width: 266px;
            text-align: right;
        }
        .auto-style15 {
            width: 266px;
            text-align: right;
            height: 26px;
        }
        .auto-style16 {
            width: 190px;
            text-align: left;
            height: 26px;
        }
        .auto-style17 {
            width: 266px;
            height: 26px;
        }
        .auto-style18 {
            width: 64px;
            text-align: left;
        }
        .auto-style19 {
            width: 64px;
            text-align: left;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div >
    <fieldset>
            <legend style="font-size: 20px;">ADD TO STORE
            </legend>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style13" colspan="5">
                    &nbsp;</td>
                <td class="auto-style12" colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
                </td>
                <td class="auto-style11" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label17" runat="server" Text="Employee ID :  " Font-Size="Large" Font-Bold="True"></asp:Label>
                &nbsp;:</td>
                <td class="auto-style12" colspan="2">
                    <asp:Label ID="Labelemployeeid" runat="server" Text="55871" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label10" runat="server" Text="Employee Name :  " Font-Size="Large" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style12" colspan="2">
                    <asp:Label ID="Labelemployeename" runat="server" Text="Jamel" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label1" runat="server" Text="Item ID" Visible="False"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxid" runat="server" Visible="False"></asp:TextBox>
                    </td>
                <td class="auto-style12">
                    &nbsp;</td>
                <td class="auto-style11" colspan="2">
                    <asp:Label ID="Labelid" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label2" runat="server" Text="Quantaty"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxquan" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxquan" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxquan" ErrorMessage="insert integer only" ForeColor="Blue" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style11" colspan="2">
                    <asp:Label ID="Labelqua" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label3" runat="server" Text="Baracode"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxbaracode" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxbaracode" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style11" colspan="2">
                    <asp:Label ID="Labelbara" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label4" runat="server" Text="Expire_date"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxexpir" runat="server" TextMode="DateTime"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxexpir" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxexpir" ErrorMessage="The Format should be: dd/mm/yyyy" ForeColor="#0066FF" ValidationExpression="^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$">insert as : mm/dd/yyyy</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style11" colspan="2">
                    <asp:Label ID="Labelexp" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label5" runat="server" Text="product_date"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxpro_date" runat="server" TextMode="DateTime"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxpro_date" ErrorMessage="eror" ForeColor="#FF0080">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxpro_date" ErrorMessage="The Format should be: dd/mm/yyyy" ForeColor="#0066FF" ValidationExpression="^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$">insert as: mm/dd/yyyy</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style11" colspan="2">
                    <asp:Label ID="Labelpro" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="5">
                    <asp:Label ID="Label6" runat="server" Text="Price"></asp:Label>
                </td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBoxprice" runat="server" Width="125px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxprice" ErrorMessage="*" ForeColor="#FF0066"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxprice" ErrorMessage="RegularExpressionValidator" ForeColor="Blue" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+">insert real number</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style17" colspan="2">
                    <asp:Label ID="Labelprice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxname" runat="server" Width="126px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style11" colspan="2">
                    <asp:Label ID="Labelname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label8" runat="server" Text="Category"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownListcategory" runat="server" DataSourceID="SqlDataSource2" DataTextField="categoryname" DataValueField="categoryid">
                    </asp:DropDownList>
                    <asp:Button ID="Button5" runat="server" Font-Bold="True" OnClick="Button5_Click" style="margin-left: 0px" Text="+" CausesValidation="False" CssClass="button" />
                    &nbsp;&nbsp;<asp:Button ID="Button6" runat="server" Font-Bold="True" OnClick="Button6_Click" style="margin-left: 0px" Text="-" CausesValidation="False" CssClass="button" />
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListcategory" ErrorMessage="*" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBoxcategory" runat="server" Visible="False" Width="66px"></asp:TextBox>
                </td>
                <td class="auto-style11" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label9" runat="server" Text="Item_Unit"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownListunit" runat="server" DataSourceID="SqlDataSource5" DataTextField="unit_name" DataValueField="unit_name">
                        <asp:ListItem>KG</asp:ListItem>
                        <asp:ListItem>dizzen</asp:ListItem>
                        <asp:ListItem>peice</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="+" Width="17px" Visible="False" CausesValidation="False" CssClass="button" Height="22px" />  
                   &nbsp;&nbsp; <asp:Button ID="Button8" runat="server" Text="-" Width="16px" OnClick="Button8_Click1" Font-Bold="True" Visible="False" CausesValidation="False" CssClass="button" Height="21px" />
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBoxitemunit" runat="server" Visible="False" Width="104px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownListunit" Enabled="False" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style11" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="5">
                    <asp:Label ID="Label15" runat="server" Text="Min Quantaty"></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBoxMin_quantaty" runat="server" Width="124px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxMin_quantaty" ErrorMessage="*" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxMin_quantaty" ErrorMessage="insert real number" ForeColor="Blue" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style11" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="9">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Add To Cart" Width="95px" CssClass="button" />
                    &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Remove from cart" Width="121px" CausesValidation="False" CssClass="button" />
                    &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Reset Cart" Width="82px" CausesValidation="False" CssClass="button" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Totall Price"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Quantaty"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [item_unit]"></asp:SqlDataSource>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="9">
                    <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="itemid" DataSourceID="SqlDataSource4" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="itemid" HeaderText="itemid" ReadOnly="True" SortExpression="itemid" InsertVisible="False" />
                            <asp:BoundField DataField="quantaty" HeaderText="quantaty" SortExpression="quantaty" />
                            <asp:BoundField DataField="baracode" HeaderText="baracode" SortExpression="baracode" />
                            <asp:BoundField DataField="expire_date" HeaderText="expire_date" SortExpression="expire_date" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="product_date" HeaderText="product_date" SortExpression="product_date" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="categoryid" HeaderText="categoryid" SortExpression="categoryid" />
                            <asp:BoundField DataField="item_unit" HeaderText="item_unit" SortExpression="item_unit" />
                            <asp:BoundField DataField="totall_price" HeaderText="totall_price" SortExpression="totall_price" />
                            <asp:BoundField DataField="min_quantaty" HeaderText="min_quantaty" SortExpression="min_quantaty" />
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [buy_bill]">
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [buy_bill] WHERE [itemid] = @itemid" InsertCommand="INSERT INTO [buy_bill] ([quantaty], [baracode], [expire_date], [product_date], [price], [name], [categoryid], [item_unit], [totall_price]) VALUES (@quantaty, @baracode, @expire_date, @product_date, @price, @name, @categoryid, @item_unit, @totall_price)" SelectCommand="SELECT * FROM [buy_bill]" UpdateCommand="UPDATE [buy_bill] SET [quantaty] = @quantaty, [baracode] = @baracode, [expire_date] = @expire_date, [product_date] = @product_date, [price] = @price, [name] = @name, [categoryid] = @categoryid, [item_unit] = @item_unit, [totall_price] = @totall_price WHERE [itemid] = @itemid">
                        <DeleteParameters>
                            <asp:Parameter Name="itemid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="quantaty" Type="Int32" />
                            <asp:Parameter Name="baracode" Type="String" />
                            <asp:Parameter Name="expire_date" Type="DateTime" />
                            <asp:Parameter Name="product_date" Type="DateTime" />
                            <asp:Parameter Name="price" Type="Double" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="categoryid" Type="Int32" />
                            <asp:Parameter Name="item_unit" Type="String" />
                            <asp:Parameter Name="totall_price" Type="Double" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="quantaty" Type="Int32" />
                            <asp:Parameter Name="baracode" Type="String" />
                            <asp:Parameter Name="expire_date" Type="DateTime" />
                            <asp:Parameter Name="product_date" Type="DateTime" />
                            <asp:Parameter Name="price" Type="Double" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="categoryid" Type="Int32" />
                            <asp:Parameter Name="item_unit" Type="String" />
                            <asp:Parameter Name="totall_price" Type="Double" />
                            <asp:Parameter Name="itemid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                        </div>
                </td>
            </tr>
            <tr>
                <td colspan="9">
                    <asp:Label ID="Label16" runat="server" ForeColor="#FF3399"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="9" style="text-align: center">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Keep In The Store" Width="129px" style="text-align: center" CausesValidation="False" CssClass="button" />
                </td>
            </tr>
            <tr>
                <td colspan="9">
                    <div>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="storeid" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" AllowPaging="True" ShowFooter="True">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="storeid" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="storeid" />
                            <asp:BoundField DataField="emp_id" HeaderText="Employee ID" SortExpression="emp_id" />
                            <asp:BoundField DataField="storedate" DataFormatString="{0:d}" HeaderText="Store Date" SortExpression="storedate" />
                            <asp:BoundField DataField="itemid" HeaderText="Item ID" SortExpression="itemid" />
                            <asp:BoundField DataField="quantaty" HeaderText="Quantaty" SortExpression="quantaty" />
                            <asp:BoundField DataField="baracode" HeaderText="Bar Code" SortExpression="baracode" />
                            <asp:BoundField DataField="expiredate" DataFormatString="{0:d}" HeaderText="Expire Date" SortExpression="expiredate" />
                            <asp:BoundField DataField="productdate" DataFormatString="{0:d}" HeaderText="Product Date" SortExpression="productdate" />
                            <asp:BoundField DataField="price" HeaderText="Price " SortExpression="price" />
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                            <asp:BoundField DataField="categoryid" HeaderText="Category ID" SortExpression="categoryid" />
                            <asp:BoundField DataField="itemunit" HeaderText="Item Unit" SortExpression="itemunit" />
                            <asp:BoundField DataField="min_quantaty" HeaderText="Min Quantaty" SortExpression="min_quantaty" />
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [store] WHERE [storeid] = @storeid" InsertCommand="INSERT INTO [store] ([emp_id], [storedate], [itemid], [quantaty], [baracode], [expiredate], [productdate], [price], [name], [categoryid], [itemunit], [min_quantaty]) VALUES (@emp_id, @storedate, @itemid, @quantaty, @baracode, @expiredate, @productdate, @price, @name, @categoryid, @itemunit, @min_quantaty)" SelectCommand="SELECT * FROM [store]" UpdateCommand="UPDATE [store] SET [emp_id] = @emp_id, [storedate] = @storedate, [itemid] = @itemid, [quantaty] = @quantaty, [baracode] = @baracode, [expiredate] = @expiredate, [productdate] = @productdate, [price] = @price, [name] = @name, [categoryid] = @categoryid, [itemunit] = @itemunit, [min_quantaty] = @min_quantaty WHERE [storeid] = @storeid">
                        <DeleteParameters>
                            <asp:Parameter Name="storeid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="emp_id" Type="Int32" />
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
                            <asp:Parameter Name="min_quantaty" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="emp_id" Type="Int32" />
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
                            <asp:Parameter Name="min_quantaty" Type="Int32" />
                            <asp:Parameter Name="storeid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                        </div>
                </td>
            </tr>
            <tr>
                <td colspan="9">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="9">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="9">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="9">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="9">&nbsp;</td>
            </tr>
        </table>
    
    </div>
     </fieldset>
    </div>
</asp:Content>
