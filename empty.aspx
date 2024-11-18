<%@ Page Title="" Language="C#" MasterPageFile="~/carmaster.master" AutoEventWireup="true" CodeFile="empty.aspx.cs" Inherits="empty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 57px;
        }
        .style3
        {
            width: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 629px">
    <tr>
         <td align="left">
            WELCOME&nbsp;&nbsp;
                <asp:Label ID="lbluser" runat="server" Text="Label" ForeColor="Yellow"></asp:Label>
                !!!</td>
    </tr>
    <tr>
        <td style="text-decoration: underline">
        Requested List:
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                Width="577px" onselectedindexchanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="fromuname" HeaderText="Name" SortExpression="fromuname" />
                    <asp:BoundField DataField="tage" HeaderText="Age" SortExpression="tage" />
                    <asp:BoundField DataField="tgender" HeaderText="Gender" 
                        SortExpression="tgender" />
                    <asp:BoundField DataField="toccu" HeaderText="Occupation" 
                        SortExpression="toccu" />
                    <asp:BoundField DataField="typeoccu" HeaderText="Type " 
                        SortExpression="typeoccu" />
                    <asp:CommandField SelectText="View Seeker" ShowSelectButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [fromuname], [vmake], [vmodel], [tradate], [trafrom], [trato], [tratimefrom], [tratimeto], [tname], [tage], [tgender], [toccu], [typeoccu] FROM [requestdet] WHERE (([touname] = @touname) AND ([status] = @status))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbluser" Name="touname" PropertyName="Text" Type="String" />
                    <asp:Parameter DefaultValue="NO" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
    <asp:Panel ID="Panel1" runat="server" Visible="false" Height="277px" 
        Width="244px">
        <table style="height: 265px; width: 228px">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Requested Person"></asp:Label>
                </td>
                  <td class="style2">
                    <asp:Label ID="lblreq" runat="server" Text="..........." ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Vehicle Details"></asp:Label>
                </td>
                  <td class="style2">
                    <asp:Label ID="lblvehicledetails" runat="server" Text="..........."></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Fuel Type"></asp:Label>
                </td>
                  <td class="style2">
                    <asp:Label ID="lblfueltype" runat="server" Text="..........."></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Seater"></asp:Label>
                </td>
                  <td class="style2">
                    <asp:Label ID="lblseater" runat="server" Text="..........."></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Travel From"></asp:Label>
                </td>
                  <td class="style2">
                    <asp:Label ID="lbltravelfrom" runat="server" Text="..........."></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style3">
                    <asp:Label ID="Label6" runat="server" Text="Travel Via"></asp:Label>
                </td>
                  <td class="style2">
                    <asp:Label ID="lbltravelvia" runat="server" Text="..........."></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style3">
                    <asp:Label ID="Label7" runat="server" Text="Travel To"></asp:Label>
                </td>
                  <td class="style2">
                    <asp:Label ID="lbltravelto" runat="server" Text="..........."></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style3">
                    <asp:Label ID="Label8" runat="server" Text="Travel Date"></asp:Label>
                </td>
                  <td class="style2">
                    <asp:Label ID="lbltraveldate" runat="server" Text="..........."></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" Text="Travel Time"></asp:Label>
                </td>
                  <td class="style2">
                    <asp:Label ID="lbltraveltime" runat="server" Text="..........."></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Confirm Travel" Font-Bold="True" 
                        Font-Names="Cambria" onclick="Button1_Click" />     
                </td>
                  <td class="style2">
                  <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                          Font-Names="Cambria" onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblack" Visible="False" runat="server" 
                    Text="Travel Confirmed!!!" ForeColor="Yellow"></asp:Label>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                    Visible="False" Width="539px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="uname" HeaderText="Username" 
                            SortExpression="uname" />
                        <asp:BoundField DataField="comment" HeaderText="Comment" 
                            SortExpression="comment" />
                        <asp:BoundField DataField="cdate" HeaderText="Date" SortExpression="cdate" />
                        <asp:BoundField DataField="ctime" HeaderText="Time" SortExpression="ctime">
                        <ItemStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="crate" HeaderText="Rating" SortExpression="crate" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [comment], [cdate], [ctime], [crate] FROM [commentdet] WHERE ([cname] = @cname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblreq" Name="cname" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

