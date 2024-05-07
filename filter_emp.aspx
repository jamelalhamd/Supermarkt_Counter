<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="filter_emp.aspx.cs" Inherits="filter_emp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 900px;
            height: 100%;
        }
        .auto-style3 {
            height: 8px;
        }
        .auto-style6 {
            width: 60px;
        }
        .auto-style7 {
            width: 61px;
        }
        .auto-style10 {
            height: 52px;
        }
        .auto-style14 {
            height: 52px;
        }
        .auto-style15 {
            height: 23px;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style18 {
            height: 8px;
            text-align: left;
        }
        .auto-style19 {
            height: 52px;
            width: 18px;
        }
        .auto-style20 {
            height: 23px;
            width: 71px;
        }
        .auto-style24 {
            height: 23px;
            width: 16px;
        }
        .auto-style27 {
            width: 16px;
        }
        .auto-style30 {
            height: 23px;
            width: 17px;
        }
        .auto-style31 {
            height: 23px;
            width: 18px;
        }
        .auto-style32 {
            width: 63px;
        }
        .auto-style33 {
            width: 17px;
        }
        .auto-style34 {
            width: 18px;
        }
        .auto-style37 {
            height: 23px;
            width: 63px;
        }
        .auto-style39 {
            height: 23px;
            text-align: center;
            width: 106px;
        }
        .auto-style41 {
            width: 106px;
        }
        .auto-style44 {
            height: 23px;
            width: 90px;
        }
        .auto-style45 {
            width: 90px;
        }
        .auto-style46 {
            width: 71px;
        }
        .auto-style48 {
            width: 79px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder0" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <fieldset class="fieldsetmain">
                <legend style="font-size: 20px;">SALE FILTER</legend>
    <table class="auto-style1">
        <tr>
            <td class="auto-style17" colspan="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Name  :"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Jamel"></asp:Label>
            </td>
            <td class="auto-style6" colspan="2">&nbsp;</td>
            <td class="auto-style7" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="ID :"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="55871"></asp:Label>
            </td>
            <td class="auto-style6" colspan="2">&nbsp;</td>
            <td class="auto-style7" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" colspan="3">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Width="102px" Height="39px">
                    <asp:ListItem Value="Date">Date</asp:ListItem>
                    <asp:ListItem Selected="True" Value="Bill No">Bill No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style10" colspan="3">
                <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
            </td>
            <td class="auto-style10" colspan="4">&nbsp;</td>
            <td class="auto-style10" colspan="3">&nbsp;</td>
            <td class="auto-style14" colspan="2"></td>
            <td class="auto-style19"></td>
        </tr>
        <tr>
            <td class="auto-style20" rowspan="4">
                <asp:Label ID="Label6" runat="server" Text="Date :"></asp:Label>
            </td>
            <td class="auto-style44">
                <asp:Label ID="Label7" runat="server" Text="From"></asp:Label>
            </td>
            <td class="auto-style39" colspan="2" rowspan="2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" ForeColor="blue" ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$">insert as :mm/dd/yyyy</asp:RegularExpressionValidator>
            </td>
            <td class="auto-style15" rowspan="4">&nbsp;</td>
            <td class="auto-style15" colspan="2" rowspan="4">&nbsp;</td>
            <td class="auto-style37" rowspan="4">&nbsp;</td>
            <td class="auto-style47" rowspan="4">&nbsp;</td>
            <td class="auto-style15" colspan="2" rowspan="4">&nbsp;</td>
            <td class="auto-style37" rowspan="4"></td>
            <td class="auto-style24" rowspan="4"></td>
            <td class="auto-style30" rowspan="4"></td>
            <td class="auto-style30" rowspan="4"></td>
            <td class="auto-style31" rowspan="4"></td>
        </tr>
        <tr>
            <td class="auto-style44">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" TextMode="DateTime" Width="71px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style44">
                <asp:Label ID="Label8" runat="server" Text="To"></asp:Label>
            </td>
            <td class="auto-style39" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style44">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="DateTime" Width="68px"></asp:TextBox>
            </td>
            <td class="auto-style39" colspan="2">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ForeColor="blue" ValidationExpression="^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$">insert as :mm/dd/yyyy</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Label ID="Label9" runat="server" Text="Bill NO :"></asp:Label>
            </td>
            <td class="auto-style45">
                <asp:TextBox ID="TextBox3" runat="server" Width="72px"></asp:TextBox>
            </td>
            <td class="auto-style41" colspan="2">&nbsp;</td>
            <td colspan="4">&nbsp;</td>
            <td class="auto-style48">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style46">
                <asp:Label ID="Label10" runat="server" Text="Employee :" Visible="False"></asp:Label>
            </td>
            <td class="auto-style45">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="employeefullname" DataValueField="employeeID" Visible="False">
                </asp:DropDownList>
            </td>
            <td class="auto-style41" colspan="2">
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [employeeID], [employeefullname] FROM [employee]"></asp:SqlDataSource>
            </td>
            <td colspan="4">&nbsp;</td>
            <td class="auto-style48">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="9">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" Width="82px" CssClass="button" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="All Bill" CssClass="button" />
            </td>
            <td colspan="3" rowspan="2">&nbsp;</td>
            <td colspan="2" rowspan="2">&nbsp;</td>
            <td colspan="2" rowspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="9" style="vertical-align: middle">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style17" colspan="9">
                <div style="height: auto; text-align: left; margin-left: 0px; margin-top: 0px; clip: rect(50px, auto, auto, auto);overflow:auto;">
                    <asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-left: 0px" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="saletime" HeaderText="saletime" SortExpression="saletime" />
                            <asp:BoundField DataField="employeeid" HeaderText="employeeid" SortExpression="employeeid" />
                            <asp:BoundField DataField="salecount" HeaderText="salecount" SortExpression="salecount" />
                            <asp:BoundField DataField="saletotall" HeaderText="saletotall" SortExpression="saletotall" />
                            <asp:BoundField DataField="unitprice" HeaderText="unitprice" SortExpression="unitprice" />
                            <asp:BoundField DataField="baracode" HeaderText="baracode" SortExpression="baracode" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="itemunit" HeaderText="itemunit" SortExpression="itemunit" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [saletime], [employeeid], [salecount], [saletotall], [unitprice], [baracode], [name], [itemunit] FROM [sale] WHERE ([billnumber] = @billnumber)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label5" Name="billnumber" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="saletime" HeaderText="saletime" SortExpression="saletime" />
                            <asp:BoundField DataField="salecount" HeaderText="salecount" SortExpression="salecount" />
                            <asp:BoundField DataField="saletotall" HeaderText="saletotall" SortExpression="saletotall" />
                            <asp:BoundField DataField="unitprice" HeaderText="unitprice" SortExpression="unitprice" />
                            <asp:BoundField DataField="baracode" HeaderText="baracode" SortExpression="baracode" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="itemunit" HeaderText="itemunit" SortExpression="itemunit" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="8">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="employeeID" HeaderText="employeeID" SortExpression="employeeID" />
                        <asp:BoundField DataField="Saledate" HeaderText="Saledate" SortExpression="Saledate" />
                        <asp:BoundField DataField="billnumber" HeaderText="billnumber" SortExpression="billnumber" />
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
                <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" PageSize="8">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
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
                </div>
            </td>
            <td colspan="3">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18" colspan="9">
                <div style="width: 282px; height: 211px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [FilterSale] ">
                    </asp:SqlDataSource>
                </div>
            </td>
            <td class="auto-style18" colspan="3">&nbsp;</td>
            <td class="auto-style3" colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="12">
                <div>
                    <div>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [saletime], [salecount], [saletotall], [unitprice], [baracode], [name], [itemunit] FROM [sale] WHERE ([billnumber] = @billnumber)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label5" Name="billnumber" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="16">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="16">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="16">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="16">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="16">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="16">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="16">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="16">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="16">&nbsp;</td>
        </tr>
    </table>
         </fieldset>
</asp:Content>


