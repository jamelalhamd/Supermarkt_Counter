<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPwd.aspx.cs" Inherits="ForgetPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/Main.css" rel="stylesheet" />
    <style type="text/css">
        

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

      
    </style>
</head>
<body style="padding-top: 20px; width: 100%; height: 100%">
    <form id="form1" runat="server">
    <div style="width: 600px; margin: auto; background-color: white; border: double 3px #808080;">
           <fieldset>
                <legend style="font-size: 20px;">
                    <span style="position: relative; top: -15px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Forget Password</span></legend>
     <p>
        Enter your email address :
        <asp:TextBox ID="txtEmail" runat="server"    /></p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" OnClick="btnSubmit_Click"   />
            </p>

         <p>
        <asp:Label ID="lblMsg" runat="server"></asp:Label>&nbsp;</p>
               <p></p>
    <a href="default.aspx">Back To Login.</a>
               
    
               </fieldset>

    </div>
    </form>
</body>
</html>
