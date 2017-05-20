<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCountriesUI.aspx.cs" Inherits="CountryCityInformationManagementWebApp.UI.ViewCountriesUI" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="UTF-8">
    <title>CCIMS - View Countries</title>
    <link href="../Content/style.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/ico" href="../Image/Globe.ico" />
    <link rel="icon" type="image/ico" href="../Image/Globe.ico" />
    <link rel="apple-touch-icon" type="image/ico" href="../Image/Globe.ico" />
    <style type="text/css">
        .auto-style1 {
            width: 175px;
        }
    </style>
</head>

<body>

    <div class="wholepage">
        <div class="Header">
            <h1>CCIMS - View Countries</h1>
        </div>

        <div class="Menu">
            <ul class="menuUl">
                <li><a href="HomeUI.aspx">Home</a></li>
                <li><a href="CountryEntryUI.aspx">Country Entry</a></li>
                <li><a href="CityEntryUI.aspx">City Entry</a></li>
                <li><a class="active" href="ViewCountriesUI.aspx">View Countries</a></li>
                <li><a href="ViewCitiesUI.aspx">View Cites</a></li>
            </ul>
        </div>

        <div class="Body">

            <div class="" style="background: rgb(227, 225, 217) none repeat scroll 0% 0%;">
                <header style="width: 1000px; height: 80px;">
                    <div style="float: left; width: 120px; border-top: 4px solid orange;">
                        <h1 style="font-size: 18px; text-align: center;">View Countries </h1>
                    </div>
                    <div class="blank" style="float: left; width: 880px; height: 80px;"></div>
                </header>
                <div style="width: 960px; margin-top: 15px;">

                    <form id="form1" runat="server">
                        <div style="margin-left: 20px; margin-right: 20px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <fieldset style="width: 800px; margin: 40px auto; border-radius: 7px;">
                  <legend style="font-size: 20px;">Search criteria</legend>
                  <span style="font-size: 18px;">
                      <div style="width: 700px;">
                          <div style="float: left;">
                              <table>
                                  <tr>
                                      <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:Label runat="server">Name: </asp:Label>
                                      </td>
                                      <td>
                                          <asp:TextBox runat="server" ID="countrySearchTextBox" Height="21px" Width="245px"></asp:TextBox></td>
                                      <td>
                                          <asp:Button runat="server" ID="searchButton" Text="Search" Height="33px" Width="117px" Style="margin-left: 93px" OnClick="searchButton_Click" /></td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style1"></td>
                                      <td>
                                          <asp:Label runat="server" ID="messageLabel" Style="color: red; font-size: 18px;"></asp:Label></td>
                                      <td></td>
                                  </tr>
                              </table>
                          </div>
                          <br />
                          <br />
                          <br />
                      </div>
                  </span>
              </fieldset>
                            <div style="overflow: scroll; width: 960px;">
                                <asp:GridView ID="viewCountriesGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC"
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="974px" PageSize="5" AllowPaging="True" OnPageIndexChanging="viewCitiesGridView_PageIndexChanging" Style="margin-right: 0px">
                                    <Columns>
                                        <asp:TemplateField HeaderText="SL#">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1%>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Name">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black" runat="server" Text='<%#Eval("CountryName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="About">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black" runat="server" Text='<%#Eval("CountryAbout") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="No. Of Cities">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black; font-size: 24px;" runat="server" Text='<%#Eval("TotalCity") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="No. Of City Dwellers">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black; font-size: 20px;" runat="server" Text='<%#Eval("TotalDwellers") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="White" ForeColor="#000066" />
                                    <HeaderStyle BackColor="#a7a2a1" Font-Bold="True" ForeColor="Black" />
                                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                    <RowStyle ForeColor="#000066" />
                                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                    <SortedDescendingCellStyle BackColor="White" />
                                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                                </asp:GridView>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="footer">
            <h2>Developed by IIUC CODERS </h2>
        </div>
    </div>
</body>
</html>
