<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="writeDiary.aspx.cs" Inherits="onlineDiary.writeDiary" %>

<!DOCTYPE html>
<style type="text/css">
    #TextArea1 {
        height: 261px;
        width: 592px;
    }
    #Text1 {
        width: 403px;
        height: 26px;
    }
</style>
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
        <div style="line-height:8px; padding-left:43px; padding-top:40px">
            

            <input id="Text1" placeholder="Title" type="text" />
            <input type="date" style="width: 175px; height: 25px; margin-top: 0px" />
            <br />
&nbsp;<br />
            <br />
            <textarea id="TextArea1" placeholder="What Happened Today?" cols="20" name="S1" rows="1"></textarea><br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="closeBTN" runat="server" Text="Close" style="margin-left:415px; background-color:aqua; font-family:sans-serif; color: #0000CC; font-weight: 700;" Height="29px"/>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="saveBTN" runat="server" Text="Save and Close" style=" background-color:aqua; font-family:sans-serif; color: #0000CC; font-weight: 700; font-style: italic;" Height="30px" />
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
