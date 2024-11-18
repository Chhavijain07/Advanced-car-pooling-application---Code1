<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usersignup.aspx.cs" Inherits="usersignup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="car.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 84px;
        }
        .style2
        {
            width: 140px;
        }
    </style>

    <script language="javascript" type="text/javascript">
        function isNumeric(keyCode) {
            return ((keyCode >= 48 && keyCode <= 57) || keyCode == 8 || keyCode == 11 || keyCode == 9)
        }
        function isString(keyCode) {
            return ((keyCode >= 65 && keyCode <= 90) || keyCode == 8 || keyCode == 11 || keyCode == 9 || keyCode == 32)
        }
       
</script>
</head>
<body bgcolor="#cccccc">
    <form id="form1" runat="server">
    <div>
        <table style="height: 70px; width: 1340px" bgcolor="#333399">
            <tr>
                <td class="style1">
                    <asp:Image ID="Image1" runat="server" Height="69px" 
                        ImageUrl="~/image/car logo.png" Width="82px" />
                </td>
                <td style="font-size: x-large; color: #FFFFFF;">
                    ADVANCED CAR POLLING APPLICATION&nbsp;</td>
            </tr>
        </table>
        <table style="height: 18px; width: 1340px" bgcolor="Gray">
            <tr>
                <td>
                
                    &nbsp;</td>
            </tr>
        </table>
        <table>
             <tr>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="35px" 
                        ImageUrl="~/image/userlo.png" Width="36px" />
                    USER SIGNUP DETAILS:
                </td>
            </tr>
        </table>
        <table style="height: 421px; width: 420px">
           
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender" Checked="true" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender" />
                </td>
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtage" runat="server" Width="80px"  onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtage" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Phone No."></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtphno" runat="server"  onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtphno" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtemail" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
      ControlToValidate="txtemail" ValidationGroup="car" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Occupation"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtoccupation" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtoccupation" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Type of Occupation"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttypeofoccu" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txttypeofoccu" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label8" runat="server" Text="Street1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtstreet1" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtstreet1" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label9" runat="server" Text="Street2"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtstreet2" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtstreet2" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcity" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtcity" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label11" runat="server" Text="State"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtstate" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtstate" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label12" runat="server" Text="Pin"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpin" runat="server"  onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtpin" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label13" runat="server" Text="Username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtuname" runat="server" AutoPostBack="True" 
                        ontextchanged="txtuname_TextChanged"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtuname" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                    <asp:Label ID="lblerr" runat="server" ForeColor="Red" Text="Label" 
                        Visible="False"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label14" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtpwd" ForeColor="Red">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Signup" Font-Bold="True" ValidationGroup="car" 
                        Font-Names="Cambria" onclick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                        Font-Names="Cambria" />
                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Back</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="lblack" Visible="False" runat="server" Text="User Created!!!" 
                        ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
