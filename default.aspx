<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link href="Styles/Main.css" rel="stylesheet" />
    <style type="text/css">
        .ErrorMsg {
            font-size: 12px;
            color: #851010;
            font-weight: bold;
        }

        input[type="text"] {
            height: 20px;
        }

        fieldset {
            border: 2px solid #808080;
            border-radius: 4px 4px;
            padding: 10px 10px;
            margin-left: 10px;
            margin-right: 10px;
            margin-bottom: 35px;
            margin-top: 10px;
        }

        .adLogin {
            height: 50px;
            width: 50px;
        }

        .invalidlogin {
            color: #851010;
            border: 1px solid black;
            background-color: #e6e6e6;
            position: relative;
            top: 10px;
            left: 115px;
            padding: 0px 5px;
            width: 100px;
        }
        .auto-style1 {
            width: 281px;
            height: 227px;
        }
        .auto-style2 {
            height: 228px;
            width: 314px;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</head>
<body style="padding-top: 20px; width: 100%; height: 100%">
    <form id="form1" runat="server">

        <div style="width: 700px; margin: auto; background-color: white; border: double 3px #808080;">
            <span id="spnmsg" runat="server" visible="false" class="invalidlogin">Invalid Username / Password
            </span>
            <fieldset>
                <legend style="font-size: 20px;">
                    <img src="Images/administrator.ico" class="adLogin" /><span style="position: relative; top: -15px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login</span></legend>
                <table>
                    <tr>
                        <td>UserName :
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtUnameAd" runat="server"  OnTextChanged="txtUnameAd_TextChanged"  />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUnameAd" Display="Dynamic" CssClass="ErrorMsg" ErrorMessage="Required" />
                        </td>
                    </tr>
                    <tr>
                        <td>Password :
                        </td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtPassAd" runat="server"  OnTextChanged="txtPassAd_TextChanged" TextMode="Password"  />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassAd" Display="Dynamic" ErrorMessage="Required" CssClass="ErrorMsg" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:Button ID="btnAdlogin" runat="server" Text="Login" CssClass="button" OnClick="btnAdlogin_Click"  /></td>
                        <td></td>
                    </tr>
                </table>

                <p></p>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ForgetPwd.aspx">Forgot Password?</a>
                <div class="bodyImages">
            &nbsp;
        </div>
                <br />
            <img src="Images/imagesKXXTBZA6.jpg" class="auto-style1" /><img src="Images/images8V2DERQY.jpg" class="auto-style2" /></fieldset>



        </div>
    </form>
</body>
</html>
