<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="damage.aspx.cs" Inherits="damage" %>

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
        .auto-style7 {
            width: 149px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset class="fieldsetmain">
            <legend style="font-size: 20px;">DAMAGE
            </legend>
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="Name :" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Jamel" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="ID  :" Font-Bold="True"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="55871" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="6">
                <div>
                <asp:GridView ID="GridView1" runat="server" CaptionAlign="Top"
                    AutoGenerateColumns="False" Height="100px" BackColor="White"
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                    CellSpacing="2" GridLines="Vertical" DataKeyNames="damage_id" DataSourceID="SqlDataSource1" ForeColor="#333333"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="15" ShowFooter="True">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="damage_id" HeaderText="damage_id" InsertVisible="False" ReadOnly="True" SortExpression="damage_id" />
                        <asp:BoundField DataField="baracode" HeaderText="baracode" SortExpression="baracode" />
                        <asp:BoundField DataField="quantaty" HeaderText="quantaty" SortExpression="quantaty" />
                        <asp:BoundField DataField="expire_date" DataFormatString="{0:d}" HeaderText="expire_date" SortExpression="expire_date" />
                        <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
                        <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                        <asp:BoundField DataField="item_unit" HeaderText="item_unit" SortExpression="item_unit" />
                        <asp:BoundField DataField="item_id" HeaderText="item_id" SortExpression="item_id" />
                        <asp:BoundField DataField="damage_date" DataFormatString="{0:d}" HeaderText="damage_date" SortExpression="damage_date" />
                        <asp:BoundField DataField="emp_id" HeaderText="emp_id" SortExpression="emp_id" />
                        <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [damage] WHERE [damage_id] = @damage_id" InsertCommand="INSERT INTO [damage] ([baracode], [quantaty], [expire_date], [item_name], [category], [item_unit], [item_id], [damage_date], [emp_id], [place]) VALUES (@baracode, @quantaty, @expire_date, @item_name, @category, @item_unit, @item_id, @damage_date, @emp_id, @place)" SelectCommand="SELECT * FROM [damage]" UpdateCommand="UPDATE [damage] SET [baracode] = @baracode, [quantaty] = @quantaty, [expire_date] = @expire_date, [item_name] = @item_name, [category] = @category, [item_unit] = @item_unit, [item_id] = @item_id, [damage_date] = @damage_date, [emp_id] = @emp_id, [place] = @place WHERE [damage_id] = @damage_id">
                    <DeleteParameters>
                        <asp:Parameter Name="damage_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="baracode" Type="Int32" />
                        <asp:Parameter Name="quantaty" Type="Int32" />
                        <asp:Parameter Name="expire_date" Type="DateTime" />
                        <asp:Parameter Name="item_name" Type="String" />
                        <asp:Parameter Name="category" Type="Int32" />
                        <asp:Parameter Name="item_unit" Type="String" />
                        <asp:Parameter Name="item_id" Type="Int32" />
                        <asp:Parameter Name="damage_date" Type="DateTime" />
                        <asp:Parameter Name="emp_id" Type="Int32" />
                        <asp:Parameter Name="place" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="baracode" Type="Int32" />
                        <asp:Parameter Name="quantaty" Type="Int32" />
                        <asp:Parameter Name="expire_date" Type="DateTime" />
                        <asp:Parameter Name="item_name" Type="String" />
                        <asp:Parameter Name="category" Type="Int32" />
                        <asp:Parameter Name="item_unit" Type="String" />
                        <asp:Parameter Name="item_id" Type="Int32" />
                        <asp:Parameter Name="damage_date" Type="DateTime" />
                        <asp:Parameter Name="emp_id" Type="Int32" />
                        <asp:Parameter Name="place" Type="String" />
                        <asp:Parameter Name="damage_id" Type="Int32" />
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
    </table>
         </fieldset>
</asp:Content>

