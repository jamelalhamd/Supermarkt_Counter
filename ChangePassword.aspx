<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword" MasterPageFile="Main.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
           <fieldset style="margin: auto; background-color: white; border: double 3px #808080;" class="auto-style9">
                <legend style="font-size: 20px;">
                    <span style="position: relative; top: -15px;">CHANGE PASSWORD</span></legend>
    <table>
        <tr>
            <td>
                Old Password</td>
            <td>
                <asp:TextBox ID="txtOldpwd" runat="server" TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOldpwd"
                    Display="Dynamic" ErrorMessage="Old Password Required!" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td >
                New Password</td>
            <td >
                <asp:TextBox ID="txtNewpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewpwd"
                    Display="Dynamic" ErrorMessage="New Password Required!"></asp:RequiredFieldValidator>
      
            </td>
        </tr>
        <tr>
            <td >
                Confirm New Password
            </td>
            <td>
                <asp:TextBox ID="txtConfirmpwd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewpwd"
                    ControlToValidate="txtConfirmpwd" Display="Dynamic" ErrorMessage="Passwords don't match!"></asp:CompareValidator></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnChange" runat="server" OnClick="btnChange_Click" Text="Change Password" CssClass="button" /><br />
    <br />
    <asp:Label ID="lblMsg" runat="server"></asp:Label><br />
               </fieldset>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style9 {
            width: 654px;
            height: 214px;
        }
    </style>
</asp:Content>


