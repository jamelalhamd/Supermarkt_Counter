<%@ Page Language="C#" AutoEventWireup="true" CodeFile="employee.aspx.cs" Inherits="employee" MasterPageFile="Main.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 724px;
        }
        .auto-style4 {
            height: 23px;
        text-align: center;
    }
        .auto-style6 {
            width: 724px;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
        }
    .auto-style8 {
        width: 621px;
        height: 26px;
    }
    .auto-style10 {
        text-align: left;
        height: 39px;
    }
        .auto-style17 {
            width: 96px;
            height: 26px;
            text-align: right;
        }
        .auto-style18 {
            width: 96px;
            text-align: right;
        }
        .auto-style19 {
            text-align: right;
            margin-bottom: 0px;
        }
        .auto-style23 {
            width: 527px;
        }
        .auto-style24 {
            width: 527px;
            height: 26px;
        }
        .auto-style26 {
            text-align: left;
            margin-bottom: 0px;
        }
        .auto-style27 {
            text-align: left;
            width: 2px;
            margin-bottom: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div >
    <fieldset >
            <legend style="font-size: 20px;">Add Employee
            </legend>
        <table class="auto-style1">
            <tr>
                <td colspan="2" class="auto-style19">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style27">
                    <asp:Button ID="Button17" runat="server" OnClick="Button17_Click" Text="Define  the Roles" Height="35px" Width="117px" CausesValidation="False" CssClass="button" />
                    </td>
                <td colspan="2" class="auto-style26">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" class="auto-style7">
                    <asp:Label ID="Label6" runat="server" ForeColor="#EEEEEE"></asp:Label>
                </td>
                <td colspan="2" class="auto-style26" rowspan="10">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" DataSourceID="sql_rols" DataTextField="name" DataValueField="id" BackColor="#822525" ForeColor="White">
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" colspan="3" style="background-color: #EEEEEE">
                    <asp:Button ID="buttoninsert" runat="server" OnClick="buttoninsert_Click" Text="insert" Width="72px" Height="35px" CssClass="button" />
                    &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Clear" Width="72px" Height="35px" CausesValidation="False" CssClass="button" />
                    &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Update" Width="72px" Height="35px" CausesValidation="False" CssClass="button" />
                    &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" Width="72px" Height="35px" CausesValidation="False" CssClass="button" />
                    </td>
            </tr>
            <tr>
                <td class="auto-style18" style="background-color: #EEEEEE">
                    <asp:Label ID="Label1" runat="server" Text="Employee ID"></asp:Label>
                </td>
                <td class="auto-style23" colspan="2" style="background-color: #EEEEEE">
                    <asp:TextBox ID="TextBoxid" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" style="background-color: #EEEEEE">
                    <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>
                </td>
                <td class="auto-style23" colspan="2" style="background-color: #EEEEEE">
                    <asp:TextBox ID="TextBoxname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxname" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxname" ErrorMessage="RegularExpressionValidator" ForeColor="#FF0066" ValidationExpression="(?!^.*[A-Z]{2,}.*$)^[A-Za-z]*$">insert letters only</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" style="background-color: #EEEEEE">
                    <asp:Label ID="Label5" runat="server" Text="password"></asp:Label>
                </td>
                <td class="auto-style23" colspan="2" style="background-color: #EEEEEE">
                    <asp:TextBox ID="TextBoxpass" runat="server" TextMode="Password">*********</asp:TextBox>
   <asp:RegularExpressionValidator ID="Regex3" runat="server" ControlToValidate="TextBoxpass"

ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$"

ErrorMessage="Password must contain: Minimum 8 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet and 1 Number" ForeColor="#FF3399" /></td>
            </tr>
            <tr>
                <td class="auto-style18" style="background-color: #EEEEEE">
                    <asp:Label ID="Label3" runat="server" Text="phone"></asp:Label>
                </td>
                <td class="auto-style23" colspan="2" style="background-color: #EEEEEE">
                    <asp:TextBox ID="TextBoxphone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxphone" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxphone" ErrorMessage="RegularExpressionValidator" ForeColor="#FF3399" ValidationExpression="[+-]?([0-9]*[.])?[0-9]+">insert digit only</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" style="background-color: #EEEEEE">
                    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="auto-style23" colspan="2" style="background-color: #EEEEEE">
                    <asp:DropDownList ID="DropDownListgender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Famale</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" style="background-color: #EEEEEE">
                    adrdess</td>
                <td class="auto-style23" colspan="2" style="background-color: #EEEEEE">
                    <asp:TextBox ID="TextBoxaddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" style="background-color: #EEEEEE">
                    position</td>
                <td class="auto-style23" colspan="2" style="background-color: #EEEEEE">
                    <asp:DropDownList ID="DropDownListposition" runat="server" OnSelectedIndexChanged="DropDownListposition_SelectedIndexChanged">
                        <asp:ListItem>admin</asp:ListItem>
                        <asp:ListItem>casher</asp:ListItem>
                        <asp:ListItem>store keeper</asp:ListItem>
                        <asp:ListItem>supervisor</asp:ListItem>
                        <asp:ListItem>other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button4" runat="server" Font-Bold="True" Height="24px" OnClick="Button4_Click" style="margin-top: 5px" Text="+" Width="22px" CausesValidation="False" CssClass="button" />
                    &nbsp;&nbsp;<asp:Button ID="Button5" runat="server" Font-Bold="True"  Height="24px" OnClick="Button5_Click" Text="-" Width="16px" CausesValidation="False" CssClass="button" />
                    <asp:TextBox ID="TextBoxposition" runat="server" Visible="False" Width="98px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="background-color: #EEEEEE">
                    email</td>
                <td class="auto-style24" colspan="2" style="background-color: #EEEEEE">
                    <asp:TextBox ID="TextBoxemail" runat="server" OnTextChanged="TextBoxemail_TextChanged" Width="162px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="RegularExpressionValidator" ForeColor="#FF0066" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">incorrect format</asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="RequiredFieldValidator" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="5" style="vertical-align: middle; background-color: #EEEEEE;">
                    <div>
                    <asp:GridView ID="GridView1" runat="server" CaptionAlign="Top"
                    AutoGenerateColumns="False" Height="100px" BackColor="White"
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                    CellSpacing="2" GridLines="Vertical" DataKeyNames="employeeID" DataSourceID="SqlDataSource1"   OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                      <AlternatingRowStyle BackColor="#DCDCDC" />
                          <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="employeeID" HeaderText="Employee ID" SortExpression="employeeID" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="employeefullname" HeaderText="Name" SortExpression="employeefullname" />
                            <asp:BoundField DataField="employeephone" HeaderText="Phone" SortExpression="employeephone" />
                            <asp:BoundField DataField="employeegender" HeaderText="Gender" SortExpression="employeegender" />
                            <asp:BoundField DataField="employeeaddress" HeaderText="Address" SortExpression="employeeaddress" />
                            <asp:BoundField DataField="employeepassword" HeaderText="Password" SortExpression="employeepassword" Visible="False" />
                            <asp:BoundField DataField="employeeposition" HeaderText="Position" SortExpression="employeeposition" />
                            <asp:BoundField DataField="email" HeaderText="e-mail" SortExpression="email" />
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
                <td class="auto-style4" colspan="2" style="vertical-align: middle">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [employee]" DeleteCommand="DELETE FROM [employee] WHERE [employeeID] = @employeeID" InsertCommand="INSERT INTO [employee] ([employeefullname], [employeephone], [employeegender], [employeeaddress], [employeepassword], [employeeposition], [email]) VALUES (@employeefullname, @employeephone, @employeegender, @employeeaddress, @employeepassword, @employeeposition, @email)" UpdateCommand="UPDATE [employee] SET [employeefullname] = @employeefullname, [employeephone] = @employeephone, [employeegender] = @employeegender, [employeeaddress] = @employeeaddress, [employeepassword] = @employeepassword, [employeeposition] = @employeeposition, [email] = @email WHERE [employeeID] = @employeeID">
                        <DeleteParameters>
                            <asp:Parameter Name="employeeID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="employeefullname" Type="String" />
                            <asp:Parameter Name="employeephone" Type="String" />
                            <asp:Parameter Name="employeegender" Type="String" />
                            <asp:Parameter Name="employeeaddress" Type="String" />
                            <asp:Parameter Name="employeepassword" Type="String" />
                            <asp:Parameter Name="employeeposition" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="employeefullname" Type="String" />
                            <asp:Parameter Name="employeephone" Type="String" />
                            <asp:Parameter Name="employeegender" Type="String" />
                            <asp:Parameter Name="employeeaddress" Type="String" />
                            <asp:Parameter Name="employeepassword" Type="String" />
                            <asp:Parameter Name="employeeposition" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="employeeID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="sql_rols" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [role]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [employee] WHERE [employeeID] = @employeeID" InsertCommand="INSERT INTO [employee] ([employeefullname], [employeephone], [employeegender], [employeeaddress], [employeepassword], [employeeposition], [email]) VALUES (@employeefullname, @employeephone, @employeegender, @employeeaddress, @employeepassword, @employeeposition, @email)" OnDeleted="SqlDataSource3_Deleted" OnInserted="SqlDataSource3_Inserted" OnSelected="SqlDataSource3_Selected" OnUpdated="SqlDataSource3_Updated" SelectCommand="SELECT * FROM [employee] WHERE ([employeeID] = @employeeID)" UpdateCommand="UPDATE [employee] SET [employeefullname] = @employeefullname, [employeephone] = @employeephone, [employeegender] = @employeegender, [employeeaddress] = @employeeaddress, [employeepassword] = @employeepassword, [employeeposition] = @employeeposition, [email] = @email WHERE [employeeID] = @employeeID">
                        <DeleteParameters>
                            <asp:Parameter Name="employeeID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="employeefullname" Type="String" />
                            <asp:Parameter Name="employeephone" Type="String" />
                            <asp:Parameter Name="employeegender" Type="String" />
                            <asp:Parameter Name="employeeaddress" Type="String" />
                            <asp:Parameter Name="employeepassword" Type="String" />
                            <asp:Parameter Name="employeeposition" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" DefaultValue="57374" Name="employeeID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="employeefullname" Type="String" />
                            <asp:Parameter Name="employeephone" Type="String" />
                            <asp:Parameter Name="employeegender" Type="String" />
                            <asp:Parameter Name="employeeaddress" Type="String" />
                            <asp:Parameter Name="employeepassword" Type="String" />
                            <asp:Parameter Name="employeeposition" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="employeeID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="7">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="7">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [role]"></asp:SqlDataSource>
                    </td>
            </tr>
        </table>
   </fieldset>
    </div>
</asp:Content>
