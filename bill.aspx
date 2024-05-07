<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" MasterPageFile="~/Main.master" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            width: 1%;
        }
        .auto-style8 {
            width: 22%;
        }
        .auto-style10 {
            height: 57px;
        }
        .auto-style11 {
            width: 1%;
            height: 57px;
        }
        .auto-style15 {
            height: 26px;
        }
        .auto-style16 {
            height: 23px;
            width: 110px;
            text-align: center;
        }
        .auto-style17 {
            height: 23px;
        }
        .auto-style18 {
            height: 11px;
            width: 110px;
            text-align: center;
        }
        .auto-style19 {
            height: 11px;
        }
        .auto-style20 {
            height: 11px;
            text-align: center;
        }
        .auto-style21 {
            height: 23px;
            text-align: center;
        }
        .auto-style24 {
            margin-left: 0px;
        }
        .auto-style25 {
            margin-right: 38px;
        }
    .auto-style26 {
        float: left;
        width: 94%;
    }
    .auto-style28 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   <div >
    <fieldset >
            <legend style="font-size: 20px;">BILL MANAEMENT
            </legend>    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="6">
                    <asp:Label ID="Label9" runat="server" Text="The name:"></asp:Label>
                    <asp:Label ID="Label10" runat="server" Text="jamel" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td rowspan="2">&nbsp;</td>
                <td class="auto-style6" rowspan="2">&nbsp;</td>
                <td rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label11" runat="server" Text="Employee ID:"></asp:Label>
                    <asp:Label ID="Label12" runat="server" Text="55871" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
                <td colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style28">
                    <asp:Label ID="Label8" runat="server" Text="Bar Code" Font-Size="Large" Height="30px" Width="70px"></asp:Label>
                </td>
                <td class="auto-style28">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" Width="87px" CausesValidation="False" CssClass="button" Height="30px" />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="125px"></asp:TextBox>
                </td>
                <td class="auto-style2" colspan="7">
                    <asp:Label ID="Label1" runat="server" ForeColor="#FF3399"></asp:Label>
                    <asp:Label ID="Label13" runat="server" ForeColor="#3333FF" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="10">
                    <div>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
<%--                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />--%>
                         <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                        </div>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="6">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="ADD" Width="100px" Height="30px" CssClass="button" />
                    <asp:Label ID="Label2" runat="server" Text="Quantaty" Font-Bold="True" Height="20px"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="28px" CssClass="auto-style24" Height="17px" BackColor="#99FFCC" Font-Bold="True" Font-Size="Medium" ForeColor="#FF0066">1</asp:TextBox>
                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Remove" CssClass="button" Width="100px" CausesValidation="False" Height="30px" /> &nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Complete" Width="100px" CausesValidation="False" Height="30px" CssClass="button" /> 
                    &nbsp; &nbsp;
                    <asp:Button ID="Button6" runat="server" Height="30px" OnClick="Button6_Click" Text="Reset" Width="100px" style="margin-left: 0px" CausesValidation="False" CssClass="button" />
                </td>
                <td class="auto-style15">
                    &nbsp;</td>
                <td colspan="2" class="auto-style15">
                    &nbsp;</td>
                <td class="auto-style15"></td>
                <td class="auto-style11" rowspan="3"></td>
                <td class="auto-style11" rowspan="3"></td>
            </tr>
            <tr>
                <td class="auto-style18" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Totall Amount"></asp:Label>
                </td>
                <td colspan="2" class="auto-style20">
                    <asp:Label ID="Label7" runat="server" Text="Totall quantaty"></asp:Label>
                    </td>
                <td class="auto-style19">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ForeColor="#FF0066" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+">insert intger only</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*Insert the quantaty</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style19">
                    <asp:Label ID="Labelresult" runat="server" ForeColor="#FF0066"></asp:Label>
                </td>
                <td class="auto-style10" rowspan="2">
                    &nbsp;</td>
                <td colspan="2" class="auto-style10" rowspan="2">
                </td>
                <td class="auto-style10" rowspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style16" colspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF3399" Text="00"></asp:Label>
                </td>
                <td colspan="2" class="auto-style21">
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" ForeColor="#FF0066" Text="00"></asp:Label>
                    </td>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style17">
                </td>
            </tr>
            <tr>
                <td colspan="5">
                    <asp:GridView ID="GridView3" runat="server" CaptionAlign="Top"
                    AutoGenerateColumns="False" Height="100px" BackColor="White"
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                    CellSpacing="2" GridLines="Vertical" OnDataBound="GridView3_DataBound" OnRowDataBound="GridView3_RowDataBound" OnRowDeleted="GridView3_RowDeleted1" ShowFooter="True" CssClass="auto-style25" Width="569px" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Item No." SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                            <asp:BoundField DataField="baracode" HeaderText="BAR CODE" SortExpression="baracode" />
                            <asp:BoundField DataField="unit" HeaderText="PRICE" SortExpression="unit" />
                            <asp:BoundField DataField="quantaty" HeaderText="QUANTATY" SortExpression="quantaty" />
                            <asp:BoundField DataField="price" HeaderText="TOTALL PRICE" SortExpression="price" />
                            <asp:BoundField DataField="item_unit" HeaderText="THE UNIT" SortExpression="item_unit" >
                            </asp:BoundField>
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [baracode], [unit], [quantaty], [price], [item_unit], [Id] FROM [bill]"></asp:SqlDataSource>
                    <asp:Label ID="Label14" runat="server" ForeColor="#FF3399"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [bill] WHERE [Id] = @Id" InsertCommand="INSERT INTO [bill] ([name], [baracode], [unit], [quantaty], [price], [item_unit]) VALUES (@name, @baracode, @unit, @quantaty, @price, @item_unit)" SelectCommand="SELECT * FROM [bill]" UpdateCommand="UPDATE [bill] SET [name] = @name, [baracode] = @baracode, [unit] = @unit, [quantaty] = @quantaty, [price] = @price, [item_unit] = @item_unit WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="baracode" Type="String" />
                            <asp:Parameter Name="unit" Type="String" />
                            <asp:Parameter Name="quantaty" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="item_unit" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="baracode" Type="String" />
                            <asp:Parameter Name="unit" Type="String" />
                            <asp:Parameter Name="quantaty" Type="String" />
                            <asp:Parameter Name="price" Type="String" />
                            <asp:Parameter Name="item_unit" Type="String" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td colspan="5">
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="DatabaseDataSetTableAdapters.saleTableAdapter"></asp:ObjectDataSource>
                </td>
                <td class="auto-style6" rowspan="4">&nbsp;</td>
                <td class="auto-style6" rowspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="10">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [item] WHERE [itemid] = @itemid" InsertCommand="INSERT INTO [item] ([itembaracode], [itemprice], [itemquantaty], [itemexpiredate], [itemprodectdate], [itemplace], [itemname], [categoryid], [itemunit]) VALUES (@itembaracode, @itemprice, @itemquantaty, @itemexpiredate, @itemprodectdate, @itemplace, @itemname, @categoryid, @itemunit)" SelectCommand="SELECT * FROM [item]" UpdateCommand="UPDATE [item] SET [itembaracode] = @itembaracode, [itemprice] = @itemprice, [itemquantaty] = @itemquantaty, [itemexpiredate] = @itemexpiredate, [itemprodectdate] = @itemprodectdate, [itemplace] = @itemplace, [itemname] = @itemname, [categoryid] = @categoryid, [itemunit] = @itemunit WHERE [itemid] = @itemid">
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
                            <asp:Parameter Name="itemid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="10">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </fieldset>
    </div>
</asp:Content>
