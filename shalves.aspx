<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="shalves.aspx.cs" Inherits="shalves" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 900px;
        }
        .auto-style2 {
            width: 88px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            width: 162px;
        }
        .auto-style7 {
            width: 161px;
            text-align: right;
        }
        .auto-style8 {
            width: 161px;
            height: 20px;
        }
        .auto-style9 {
            width: 161px;
            text-align: right;
            height: 20px;
        }
        .auto-style10 {
            width: 162px;
            height: 20px;
        }
        .auto-style11 {
            width: 88px;
            height: 20px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
        width: 161px;
        text-align: right;
        height: 24px;
    }
        .auto-style14 {
        text-align: left;
        height: 24px;
    }
        .auto-style15 {
            width: 162px;
            height: 24px;
        }
        .auto-style16 {
            width: 88px;
            height: 24px;
        }
        .auto-style17 {
            text-align: left;
            height: 24px;
            width: 139px;
        }
        .auto-style18 {
            text-align: left;
            width: 139px;
        }
    .auto-style19 {
        width: 161px;
        height: 20px;
        text-align: left;
    }
    .auto-style20 {
        width: 161px;
        text-align: right;
        margin-bottom: 0px;
    }
    .auto-style21 {
        text-align: center;
    }
    .auto-style22 {
        width: 161px;
        height: 20px;
        text-align: center;
    }
    .auto-style23 {
        text-align: left;
        height: 26px;
    }
    .auto-style24 {
        width: 162px;
        text-align: left;
        height: 26px;
    }
    .auto-style25 {
        width: 88px;
        text-align: left;
        height: 26px;
    }
        .auto-style26 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <fieldset>
            <legend style="font-size: 20px;">SHALVES
            </legend>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Name :" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="Jamel" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style20" colspan="2">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style5" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [places]"></asp:SqlDataSource>
            </td>
            <td class="auto-style6">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [item_unit]"></asp:SqlDataSource>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="Label3" runat="server" Text="ID  :" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="55871" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style9" colspan="2">
                &nbsp;</td>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style22" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
            </td>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style23" colspan="2"></td>
            <td class="auto-style23"></td>
            <td class="auto-style23" colspan="2"></td>
            <td class="auto-style24"></td>
            <td class="auto-style25"></td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label5" runat="server" Text="Bar Code"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBoxbar" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style14">
            </td>
            <td class="auto-style13">
                <asp:Label ID="Label10" runat="server" Text="Name"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="TextBoxname" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" ControlToValidate="TextBoxname">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style15"></td>
            <td class="auto-style16"></td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label6" runat="server" Text="Price"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBoxprice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" ControlToValidate="TextBoxprice">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxprice" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+">insert real number</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label11" runat="server" Text="Item ID"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxid" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label7" runat="server" Text="Quantaty"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBoxqua" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" ControlToValidate="TextBoxqua">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxqua" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+">insert real number</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label12" runat="server" Text="Category"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownListcat" runat="server" DataSourceID="SqlDataSource2" DataTextField="categoryname" DataValueField="categoryid">
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label8" runat="server" Text="Expire Date"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBoxexp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" ControlToValidate="TextBoxexp">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxexp" ErrorMessage="RegularExpressionValidator" ForeColor="#FF0066" ValidationExpression="^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$">insert mm/dd/yyyy</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label13" runat="server" Text="Item unit"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownListunit" runat="server" DataSourceID="SqlDataSource3" DataTextField="unit_name" DataValueField="unit_name">
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label9" runat="server" Text="Product Date"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBoxpro" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" ControlToValidate="TextBoxpro">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxpro" ErrorMessage="RegularExpressionValidator" ForeColor="#FF0066" ValidationExpression="^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$">insert mm/dd/yyyy</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style7">Shelf Date</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxs_helf_date" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label16" runat="server" Text="Place"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="placename" DataValueField="placeid" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="Label15" runat="server" Text="Min Sales"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxmin_sale" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066" ControlToValidate="TextBoxmin_sale">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style12">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxmin_sale" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+">insert integer</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style21" colspan="5">
                <asp:Button ID="Button17" runat="server" BackColor="#851010" CausesValidation="False" CssClass="auto-style26" ForeColor="White" Height="30px" OnClick="Button17_Click" Text="Delete Executed" Width="119px" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Damage" Width="100px" CssClass="button" Height="30px" />
                &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Width="100px" CssClass="button" Height="30px" />
                <asp:Button ID="Button18" runat="server" BackColor="#851010" CausesValidation="False" ForeColor="White" Height="30px" OnClick="Button18_Click" Text="Delete All Executed" Width="140px" />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="8">
                <asp:Label ID="Labelresult" runat="server" ForeColor="#FF0066" style="text-align: center"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="8">
                <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="itemid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="886px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="itembaracode" HeaderText="itembaracode" SortExpression="itembaracode" />
                        <asp:BoundField DataField="itemprice" HeaderText="itemprice" SortExpression="itemprice" />
                        <asp:BoundField DataField="itemquantaty" HeaderText="itemquantaty" SortExpression="itemquantaty" />
                        <asp:BoundField DataField="itemexpiredate" DataFormatString="{0:d}" HeaderText="itemexpiredate" SortExpression="itemexpiredate" />
                        <asp:BoundField DataField="itemprodectdate" DataFormatString="{0:d}" HeaderText="itemprodectdate" SortExpression="itemprodectdate" />
                        <asp:BoundField DataField="itemplace" HeaderText="itemplace" SortExpression="itemplace" />
                        <asp:BoundField DataField="itemname" HeaderText="itemname" SortExpression="itemname" />
                        <asp:BoundField DataField="categoryid" HeaderText="categoryid" SortExpression="categoryid" />
                        <asp:BoundField DataField="itemunit" HeaderText="itemunit" SortExpression="itemunit" />
                        <asp:BoundField DataField="itemid" HeaderText="itemid" InsertVisible="False" ReadOnly="True" SortExpression="itemid" />
                        <asp:BoundField DataField="shelf_date" DataFormatString="{0:d}" HeaderText="shelf_date" SortExpression="shelf_date" />
                        <asp:BoundField DataField="min_sale" HeaderText="min_sale" SortExpression="min_sale" />
                        <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [item] WHERE [itemid] = @itemid" InsertCommand="INSERT INTO [item] ([itembaracode], [itemprice], [itemquantaty], [itemexpiredate], [itemprodectdate], [itemplace], [itemname], [categoryid], [itemunit], [shelf_date], [min_sale], [emp_id]) VALUES (@itembaracode, @itemprice, @itemquantaty, @itemexpiredate, @itemprodectdate, @itemplace, @itemname, @categoryid, @itemunit, @shelf_date, @min_sale, @emp_id)" SelectCommand="SELECT * FROM [item]" UpdateCommand="UPDATE [item] SET [itembaracode] = @itembaracode, [itemprice] = @itemprice, [itemquantaty] = @itemquantaty, [itemexpiredate] = @itemexpiredate, [itemprodectdate] = @itemprodectdate, [itemplace] = @itemplace, [itemname] = @itemname, [categoryid] = @categoryid, [itemunit] = @itemunit, [shelf_date] = @shelf_date, [min_sale] = @min_sale, [emp_id] = @emp_id WHERE [itemid] = @itemid">
                    <DeleteParameters>
                        <asp:Parameter Name="itemid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="itembaracode" Type="String" />
                        <asp:Parameter Name="itemprice" Type="Double" />
                        <asp:Parameter Name="itemquantaty" Type="Int32" />
                        <asp:Parameter Name="itemexpiredate" Type="DateTime" />
                        <asp:Parameter Name="itemprodectdate" Type="DateTime" />
                        <asp:Parameter Name="itemplace" Type="String" />
                        <asp:Parameter Name="itemname" Type="String" />
                        <asp:Parameter Name="categoryid" Type="Int32" />
                        <asp:Parameter Name="itemunit" Type="String" />
                        <asp:Parameter Name="shelf_date" Type="DateTime" />
                        <asp:Parameter Name="min_sale" Type="Int32" />
                        <asp:Parameter Name="emp_id" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="itembaracode" Type="String" />
                        <asp:Parameter Name="itemprice" Type="Double" />
                        <asp:Parameter Name="itemquantaty" Type="Int32" />
                        <asp:Parameter Name="itemexpiredate" Type="DateTime" />
                        <asp:Parameter Name="itemprodectdate" Type="DateTime" />
                        <asp:Parameter Name="itemplace" Type="String" />
                        <asp:Parameter Name="itemname" Type="String" />
                        <asp:Parameter Name="categoryid" Type="Int32" />
                        <asp:Parameter Name="itemunit" Type="String" />
                        <asp:Parameter Name="shelf_date" Type="DateTime" />
                        <asp:Parameter Name="min_sale" Type="Int32" />
                        <asp:Parameter Name="emp_id" Type="Int32" />
                        <asp:Parameter Name="itemid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                    </div>
            </td>
        </tr>
    </table>
         </fieldset>
</asp:Content>

