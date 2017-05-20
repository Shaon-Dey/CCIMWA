<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeUI.aspx.cs" Inherits="CountryCityInformationManagementWebApp.UI.HomeUI" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>CCIMS - Home</title>
    <link href="../Content/style.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/ico" href="../Image/Globe.ico" />
    <link rel="icon" type="image/ico" href="../Image/Globe.ico" />
    <link rel="apple-touch-icon" type="image/ico" href="../Image/Globe.ico" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wholepage">
            <div class="Header">
                <h1>Country City Information Management System</h1>
            </div>

            <div class="Menu">
                <ul class="menuUl">
                    <li><a class="active" href="HomeUI.aspx">Home</a></li>
                    <li><a href="CountryEntryUI.aspx">Country Entry</a></li>
                    <li><a href="CityEntryUI.aspx">City Entry</a></li>
                    <li><a href="ViewCountriesUI.aspx">View Countries</a></li>
                    <li><a href="ViewCitiesUI.aspx">View Cites</a></li>
                </ul>
            </div>

            <div class="Body">
                <table style="border-style: solid; border-color: white; border-width: 2px; margin: 50px auto; border-radius: 10px; background: #3B5998; width: 750px;">
                    <tr>
                        <td class="auto-style1 td1">Project Number</td>
                        <td class="td2">:   Project-01</td>
                    </tr>
                    <tr>
                        <td class="auto-style1 td1">Project Name</td>
                        <td class="td2">:   Country City Information Management System</td>
                    </tr>
                    <tr>
                        <td class="auto-style1 td1 ">Group Name</td>
                        <td class="td2">:   IIUC CODERS</td>
                    </tr>
                    <tr>
                        <td class="auto-style1 td1 ">Member Name</td>
                        <td class="td2">:   121212 - Kazi Shoaib
                                        <br />
                            :   122481 - Tonmoy Rudra
                                        <br />
                            :   128797 - Shaon Dey
                                        <br />
                            :   129871 - Talat Mahmud Sourave</td>
                    </tr>
                    <tr>
                        <td class="auto-style1 td1">Batch Number</td>
                        <td class="td2">:   Dot NET - 20</td>
                    </tr>

                </table>
                <p style="font-weight: bold; text-align: center; background: #6EA93B; width: 428px; margin: 50px auto; border-radius: 10px; font-size: 18px;">
                    Web App Development - Dot Net<br />
                    Skill for Employment Investment Program<br />
                    Batch - 20<br />
                    BASIS Institute of Technology & Management (BITM)
                </p>

            </div>

            <div class="footer">
                <h2>Developed by: IIUC CODERS </h2>
            </div>

        </div>
    </form>
</body>
</html>
