<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="dash.aspx.cs" Inherits="dash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 900px;
        }
        .auto-style7 {
            width: 449px;
        }
        .auto-style8 {
            text-align: center;
            width: 449px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div >
    <fieldset>
            <legend style="font-size: 20px;">DASH BOARD
            </legend>
    <table class="auto-style1">
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sale]"></asp:SqlDataSource>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="400px" BackColor="LavenderBlush">
                    <Series>
                        <asp:Series ChartType="Area" Name="Series1" XValueMember="saledate" YValueMembers="saletotall">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                    </div>
            </td>
            <td class="auto-style8">
                <div>
                <asp:Chart ID="Chart2" runat="server" BackColor="MistyRose" BackGradientStyle="Center" DataSourceID="SqlDataSource2" Width="400px">
                    <Series>
                        <asp:Series ChartArea="ChartArea1" ChartType="Area" Name="Series1" XValueMember="buydate" YValueMembers="total_price" YValuesPerPoint="6">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [buy]"></asp:SqlDataSource>
           </div>
                     </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Text="Sales"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" Text="Purchaces"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
                <div>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [alarm]"></asp:SqlDataSource>
                <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4" Width="400px">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="categoryid" YValueMembers="precentage">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PROMOTION]"></asp:SqlDataSource>
            
                    </div></td>
            <td class="auto-style8">
                <div>
                <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3" Width="400px" BackColor="MistyRose">
                    <Series>
                        <asp:Series ChartArea="ChartArea1" Name="Series1" XValueMember="itemid" YValueMembers="quantaty">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                </div>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label3" runat="server" Text="Promotion"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="Alarm"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>
         </fieldset>
</div>
</asp:Content>

