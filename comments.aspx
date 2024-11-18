<%@ Page Title="" Language="C#" MasterPageFile="~/carmaster.master" AutoEventWireup="true" CodeFile="comments.aspx.cs" Inherits="comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 379px; height: 244px;">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblusername" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
       <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Search User"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="uname" DataValueField="uname" 
                Font-Bold="True" Font-Names="Cambria">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname] FROM [signupdet] WHERE ([uname] &lt;&gt; @uname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblusername" Name="uname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
         
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Rate User"></asp:Label>
        </td>
        <td>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="1" GroupName="rate" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="2" GroupName="rate" />
            <asp:RadioButton ID="RadioButton3" runat="server" Text="3" GroupName="rate" />
            <asp:RadioButton ID="RadioButton4" runat="server" Text="4" GroupName="rate" />
            <asp:RadioButton ID="RadioButton5" runat="server" Text="5" GroupName="rate" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Comment"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtcomments" runat="server" TextMode="MultiLine" Height="86px" 
                Width="182px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="*" ValidationGroup="car" 
                    ControlToValidate="txtcomments" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Post Comment" Font-Bold="True" ValidationGroup="car" 
                Font-Names="Cambria" onclick="Button1_Click" />
        </td>
         <td>
            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                 Font-Names="Cambria" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblack" Visible="False" runat="server" Text="Comments Posted!!!" 
                ForeColor="Yellow"></asp:Label>
        </td>
    </tr>
</table>
<%--<table>
     <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Search User"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="AccessDataSource1" DataTextField="uname" DataValueField="uname" 
                Font-Bold="True" Font-Names="Cambria">
            </asp:DropDownList>
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                DataFile="~/App_Data/carway.mdb" 
                SelectCommand="SELECT [uname] FROM [signupdet] WHERE ([uname] &lt;&gt; ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblusername" Name="uname" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="Button3" runat="server" Text="View Comments" Font-Bold="True" 
                Font-Names="Cambria" onclick="Button3_Click" />
        </td>
        <td>
            <asp:Button ID="Button4" runat="server" Text="Cancel" Font-Bold="True" 
                Font-Names="Cambria" />
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="AccessDataSource3" ForeColor="#333333" 
                Visible="False" Width="367px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="uname" HeaderText="Name" SortExpression="uname" />
                    <asp:BoundField DataField="comment" HeaderText="Comment" 
                        SortExpression="comment" />
                    <asp:BoundField DataField="cdate" HeaderText="Comment date" 
                        SortExpression="cdate" />
                    <asp:BoundField DataField="ctime" HeaderText="Comment time" 
                        SortExpression="ctime" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
                DataFile="~/App_Data/carway.mdb" 
                SelectCommand="SELECT [comment], [cdate], [ctime], [uname] FROM [commentdet] WHERE ([cname] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="cname" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </td>
    </tr>
</table>--%>
</asp:Content>

