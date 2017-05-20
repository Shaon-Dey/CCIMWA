<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCitiesUI.aspx.cs" Inherits="CountryCityInformationManagementWebApp.UI.ViewCitiesUI" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8">
    <title>CCIMS - View Cities</title>
    <link href="../Content/style.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/ico" href="../Image/Globe.ico" />
    <link rel="icon" type="image/ico" href="../Image/Globe.ico" />
    <link rel="apple-touch-icon" type="image/ico" href="../Image/Globe.ico" />
</head>
<body>
    <div class="wholepage">
        <div class="Header">
            <h1>Country City Information Management System</h1>
        </div>

        <div class="Menu">
            <ul class="menuUl">
                <li><a href="HomeUI.aspx">Home</a></li>
                <li><a href="CountryEntryUI.aspx">Country Entry</a></li>
                <li><a href="CityEntryUI.aspx">City Entry</a></li>
                <li><a href="ViewCountriesUI.aspx">View Countries</a></li>
                <li><a class="active" href="ViewCitiesUI.aspx">View Cites</a></li>
            </ul>
        </div>

        <div class="Body">
            <div class="" style="background: rgb(227, 225, 217) none repeat scroll 0% 0%;">
                <header style="width: 1000px; height: 80px;">
                    <div style="float: left; width: 120px; border-top: 4px solid orange;">
                        <h1 style="font-size: 18px; text-align: center;">View Cities </h1>
                    </div>
                    <div class="blank" style="float: left; width: 880px; height: 80px;"></div>
                </header>
                <div style="width: 960px; margin-top: 15px;">

                    <form id="form1" runat="server">
                        <div style="margin-left: 20px; margin-right: 20px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <fieldset style="width: 701px; margin: 40px auto; border-radius: 7px;">
                    <legend style="font-size: 20px;">Search criteria</legend>
                    <span style="font-size: 18px;">

                        <div style="width: 700px;">
                            <div style="width: 200px; float: left;">
                                <asp:RadioButtonList ID="searchRadioButtonList" runat="server" Height="66px">
                                    <asp:ListItem Value="City Name"></asp:ListItem>
                                    <asp:ListItem Value="Country Name"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                            <div style="width: 490px; float: left;">
                                <asp:TextBox runat="server" ID="cityNameSearchTextBox" Height="21px" Width="223px"></asp:TextBox>
                                <br />
                                <asp:DropDownList ID="countryDropDownList" runat="server" Height="25px" Style="margin-bottom: 0px" Width="230px"></asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="font-size: 18px;">
                        <asp:Button runat="server" ID="searchButton" Text="Search" Height="33px" Width="117px" OnClick="searchButton_Click" Style="margin-left: 0px" />
                        <br />
                        <asp:Label runat="server" ID="messageLabel" Style="color: red; font-size: 18px;"></asp:Label>
                        <br />
                    </span>
                                <asp:Label ID="messageLabelGreen" runat="server" Style="color: green;"></asp:Label>
                            </div>
                        </div>
                    </span>
                </fieldset>
                            <div style="overflow: scroll; width: 960px;">
                                <asp:GridView ID="viewCitiesGridView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC"
                                    BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="915px" PageSize="5" AllowPaging="True"
                                    OnPageIndexChanging="viewCitiesGridView_PageIndexChanging">
                                    <Columns>
                                        <asp:TemplateField HeaderText="SL#">
                                            <ItemTemplate>
                                                <%#Container.DataItemIndex+1%>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="City Name">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black" runat="server" Text='<%#Eval("CityName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="About">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black" runat="server" Text='<%#Eval("CityAbout") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="No. Of Dwellers">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black" runat="server" Text='<%#Eval("NoOfDwellers") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Location">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black" runat="server" Text='<%#Eval("Location") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Weather">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black" runat="server" Text='<%#Eval("Weather") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Country">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black" runat="server" Text='<%#Eval("CountryName") %>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="About Country">
                                            <ItemTemplate>
                                                <asp:Label Style="color: Black" runat="server" Text='<%#Eval("CountryAbout") %>'></asp:Label>
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
