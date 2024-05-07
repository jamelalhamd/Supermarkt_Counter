<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="report_supplier.aspx.cs" Inherits="supplier_bill" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder0" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <fieldset style="width: 600px; margin: auto; background-color: white; border: double 3px #808080;">
                <legend style="font-size: 20px;">
                    <span style="position: relative; top: -15px;">REPORT SUPPLIER</span></legend>
        
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <table class="auto-style1">
        <tr>
            <td><asp:Button ID="Button2" runat="server" Text="Print" Width="101px" CssClass="button" />
               &nbsp;&nbsp; <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Back To Store Keeper" Width="154px" CssClass="button" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <div>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="100%" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="600px">
        <LocalReport ReportPath="supplier.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
            </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="datatset_reportsTableAdapters.buy_billTableAdapter"></asp:ObjectDataSource>
        </fieldset>
</asp:Content>

