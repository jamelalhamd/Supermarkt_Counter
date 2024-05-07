<%@ Page Language="C#" AutoEventWireup="true" CodeFile="promotion.aspx.cs" Inherits="promotion" MasterPageFile="Main.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 734px;
            height: 429px;
        }
        .auto-style3 {
            text-align: right;
            width: 244px;
            height: 19px;
        }
        .auto-style4 {
            height: 19px;
        }
        .auto-style5 {
            height: 195px;
        }
        .auto-style13 {
            height: 19px;
            width: 244px;
        }
        .auto-style17 {
            text-align: right;
            width: 244px;
            height: 23px;
        }
        .auto-style18 {
            height: 23px;
            width: 244px;
        }
        .auto-style19 {
            height: 23px;
            width: 260px;
        }
        .auto-style20 {
            height: 19px;
            width: 260px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="float: left; width: 100%">
        <fieldset class="fieldsetmain">
            <legend style="font-size: 20px;">PROMOTION
            </legend>
         <table class="auto-style1">
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label6" runat="server" Text="Promotin ID" Visible="False"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxID" runat="server" BackColor="#FFFFCC" ReadOnly="True" TextMode="Number" Visible="False" Width="93px"></asp:TextBox>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label1" runat="server" Text="Promotion Name"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxname" runat="server" Width="94px"></asp:TextBox>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label2" runat="server" Text="Promotion Date Start"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxstart" runat="server"></asp:TextBox>
                </td>
                 <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxstart" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxstart" ErrorMessage="The Format should be: dd/mm/yyyy" ForeColor="#0066FF" ValidationExpression="^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$">insert as : mm/dd/yyyy</asp:RegularExpressionValidator>
                </td>

                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label3" runat="server" Text="Promotion Date Expire"></asp:Label>
                </td>

                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxexpire" runat="server"></asp:TextBox>
                </td>
                 <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxexpire" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxexpire" ErrorMessage="The Format should be: dd/mm/yyyy" ForeColor="#0066FF" ValidationExpression="^(0[1-9]|1[0-2])\/(0[1-9]|1\d|2\d|3[01])\/(19|20)\d{2}$">insert as : mm/dd/yyyy</asp:RegularExpressionValidator>
                </td>

                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="Label4" runat="server" Text="Promotion Precentage"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxprecentage" runat="server" TextMode="Number" Width="38px"></asp:TextBox>
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="%"></asp:Label>
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;
                    <asp:Label ID="Label5" runat="server" style="text-align: right" Text="Cetegory"></asp:Label>
                </td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownListcategory" runat="server" DataSourceID="SqlDataSource2" DataTextField="categoryname" DataValueField="categoryid">
                    </asp:DropDownList>
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
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Insert" CssClass="button" />
                </td>
                <td class="auto-style20">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" CssClass="button" />
                    &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Update" CssClass="button" />
                </td>
                <td class="auto-style13">
                    <asp:Label ID="Label7" runat="server" ForeColor="#FF0066"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="3">
                    <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="promotionid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="promotionid" HeaderText="promotionid" InsertVisible="False" ReadOnly="True" SortExpression="promotionid" />
                            <asp:BoundField DataField="promotionname" HeaderText="promotionname" SortExpression="promotionname" />
                            <asp:BoundField DataField="promotionstart" DataFormatString="{0:d}" HeaderText="promotionstart" SortExpression="promotionstart" />
                            <asp:BoundField DataField="promotionexpire" DataFormatString="{0:d}" HeaderText="promotionexpire" SortExpression="promotionexpire" />
                            <asp:BoundField DataField="precentage" HeaderText="precentage" SortExpression="precentage" />
                            <asp:BoundField DataField="categoryid" HeaderText="categoryid" SortExpression="categoryid" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [PROMOTION] WHERE [promotionid] = @promotionid" InsertCommand="INSERT INTO [PROMOTION] ([promotionname], [promotionstart], [promotionexpire], [precentage], [categoryid]) VALUES (@promotionname, @promotionstart, @promotionexpire, @precentage, @categoryid)" SelectCommand="SELECT * FROM [PROMOTION]" UpdateCommand="UPDATE [PROMOTION] SET [promotionname] = @promotionname, [promotionstart] = @promotionstart, [promotionexpire] = @promotionexpire, [precentage] = @precentage, [categoryid] = @categoryid WHERE [promotionid] = @promotionid">
                        <DeleteParameters>
                            <asp:Parameter Name="promotionid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="promotionname" Type="String" />
                            <asp:Parameter Name="promotionstart" Type="DateTime" />
                            <asp:Parameter Name="promotionexpire" Type="DateTime" />
                            <asp:Parameter Name="precentage" Type="Double" />
                            <asp:Parameter Name="categoryid" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="promotionname" Type="String" />
                            <asp:Parameter Name="promotionstart" Type="DateTime" />
                            <asp:Parameter Name="promotionexpire" Type="DateTime" />
                            <asp:Parameter Name="precentage" Type="Double" />
                            <asp:Parameter Name="categoryid" Type="Int32" />
                            <asp:Parameter Name="promotionid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                        </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
     </fieldset>
    </div>
</asp:Content>
