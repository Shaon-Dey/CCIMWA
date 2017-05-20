<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CountryEntryUI.aspx.cs" Inherits="CountryCityInformationManagementWebApp.UI.CountryEntryUI" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8">
    <title>CCIMS - Country Entry</title>
    <link href="../Content/style.css" rel="stylesheet" />
    
    <link rel="shortcut icon" type="image/ico" href="../Image/Globe.ico" />
    <link rel="icon" type="image/ico" href="../Image/Globe.ico" />
    <link rel="apple-touch-icon" type="image/ico" href="../Image/Globe.ico" />

    <!-- Include Font Awesome. -->
    <link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <!-- Include Editor style. -->
    <link href="../froala_editor_2.3.3/css/froala_editor.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/froala_style.min.css" rel="stylesheet" />
    <!-- Include Code Mirror style -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css">
    <link href="../froala_editor_2.3.3/css/codemirror.min.css" rel="stylesheet" />
    <!-- Include Editor Plugins style. -->
    <link href="../froala_editor_2.3.3/css/plugins/char_counter.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/char_counter.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/code_view.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/code_view.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/colors.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/colors.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/draggable.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/draggable.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/emoticons.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/emoticons.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/file.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/file.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/fullscreen.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/fullscreen.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/image.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/image.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/image_manager.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/image_manager.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/line_breaker.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/line_breaker.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/quick_insert.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/quick_insert.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/table.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/table.min.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/video.css" rel="stylesheet" />
    <link href="../froala_editor_2.3.3/css/plugins/video.min.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            width: 905px;
        }
    </style>

</head>

<body>
    <div class="wholepage">
        <div class="Header">
            <h1>Country City Information Management System</h1>
        </div>

        <div class="Menu">
            <ul class="menuUl">
                <li><a href="HomeUI.aspx">Home</a></li>
                <li><a class="active" href="CountryEntryUI.aspx">Country Entry</a></li>
                <li><a href="CityEntryUI.aspx">City Entry</a></li>
                <li><a href="ViewCountriesUI.aspx">View Countries</a></li>
                <li><a href="ViewCitiesUI.aspx">View Cites</a></li>
            </ul>
        </div>

        <div class="Body">
            <div class="" style="background: rgb(227, 225, 217) none repeat scroll 0% 0%;">
                <header style="width: 1000px; height: 80px;">
                    <div style="float: left; width: 120px; border-top: 4px solid orange;">
                        <h1 style="font-size: 18px; text-align: center;">Country Entry </h1>
                    </div>
                    <div class="blank" style="float: left; width: 880px; height: 80px; /*background: rgb(255, 255, 255) none repeat scroll 0% 0%; */"></div>
                </header>
                <div style="width: 960px; margin-top: 15px;">
                    <form id="form1" runat="server">
                        <div style="margin-left: 20px; margin-right: 20px;">

                            <table>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" ID="label"> Name:</asp:Label></td>
                                    <td class="auto-style1">
                                        <asp:TextBox runat="server" ID="nameTextBox" Height="27px" Width="223px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server">About: </asp:Label></td>
                                    <td class="auto-style1">

                                        <textarea id="countryAboutEditor" runat="server" name="content"></textarea>

                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td class="auto-style1">
                                        <asp:Button runat="server" ID="saveButton" Text="Save" Height="35px" Width="100px" OnClick="saveButton_Click" />
                                        &nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="cancelButton" Text="Cancel" Height="33px" Width="92px" OnClick="cancelButton_Click" /></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td class="auto-style1">
                                        <asp:Label Style="color: red;" runat="server" ID="messageLabel"></asp:Label>
                                        <br />
                                        <asp:Label Style="color: green;" runat="server" ID="messageLabelGreen"></asp:Label>
                                    </td>
                                </tr>
                            </table>

                            <div style="overflow: scroll; width: 920px;">
                                <asp:GridView ID="countryAboutGridView" runat="server" AutoGenerateColumns="False"
                                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"
                                    AllowPaging="True" PageSize="5"
                                    OnPageIndexChanging="countryAboutGridView_PageIndexChanging" Width="910px" Style="margin-left: 6px">
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
            <h2>Developed by IIUC CODERS</h2>
        </div>

    </div>


    <!-- Include jQuery. -->
    <script src="../Scripts/jquery-3.1.1.min.js"></script>

    <!-- Include JS files. -->

    <script src="../froala_editor_2.3.3/js/froala_editor.min.js"></script>

    <!-- Include Code Mirror. -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>

    <!-- Include Plugins. -->
    <script src="../froala_editor_2.3.3/js/plugins/align.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/char_counter.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/code_beautifier.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/code_view.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/colors.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/draggable.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/emoticons.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/entities.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/file.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/font_family.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/font_size.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/forms.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/fullscreen.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/image.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/image_manager.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/inline_style.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/line_breaker.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/link.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/lists.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/paragraph_format.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/paragraph_style.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/quick_insert.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/quote.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/save.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/table.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/url.min.js"></script>
    <script src="../froala_editor_2.3.3/js/plugins/video.min.js"></script>

    <%--<!-- Include Language file if we want to use it. -->
    <script type="text/javascript" src="../js/languages/ro.js"></script>--%>

    <!-- Initialize the editor. -->
    <script>
        $(function () {
            $('#countryAboutEditor').froalaEditor();
        });
    </script>
</body>

</html>
