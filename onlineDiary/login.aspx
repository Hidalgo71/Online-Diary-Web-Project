﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="onlineDiary.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    <title></title>
</head>
    <header align="center">
    <div id="divheader">
        <img src="photos/sitelogosu.png" width="75" height="75" />
    </div>
</header>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="line-height:8px; padding-left:43px; padding-top:40px">
            <p style="font-size:35px;font-weight:bold;font-family:'Times New Roman', Times, serif">LOGIN</p>
            <br />
            <asp:Label ID="idLBL" runat="server" Text="Username"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="idTB" runat="server" OnTextChanged="idTB_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="passLBL" runat="server" Text="Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="passTB" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
            <a href="forgotPass.aspx" style="color:cornflowerblue">Forgot Password</a>

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
