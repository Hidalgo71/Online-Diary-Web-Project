<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="writeDiary.aspx.cs" Inherits="onlineDiary.writeDiary" %>

<!DOCTYPE html>
<style type="text/css">
    #TextArea1
    {
        height: 261px;
        width: 592px;
    }
    #Text1
    {
        width: 403px;
        height: 26px;
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
                   <asp:Button ID="settingsBTN" runat="server" Text="Settings" style="float:right; font-weight: 700; color: #FFFFFF; background-color: #1c1a19;" Height="32px" Width="135px"/>
        <div style="line-height:8px; padding-left:43px; padding-top:40px">
            

            <asp:TextBox ID="titleTB" placeholder="Title" runat="server" Height="26px" Width="400px"></asp:TextBox>
&nbsp;<input type="date" style="width: 175px; height: 25px; margin-top: 0px" />
            <br />
&nbsp;<br />
            <br />
            <asp:TextBox ID="writeDiaryTB" runat="server" Height="300px" placeholder="What Happened Today?" TextMode="MultiLine" Width="592px"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="closeBTN" runat="server" Text="Close" style="margin-left:415px; background-color:aqua; font-family:sans-serif; color: #0000CC; font-weight: 700;" Height="29px" OnClick="closeBTN_Click"/>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="saveBTN" runat="server" Text="Save and Close" style=" background-color:aqua; font-family:sans-serif; color: #0000CC; font-weight: 700; font-style: italic;" Height="30px" OnClick="saveBTN_Click" />
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
