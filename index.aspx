<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="car.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 78px;
        }
        .auto-style1 {
            width: 134px;
        }
        .auto-style2 {
            width: 98px;
        }
        .auto-style4 {
            width: 518px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="height: 70px; width: 1340px" bgcolor="#333399">
            <tr>
                <td class="style1">
                    <asp:Image ID="Image1" runat="server" Height="69px" 
                        ImageUrl="~/image/car logo.png" Width="82px" />
                </td>
                <td style="font-size: x-large; color: #FFFFFF;">
                    ADVANCED CAR POOLING APPLICATION</td>
            </tr>
        </table>
        <table style="height: 18px; width: 1340px" bgcolor="Gray">
            <tr>
                <td>
                
                </td>
            </tr>
        </table>

        <br />

        <table style="width: 1323px; height: 376px;">
            <tr>
                <td>

                   <asp:Image ID="Image3" runat="server" Height="338px" ImageUrl="~/image/carpooling.jpg" Width="491px" />
        
       
         </td>
                <td class="auto-style4" valign="top">
                    <br />
                    <br />
                    <table style="height: 196px; width: 269px">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                     ErrorMessage="*" ControlToValidate="txtusername" ValidationGroup="car" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                     ErrorMessage="*" ControlToValidate="txtpassword" ValidationGroup="car" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" 
                        Font-Names="Cambria" onclick="Button1_Click" ValidationGroup="car" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" 
                        Font-Names="Cambria" />
           
           
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblack" Visible="False" runat="server" Text="Invalid User!!!" 
                        ForeColor="Red"></asp:Label>
                </td>
                <td class="auto-style1">
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/usersignup.aspx">Signup</asp:HyperLink>
                </td>
            </tr>
        </table>
                </td>
                <td>
                    <table style="height: 164px; width: 509px">
                        <tr>
                            <td valign="middle">
                                <table style="height: 104px; width: 327px" bgcolor="#CCCCCC">
                        <tr>
                            <td>
                                Create Places to Travel
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Place Name"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtplace" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                     ErrorMessage="*" ControlToValidate="txtplace" ValidationGroup="carr" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Create" Font-Bold="True" Font-Names="Cambria" OnClick="Button3_Click" ValidationGroup="carr" />
                            </td>
                        </tr>
                    </table>
                            </td>
                            <td valign="top">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="169px">
                                    <AlternatingRowStyle BackColor="#DCDCDC" />
                                    <Columns>
                                        <asp:BoundField DataField="placename" HeaderText="Available cities" SortExpression="placename" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [placename] FROM [placedet]"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                    
                    <asp:Image ID="Image2" runat="server" Height="247px" ImageUrl="~/image/car hire.png" Width="452px" />
                </td>
            </tr>
        </table>
     
    </div>
    </form>
</body>
</html>
