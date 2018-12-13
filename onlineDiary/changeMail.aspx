<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changeMail.aspx.cs" Inherits="onlineDiary.changeMail" %>

<!DOCTYPE html>
<style type="text/css">
    .auto-style1 {
        color: #003366;
    }
</style>
<header align="center">
    <div id="divheader">
        <img src="photos/sitelogosu.png" width="75" height="75" />


    </div>
</header>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="/*line-height: 8px;*/ padding-left: 90px; padding-top: 80px; line-height:40px">
            <table>
                <tr>
                    <th><asp:Button ID="mailChangeBTN" runat="server" Text="Email                       >" font-family="sans-serif" Width="158px" Height="25px" BackColor="#a7a0a0ab" /> </th>
                    <th style="color:red; padding:10px">
                        <span class="auto-style1">
                        <strong>CHANGE MAIL ADRESS</strong></span>

                    </th>
                </tr>
                
                
                <tr>
                    <th> <asp:Button ID="passBTN" runat="server" Text="Password                 >" font-family="sans-serif" Width="158px" Height="25px" BackColor="#a7a0a0ab" OnClick="passBTN_Click" /></th>
                    <td rowspan="2">
                        <asp:TextBox ID="nicknameTB" runat="server" Width="200px"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="changeMailTB" runat="server" Width="200px" style="text-align: center"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th><asp:Button ID="deleteBTN" runat="server" Text="Delete Account         >" font-family="sans-serif" Width="158px" Height="25px" BackColor="#a7a0a0ab" OnClick="deleteBTN_Click" /></th>
                </tr>
                <tr>
                    <td rowspan="2">

                    </td>
                    <td style="padding-left:120px">

                        <asp:Button ID="changeMailBTN" runat="server" style="text-align: right;color:ghostwhite; font-weight: 700; background-color: #003366;" Text="SEND MAIL" OnClick="changeMailBTN_Click1" />

                    </td>
                </tr>

            </table>



            <br />
&nbsp;<br />
            <br />


        </div>
    </form>
    <div id="footer">

        <a href="http://www.google.com">
            <img src="photos/googlelogo.png" width="40" height="40" margin="10" /></a>

        <a href="http://www.twitter.com">
            <img src="photos/twitterlogo.png" width="45" height="45" /></a>

        <a href="http://www.facebook.com">
            <img src="photos/facebooklogo.png" width="40" height="40" /></a>

    </div>
</body>
</html>
