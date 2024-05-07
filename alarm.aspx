<%@ Page Language="C#" AutoEventWireup="true" CodeFile="alarm.aspx.cs" Inherits="alarm" MasterPageFile="~/Main.master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="float: left; width: 100%">
        <fieldset >
            <legend style="font-size: 20px;">ALARM
            </legend>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Refresh" CssClass="button" />
                </td>
            </tr>
            <tr>
                <td>
                    <div>
                    <asp:GridView ID="GridView1" runat="server" CaptionAlign="Top"
                    AutoGenerateColumns="False" Height="100px" BackColor="White"
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                    CellSpacing="2" GridLines="Vertical"   DataKeyNames="alarm_Id" DataSourceID="SqlDataSource2" 
                     Width="722px" AllowPaging="True" PageSize="9">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="alarm_Id" HeaderText="alarm_Id" ReadOnly="True" SortExpression="alarm_Id" InsertVisible="False" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="baracode" HeaderText="baracode" SortExpression="baracode" />
                            <asp:BoundField DataField="itemid" HeaderText="itemid" SortExpression="itemid" />
                            <asp:BoundField DataField="alarm_date" HeaderText="alarm_date" SortExpression="alarm_date" />
                            <asp:BoundField DataField="quantaty" HeaderText="quantaty" SortExpression="quantaty" />
                            <asp:BoundField DataField="itemunit" HeaderText="itemunit" SortExpression="itemunit" />
                            <asp:BoundField DataField="remark" HeaderText="remark" SortExpression="remark" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [alarm]" DeleteCommand="DELETE FROM [alarm] WHERE [alarm_Id] = @alarm_Id" InsertCommand="INSERT INTO [alarm] ([name], [baracode], [itemid], [alarm_date], [quantaty], [itemunit], [remark]) VALUES (@name, @baracode, @itemid, @alarm_date, @quantaty, @itemunit, @remark)" UpdateCommand="UPDATE [alarm] SET [name] = @name, [baracode] = @baracode, [itemid] = @itemid, [alarm_date] = @alarm_date, [quantaty] = @quantaty, [itemunit] = @itemunit, [remark] = @remark WHERE [alarm_Id] = @alarm_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="alarm_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="baracode" Type="String" />
                            <asp:Parameter Name="itemid" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="alarm_date" />
                            <asp:Parameter Name="quantaty" Type="Int32" />
                            <asp:Parameter Name="itemunit" Type="String" />
                            <asp:Parameter Name="remark" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="baracode" Type="String" />
                            <asp:Parameter Name="itemid" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="alarm_date" />
                            <asp:Parameter Name="quantaty" Type="Int32" />
                            <asp:Parameter Name="itemunit" Type="String" />
                            <asp:Parameter Name="remark" Type="String" />
                            <asp:Parameter Name="alarm_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                        </div>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="alarm_Id" DataSourceID="SqlDataSource3" ForeColor="white" GridLines="None" Height="50px" Width="332px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="white" Font-Bold="True" />
                        <FieldHeaderStyle BackColor="#EEEEEE" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="alarm_Id" HeaderText="alarm_Id" ReadOnly="True" SortExpression="alarm_Id" InsertVisible="False" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="baracode" HeaderText="baracode" SortExpression="baracode" />
                            <asp:BoundField DataField="itemid" HeaderText="itemid" SortExpression="itemid" />
                            <asp:BoundField DataField="alarm_date" HeaderText="alarm_date" SortExpression="alarm_date" />
                            <asp:BoundField DataField="quantaty" HeaderText="quantaty" SortExpression="quantaty" />
                            <asp:BoundField DataField="itemunit" HeaderText="itemunit" SortExpression="itemunit" />
                            <asp:BoundField DataField="remark" HeaderText="remark" SortExpression="remark" />
                        </Fields>
                      
                         <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#851010" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#851010" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" HorizontalAlign="Center" />
                    
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [alarm] WHERE ([alarm_Id] = @alarm_Id)" DeleteCommand="DELETE FROM [alarm] WHERE [alarm_Id] = @alarm_Id" InsertCommand="INSERT INTO [alarm] ([name], [baracode], [itemid], [alarm_date], [quantaty], [itemunit], [remark]) VALUES (@name, @baracode, @itemid, @alarm_date, @quantaty, @itemunit, @remark)" UpdateCommand="UPDATE [alarm] SET [name] = @name, [baracode] = @baracode, [itemid] = @itemid, [alarm_date] = @alarm_date, [quantaty] = @quantaty, [itemunit] = @itemunit, [remark] = @remark WHERE [alarm_Id] = @alarm_Id">
                        <DeleteParameters>
                            <asp:Parameter Name="alarm_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="baracode" Type="String" />
                            <asp:Parameter Name="itemid" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="alarm_date" />
                            <asp:Parameter Name="quantaty" Type="Int32" />
                            <asp:Parameter Name="itemunit" Type="String" />
                            <asp:Parameter Name="remark" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="alarm_Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="baracode" Type="String" />
                            <asp:Parameter Name="itemid" Type="Int32" />
                            <asp:Parameter DbType="Date" Name="alarm_date" />
                            <asp:Parameter Name="quantaty" Type="Int32" />
                            <asp:Parameter Name="itemunit" Type="String" />
                            <asp:Parameter Name="remark" Type="String" />
                            <asp:Parameter Name="alarm_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [alarm] WHERE [alarm_Id] = @alarm_Id" InsertCommand="INSERT INTO [alarm] ([alarm_Id], [name], [baracode], [itemid], [alarm_date]) VALUES (@alarm_Id, @name, @baracode, @itemid, @alarm_date)" SelectCommand="SELECT * FROM [alarm]" UpdateCommand="UPDATE [alarm] SET [name] = @name, [baracode] = @baracode, [itemid] = @itemid, [alarm_date] = @alarm_date WHERE [alarm_Id] = @alarm_Id">
            <DeleteParameters>
                <asp:Parameter Name="alarm_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="alarm_Id" Type="Int32" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="baracode" Type="String" />
                <asp:Parameter Name="itemid" Type="Int32" />
                <asp:Parameter DbType="Date" Name="alarm_date" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="baracode" Type="String" />
                <asp:Parameter Name="itemid" Type="Int32" />
                <asp:Parameter DbType="Date" Name="alarm_date" />
                <asp:Parameter Name="alarm_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
   </fieldset>
    </div>
</asp:Content>
