<%@ Page Title="" Language="C#" MasterPageFile="~/carmaster.master" AutoEventWireup="true" CodeFile="viewconfirmation.aspx.cs" Inherits="viewconfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 134px;
    }
    .style3
    {
        width: 133px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 725px; height: 243px;">
    <tr>
         <td >
            WELCOME&nbsp;&nbsp;
                <asp:Label ID="lbluser" runat="server" Text="Label" ForeColor="Yellow"></asp:Label>
                !!!</td>
    </tr>
    <tr>
        <td style="text-decoration: underline">
        Confirmed List:
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                Width="736px" onselectedindexchanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="tname" HeaderText="Name" SortExpression="tname" />
                    <asp:BoundField DataField="tage" HeaderText="Age" SortExpression="tage" />
                    <asp:BoundField DataField="tgender" HeaderText="Gender" 
                        SortExpression="tgender" />
                    <asp:BoundField DataField="tphone" HeaderText="Phone No" 
                        SortExpression="tphone">
                    <ItemStyle BackColor="#66CCFF" />
                    </asp:BoundField>
                    <asp:BoundField DataField="temail" HeaderText="Email" SortExpression="temail" />
                    <asp:BoundField DataField="taddress" HeaderText="Address" 
                        SortExpression="taddress" >
                    <ItemStyle Width="170px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="tradate" HeaderText="Date" 
                        SortExpression="tradate" />
                         <asp:BoundField DataField="tlicnum" HeaderText="License No" 
                        SortExpression="tlicnum" >
                    
                    </asp:BoundField>
                    <asp:CommandField SelectText="View Details" ShowSelectButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [tname], [tage], [tgender], [tphone], [temail], [taddress], [tradate], [trafrom], [trato], [tlicnum] FROM [requestdet] WHERE (([touname] = @touname) AND ([status] = @status))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbluser" Name="touname" PropertyName="Text" Type="String" />
                    <asp:Parameter DefaultValue="YES" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/carway.mdb" 
                
                
                SelectCommand="SELECT tname, tage, tgender, tphone, temail, taddress, tradate, trafrom, trato, tlicnum FROM requestdet WHERE (touname = ?) AND (status = 'YES')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lbluser" Name="touname" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>--%>
        </td>
    </tr>
</table>
<asp:Panel ID="Panel1" runat="server" Visible="false" BackColor="#66CCFF" 
    Height="251px" Width="296px">
<table style="height: 230px; width: 220px">
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
</table>
    </asp:Panel>
</asp:Content>

