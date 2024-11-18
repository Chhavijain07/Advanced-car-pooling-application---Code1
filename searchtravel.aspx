<%@ Page Title="" Language="C#" MasterPageFile="~/carmaster.master" AutoEventWireup="true" CodeFile="searchtravel.aspx.cs" Inherits="searchtravel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 130px;
    }
        .style3
        {
            width: 147px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 29px; width: 509px">
        <tr>
            <td class="style3">
            SEARCH TRAVEL:
            </td>
       
            <td align="left">
            WELCOME
                <asp:Label ID="lbluser" runat="server" Text="Label" ForeColor="Yellow"></asp:Label>
                !!!</td>
        </tr>
    </table>
    <table style="height: 93px; width: 209px">
    <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="From"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropfrom" runat="server" DataSourceID="SqlDataSource1" DataTextField="placename" DataValueField="placename" Font-Bold="True" Font-Names="Cambria"></asp:DropDownList>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [placename] FROM [placedet]"></asp:SqlDataSource>
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="To"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropto" runat="server" Font-Bold="True" 
                    Font-Names="Cambria" Font-Size="Small" DataSourceID="SqlDataSource1" DataTextField="placename" DataValueField="placename">
               
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Search" Font-Bold="True" 
                    Font-Names="Cambria" onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
</table>
<table>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                Visible="False" Width="530px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                      <asp:BoundField DataField="uname" HeaderText="Username" 
                        SortExpression="uname" />
                    <asp:BoundField DataField="tgender" HeaderText="Gender" 
                          SortExpression="tgender" />
                    <asp:BoundField DataField="tage" HeaderText="Age" 
                        SortExpression="tage" />
                    <asp:BoundField DataField="tdate" HeaderText="Date" SortExpression="tdate" />
                    <asp:BoundField DataField="tfromtime" HeaderText="From Time" 
                        SortExpression="tfromtime" />
                    <asp:BoundField DataField="ttotime" HeaderText="To Time" 
                        SortExpression="ttotime" />
                      <asp:CommandField ShowSelectButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [uname], [tgender], [tage], [tdate], [tfromtime], [ttotime] FROM [traveldet] WHERE (([tfrom] = @tfrom) AND ([tto] = @tto) AND ([uname] &lt;&gt; @uname) AND ([tcnt] &lt;&gt; @tcnt))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropfrom" Name="tfrom" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="dropto" Name="tto" PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="lbluser" Name="uname" PropertyName="Text" Type="String" />
                    <asp:Parameter DefaultValue="0" Name="tcnt" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <%--<asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/App_Data/carway.mdb" 
                
                
                
                
                SelectCommand="SELECT [uname], [tgender], [tage], [tdate], [tfromtime], [ttotime] FROM [traveldet] WHERE (([tfrom] = ?) AND ([tto] = ?) AND ([uname] &lt;&gt; ?) AND ([tcnt]&gt;0))" OnSelecting="AccessDataSource1_Selecting">
                <SelectParameters>
                    <asp:ControlParameter ControlID="dropfrom" Name="tfrom" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="dropto" Name="tto" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="lbluser" Name="uname" PropertyName="Text" 
                        Type="String" />

                </SelectParameters>
            </asp:AccessDataSource>--%>
        </td>
    </tr>
</table>
    <asp:Panel ID="Panel1" runat="server" Height="289px" Visible="False" 
        Width="421px">
        <table style="height: 287px; width: 238px">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="usern" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
             
              <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Occupation"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbloccupation" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Type of Occupation"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbloccutype" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Vehicle Make"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblvehiclemake" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Vehicle Model"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblvehiclemodel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Fuel Type"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblfueltype" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Seater"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblseater" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="From"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblfrom" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Via"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblvia" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="To"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblto" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Travel Date"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbltraveldate" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="lbllicnum" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Send Request" Font-Bold="True" 
                        Font-Names="Cambria" onclick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Cancel" Font-Bold="True" 
                        Font-Names="Cambria" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <table>
        <tr>
            <td>
                <asp:Label ID="lblack" Visible="False" runat="server" 
                    Text="Request Sent Successfully!!!" ForeColor="Yellow"></asp:Label>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" 
                    Width="529px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="uname" HeaderText="Username" 
                            SortExpression="uname" />
                        <asp:BoundField DataField="comment" HeaderText="Comment" 
                            SortExpression="comment" />
                        <asp:BoundField DataField="cdate" HeaderText="Date" SortExpression="cdate" />
                        <asp:BoundField DataField="ctime" HeaderText="Time" SortExpression="ctime" >
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [comment], [cdate], [ctime], [crate], [uname] FROM [commentdet] WHERE ([cname] = @cname)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="usern" Name="cname" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <%--<asp:AccessDataSource ID="AccessDataSource2" runat="server" 
                    DataFile="~/App_Data/carway.mdb" 
                    
                    SelectCommand="SELECT [comment], [cdate], [ctime], [crate], [uname] FROM [commentdet] WHERE ([cname] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="usern" Name="cname" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:AccessDataSource>--%>
            </td>
        </tr>
    </table>
    <table>
         <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Gender" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblgender" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Age" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblage" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
              <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Time" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblfromtime" runat="server" Text="Label" Visible="False"></asp:Label>
                    &nbsp;<asp:Label ID="lbltotime" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
    </table>
</asp:Content>

