<%@ Page Title="" Language="C#" MasterPageFile="~/carmaster.master" AutoEventWireup="true" CodeFile="manageprofile.aspx.cs" Inherits="manageprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 140px;
        }
        .style3
        {
            width: 123px;
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 155px">
    <tr>
         <td >
            WELCOME&nbsp;&nbsp;
                <asp:Label ID="lbluser" runat="server" Text="Label" ForeColor="Yellow"></asp:Label>
                !!!</td>
    </tr>
    <tr>
        <td style="text-decoration: underline">
        Manage Profile
        </td>
    </tr>
    </table>
    <table style="width: 389px; height: 434px">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblgender" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="style3">
                <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblage" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="style3">
                <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtphone" runat="server" onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"> </asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtphone" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td class="style3">
                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtemail" ForeColor="Yellow"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
      ControlToValidate="txtemail" ValidationGroup="car" ForeColor="Yellow"></asp:RegularExpressionValidator>

            </td>
        </tr>
           <tr>
            <td class="style3">
                <asp:Label ID="Label6" runat="server" Text="Occupation"></asp:Label>
            </td>
            <td>
                 <asp:TextBox ID="txtoccupation" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtoccupation" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" Text="Type of Occupation"></asp:Label>
            </td>
            <td>
               <asp:TextBox ID="txttype" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txttype" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td class="style3">
                <asp:Label ID="Label8" runat="server" Text="Street1"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtst1" runat="server"></asp:TextBox>
            </td>
        </tr>
           <tr>
            <td class="style3">
                <asp:Label ID="Label9" runat="server" Text="Street2"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtst2" runat="server"></asp:TextBox>
            </td>
        </tr>
           <tr>
            <td class="style3">
                <asp:Label ID="Label10" runat="server" Text="City"></asp:Label>
            </td>
            <td>
                 <asp:TextBox ID="txtcity" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtcity" ForeColor="Yellow"></asp:RequiredFieldValidator>

            </td>
        </tr>
           <tr>
            <td class="style3">
                <asp:Label ID="Label11" runat="server" Text="State"></asp:Label>
            </td>
            <td>
               <asp:TextBox ID="txtstate" runat="server" onkeydown="return isString(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtstate" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td class="style3">
                <asp:Label ID="Label12" runat="server" Text="Pincode"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpincode" runat="server"  onkeydown="return isNumeric(event.keyCode);" onpaste="return false;"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" ControlToValidate="txtpincode" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" Text="Update" Font-Bold="True" ValidationGroup="car" 
                    Font-Names="Cambria" onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                    Font-Names="Cambria" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblack" Visible="False" runat="server" Text="Details Updated" 
                    ForeColor="Yellow"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

