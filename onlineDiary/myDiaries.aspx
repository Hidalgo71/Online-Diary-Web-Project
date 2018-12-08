<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myDiaries.aspx.cs" Inherits="onlineDiary.myDiaries" %>

<!DOCTYPE html>
<header align="center">
    <div id="divheader">
        <img src="photos/sitelogosu.png" width="75" height="75" />

        <!--<img src="C:/Users/Yekta/Desktop/webproje/İÇERİK/sitelogosu.png" width="75" height="75">
        <img src="App_Data/sitelogosu.png" />-->
    </div>
</header>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet1.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3 style="padding-left:70px;padding-top:30px">
        <asp:Label ID="Label1" runat="server" Text="NOTE LIST" style="color: #FF0006; text-align: left"></asp:Label>
        </h3>
        <p style="padding-left:70px">
            My Notes
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>

    </form>
    <p>
        &nbsp;</p>
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
