<%@ Page Title="" Language="C#" MasterPageFile="~/carmaster.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 171px; height: 58px;">
    <tr>
         <td >
            WELCOME&nbsp;&nbsp;
                <asp:Label ID="lbluser" runat="server" Text="Label" ForeColor="Yellow"></asp:Label>
                !!!</td>
    </tr>
    <tr>
        <td style="text-decoration: underline">
        Change Password
        </td>
    </tr>
    </table>
    <table style="height: 197px; width: 467px;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtold" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" 
                    ControlToValidate="txtold" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" 
                    ControlToValidate="txtnew" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtretype" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" 
                    ControlToValidate="txtretype" ForeColor="Yellow"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="txtretype" ControlToCompare="txtnew"
                ValidationGroup="car" ErrorMessage="Password Mismatch" ForeColor="Yellow"></asp:CompareValidator>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Change Password" Font-Bold="True" ValidationGroup="car" 
                    Font-Names="Cambria" onclick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                    Font-Names="Cambria" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblack" runat="server" Visible="False" Text="Label" 
                    ForeColor="Yellow"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

