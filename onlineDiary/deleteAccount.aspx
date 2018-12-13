<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteAccount.aspx.cs" Inherits="onlineDiary.deleteAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #003366;
        }
    </style>
</head>
    <header align="center">
    <div id="divheader">
        <img src="photos/sitelogosu.png" width="75" height="75" />

    </div>
</header>
<body>
    <form id="form1" runat="server">
        <div>
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
                    <th><asp:Button ID="mailChangeBTN" runat="server" Text="Email                       >" font-family="sans-serif" Width="158px" Height="25px" BackColor="#a7a0a0ab" OnClick="mailChangeBTN_Click" /> </th>
                    <th class="auto-style1">DELETE USER ACCOUNT</th>
                </tr>
                
                
                <tr>
                    <th> <asp:Button ID="passBTN" runat="server" Text="Password                 >" font-family="sans-serif" Width="158px" Height="25px" BackColor="#a7a0a0ab" OnClick="passBTN_Click" /></th>
                    <td rowspan="2">Do you really want to delete your account ?</td>
                </tr>
                <tr>
                    <th><asp:Button ID="deleteBTN" runat="server" Text="Delete Account         >" font-family="sans-serif" Width="158px" Height="25px" BackColor="#a7a0a0ab" /></th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Enter Your Nickname"></asp:Label>
                        <td>

                            <asp:TextBox ID="deleteTB" runat="server" style="text-align: right"></asp:TextBox>

                        </td>
                    </td>
                </tr>

            </table>
            <br />
            <br />
            <asp:Button ID="DeleteAccBTN" runat="server" Text="Delete My Account" style="margin-left:260px; background-color:red; font-family:sans-serif" OnClick="DeleteAccBTN_Click"/>
        </div>
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