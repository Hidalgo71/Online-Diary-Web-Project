<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changePassword.aspx.cs" Inherits="onlineDiary.changePassword" %>

<!DOCTYPE html>
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
        <div style="line-height: 8px; padding-left: 43px; padding-top: 40px">





            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <table>
                <tr>
                    <th><asp:Button ID="mailChangeBTN" runat="server" Text="Email                       >" font-family="sans-serif" Width="158px" Height="25px" BackColor="#a7a0a0ab" /> </th>
                    <th style="color:red; padding:10px">
                        <strong style="color: #003366">CHANGE PASSWORD</strong></th>
                </tr>
                
                
                <tr>
                    <th> <asp:Button ID="passBTN" runat="server" Text="Password                 >" font-family="sans-serif" Width="158px" Height="25px" BackColor="#a7a0a0ab" /></th>
                    <td rowspan="2">
                        <asp:Label ID="Label1" runat="server" Text="New Password"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px" style="text-align: center"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th><asp:Button ID="deleteBTN" runat="server" Text="Delete Account         >" font-family="sans-serif" Width="158px" Height="25px" BackColor="#a7a0a0ab" /></th>
                </tr>
                <tr>
                    <td rowspan="2">

                    </td>
                    <td style="padding-left:120px">

                        <asp:Button ID="changeMailBTN" runat="server" style="text-align: right;color:ghostwhite; background-color: #003366; font-weight: 700;" Text="CONFIRM" OnClick="changeMailBTN_Click" />

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
