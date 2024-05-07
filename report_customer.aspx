<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="report_customer.aspx.cs" Inherits="report2aspx" %><%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style9 {
        width: 842px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="margin: auto; background-color: white; border: double 3px #808080;" class="auto-style9">
                <legend style="font-size: 20px;">
                    <span style="position: relative; top: -15px;">REPORT CUSTOMER</span></legend>
        <div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back To Cashier Page" Width="168px" CssClass="button" />
   &nbsp;&nbsp; <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="print" Width="77px" CssClass="button" />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="600px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
        <LocalReport ReportPath="customer.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DataSet2" />
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet3" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="GetData" TypeName="datatset_reportsTableAdapters.FilterSaleTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="GetData" TypeName="datatset_reportsTableAdapters.billTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="DatabaseDataSetTableAdapters.saleTableAdapter"></asp:ObjectDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sale]"></asp:SqlDataSource>
</div>
</fieldset>
</asp:Content>

