<%@ Page Title="" Language="C#" MasterPageFile="~/carmaster.master" AutoEventWireup="true" CodeFile="managetravel.aspx.cs" Inherits="managetravel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
    <tr>
         <td >
            WELCOME&nbsp;&nbsp;
                <asp:Label ID="lbluser" runat="server" Text="Label" ForeColor="Yellow"></asp:Label>
                !!!</td>
    </tr>
  </table>
  <table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" 
                ForeColor="#333333"  Width="659px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="uname" HeaderText="Username" 
                        SortExpression="uname" />
                    <asp:BoundField DataField="tdate" HeaderText="Date" SortExpression="tdate" />
                    <asp:BoundField DataField="tfromtime" HeaderText="Fromtime" 
                        SortExpression="tfromtime" />
                    <asp:BoundField DataField="ttotime" HeaderText="Totime" 
                        SortExpression="ttotime" />
                    <asp:BoundField DataField="tfrom" HeaderText="From" SortExpression="tfrom" />
                    <asp:BoundField DataField="tvia" HeaderText="Via" SortExpression="tvia" />
                    <asp:BoundField DataField="tto" HeaderText="To" SortExpression="tto" />
                    <asp:CommandField SelectText="Delete" ShowSelectButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [tdate], [tfromtime], [ttotime], [tfrom], [tvia], [tto], [uname] FROM [traveldet] WHERE ([uname] = @uname)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbluser" Name="uname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
  </table>
</asp:Content>

