<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="store.aspx.cs" Inherits="store" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 900px;
        }
        .auto-style5 {
            width: 149px;
        }
        .auto-style6 {
            width: 150px;
        }
        .auto-style8 {
            width: 149px;
            height: 21px;
        }
        .auto-style9 {
            width: 150px;
            height: 21px;
        }
        .auto-style10 {
        width: 119px;
        text-align: right;
    }
        .auto-style11 {
        width: 119px;
    }
        .auto-style12 {
            width: 119px;
            height: 21px;
        }
        .auto-style13 {
            width: 244px;
        }
        .auto-style14 {
            width: 244px;
            height: 21px;
        }
        .auto-style15 {
            width: 244px;
            text-align: right;
        }
        .auto-style16 {
            width: 150px;
            text-align: left;
            height: 22px;
        }
    .auto-style17 {
        width: 149px;
        text-align: left;
        margin-bottom: 0px;
    }
    .auto-style18 {
        width: 135px;
    }
        .auto-style19 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="float: left; width: 100%">
    <fieldset class="fieldsetmain">
            <legend style="font-size: 20px;">STORE
            </legend>
    <table class="auto-style1">
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label1" runat="server" Text="Name   :" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Jamel" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style17" colspan="2">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label2" runat="server" Text="ID  :" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="55871" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style17" colspan="2">
                &nbsp;</td>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14"></td>
            <td class="auto-style8" colspan="2"></td>
            <td class="auto-style12"></td>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style16">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [categoryid] = @categoryid" InsertCommand="INSERT INTO [category] ([categoryname]) VALUES (@categoryname)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [categoryname] = @categoryname WHERE [categoryid] = @categoryid">
                    <DeleteParameters>
                        <asp:Parameter Name="categoryid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="categoryname" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="categoryname" Type="String" />
                        <asp:Parameter Name="categoryid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style6">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [item_unit]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label5" runat="server" Text="Item ID  :"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxid" runat="server" Width="90px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label10" runat="server" Text="Price  :"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox6" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+" ControlToValidate="TextBox6">insert real number</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label6" runat="server" Text="Quantaty  :"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxqu" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxqu" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+" ControlToValidate="TextBoxqu">insert number</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label11" runat="server" Text="Name  :"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxname" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label7" runat="server" Text="Bar Code :"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxba" runat="server" Width="90px" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label12" runat="server" Text="Category  :"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownListcat" runat="server" DataSourceID="SqlDataSource2" DataTextField="categoryname" DataValueField="categoryid">
                </asp:DropDownList>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label8" runat="server" Text="Expire Date :"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxexp" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxexp" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxexp" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$">mm/dd/yyyy</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label13" runat="server" Text="Item Unit :"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="DropDownListunit" runat="server" DataSourceID="SqlDataSource3" DataTextField="unit_name" DataValueField="unit_name">
                </asp:DropDownList>
            </td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="Label9" runat="server" Text="Product Date :"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="TextBoxpr" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxpr" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxpr" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$">MM/DD/yyyy</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style10">
                <asp:Label ID="Label14" runat="server" Text="Min _Quantaty :"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBoxmin" runat="server" Width="90px"></asp:TextBox>
            </td>
            <td class="auto-style16">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxmin" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+" ControlToValidate="TextBoxmin">insert number</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19" colspan="6">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Move TO Damage" Width="151px" CssClass="button" Height="30px" />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" Width="137px" CssClass="button" Height="30px" />
                <asp:Button ID="Button17" runat="server" BackColor="#851010" CausesValidation="False" ForeColor="White" Height="30px" OnClick="Button17_Click" Text="Delete All  Executed" Width="130px" />
                <asp:Button ID="Button18" runat="server" BackColor="#851010" CausesValidation="False" ForeColor="White" Height="30px" OnClick="Button18_Click" Text="Delete  Executed" Width="135px" />
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="6" style="text-align: center">
                <asp:Label ID="Labelresult" runat="server" ForeColor="#FF3399" style="text-align: center"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="6">
                <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="storeid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" AllowPaging="True" ShowFooter="True">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="storeid" HeaderText="storeid" InsertVisible="False" ReadOnly="True" SortExpression="storeid" />
                        <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id" />
                        <asp:BoundField DataField="storedate" DataFormatString="{0:d}" HeaderText="storedate" SortExpression="storedate" />
                        <asp:BoundField DataField="itemid" HeaderText="itemid" SortExpression="itemid" />
                        <asp:BoundField DataField="quantaty" HeaderText="quantaty" SortExpression="quantaty" />
                        <asp:BoundField DataField="baracode" HeaderText="baracode" SortExpression="baracode" />
                        <asp:BoundField DataField="expiredate" DataFormatString="{0:d}" HeaderText="expiredate" SortExpression="expiredate" />
                        <asp:BoundField DataField="productdate" DataFormatString="{0:d}" HeaderText="productdate" SortExpression="productdate" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="categoryid" HeaderText="categoryid" SortExpression="categoryid" />
                        <asp:BoundField DataField="itemunit" HeaderText="itemunit" SortExpression="itemunit" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [store] WHERE [storeid] = @storeid" InsertCommand="INSERT INTO [store] ([emp_id], [storedate], [itemid], [quantaty], [baracode], [expiredate], [productdate], [price], [name], [categoryid], [itemunit], [min_quantaty]) VALUES (@emp_id, @storedate, @itemid, @quantaty, @baracode, @expiredate, @productdate, @price, @name, @categoryid, @itemunit, @min_quantaty)" SelectCommand="SELECT * FROM [store]" UpdateCommand="UPDATE [store] SET [emp_id] = @emp_id, [storedate] = @storedate, [itemid] = @itemid, [quantaty] = @quantaty, [baracode] = @baracode, [expiredate] = @expiredate, [productdate] = @productdate, [price] = @price, [name] = @name, [categoryid] = @categoryid, [itemunit] = @itemunit, [min_quantaty] = @min_quantaty WHERE [storeid] = @storeid">
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
            <td colspan="6">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="6">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="6">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="6">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="6">&nbsp;</td>
        </tr>
    </table>
        </fieldset>
        </div>
</asp:Content>

