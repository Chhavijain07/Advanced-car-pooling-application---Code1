<%@ Page Title="" Language="C#" MasterPageFile="~/carmaster.master" AutoEventWireup="true" CodeFile="createtravel.aspx.cs" Inherits="createtravel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 400px; width: 343px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Vehicle Make"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtvehiclemake" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" 
                    ControlToValidate="txtvehiclemake" ForeColor="Yellow"></asp:RequiredFieldValidator>
            
            </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Vehicle Model"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtvehiclemodel" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" 
                    ControlToValidate="txtvehiclemodel" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="License Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtlicnum" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" 
                    ControlToValidate="txtlicnum" ForeColor="Yellow"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Fuel Type"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="radiopetrol" runat="server" Text="Petrol" GroupName="fuel" 
                    Checked="true" />
                <asp:RadioButton ID="radipdiesel" runat="server" Text="Diesel" 
                    GroupName="fuel" />
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Seater"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="radiofour" runat="server" Text="4" GroupName="seater" 
                    Checked="true" />
                <asp:RadioButton ID="radioeight" runat="server" Text="8" GroupName="seater" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Members to travel"></asp:Label>
            </td>
            <td>
                <asp:RadioButton ID="radiom1" runat="server" Text="1" GroupName="members" 
                    Checked="true" />
                <asp:RadioButton ID="radiom2" runat="server" Text="2" 
                    GroupName="members" />
                <asp:RadioButton ID="radiom3" runat="server" Text="3" 
                    GroupName="members" />
                <asp:RadioButton ID="radiom4" runat="server" Text="4" 
                    GroupName="members" />
                <asp:RadioButton ID="radiom5" runat="server" Text="5" 
                    GroupName="members" />
                <asp:RadioButton ID="radiom6" runat="server" Text="6" 
                    GroupName="members" />
                <asp:RadioButton ID="radiom7" runat="server" Text="7" 
                    GroupName="members" />
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="From"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropfrom" runat="server" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Small" DataSourceID="SqlDataSource1" DataTextField="placename" DataValueField="placename">
                  
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [placename] FROM [placedet]"></asp:SqlDataSource>
                
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Via"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropvia" runat="server" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Small" DataSourceID="SqlDataSource1" DataTextField="placename" DataValueField="placename">
                   
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="To"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropto" runat="server" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Small" DataSourceID="SqlDataSource1" DataTextField="placename" DataValueField="placename">
                   
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdate" runat="server" onfocus="showCalendarControl(this);"></asp:TextBox>
                 
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Time"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Text="From"></asp:Label>
                &nbsp;<asp:DropDownList ID="droptimefrom" runat="server" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Small">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="dropamfrom" runat="server" Font-Bold="True" 
                    Font-Names="Cambria">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Label ID="Label11" runat="server" Text="To"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="droptimeto" runat="server" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Small">
                     <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                  <asp:DropDownList ID="dropamto" runat="server" Font-Bold="True" 
                    Font-Names="Cambria">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Create" Font-Bold="True" 
                    Font-Names="Cambria" onclick="Button1_Click" ValidationGroup="car" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                    Font-Names="Cambria" />
                <asp:Label ID="lblack" runat="server" ForeColor="Yellow" Text="Travel Created !!!" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

