<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainPage.aspx.cs" Inherits="onlineDiary.mainPage" %>

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
                        <div align="center">
                <h1>The safest place for your thoughts </h1>
                <h4>Keep a private and free online diary </h4>

                <div id="box">

                    <div id="box1">
                        <img src="photos/box1.png" width="130" height="100" />

                        <h3>Keep an Online Journal</h3>
                        <span class="kutuicerik">You want to keep your thoughts in a place where no one can find them? Or capture great ideas so they do not get lost? The our online diary site offers you a safe place for your very personal topics.</span>
                    </div>
                    <div id="box2">
                        <img src="photos/box3.png" width="130" height="100" />

                        <h3>Secret and Private</h3>
                        <span class="kutuicerik">The use of our site is private only. There is no feature to make entries publicly viewable. This ensures that your secret diary remains safe from prying eyes. Just like in a good old paper diary</span>
                    </div>
                    <div id="box3">
                        <img src="photos/box2.png" width="130" height="100" />
                        <h3>Secure and Encrypted</h3>
                        <span class="kutuicerik">To guarantee you ultimate security, our site a comprehensive security concept. Client-side encryption, AES, SSL – find out more about security.</span>
                    </div>
                    <div id="temizleyici"></div>

                </div>
                <div id="loginArea">
                    <h2><font color="DarkSlateGray">Start Writing Something Now</font></h2>
                    <h4><font color="DarkSlateGray">Sing Up Free !</font></h4>
                    <div>

                        <asp:Button ID="loginBTN" runat="server" Text="LOGIN" Width="270px" Height="40px" BackColor="yellowgreen" font-family="sans-serif" Font-Size="large" color="beige" font-weight="800" BorderColor="Navy" OnClick="loginBTN_Click1" />

                        <br />
                        <br />
                        <asp:Button ID="signBTN" runat="server" Text="SIGN UP" Width="270px" Height="40px" BackColor="yellowgreen" font-family="sans-serif" Font-Size="large" color="beige" font-weight="800" BorderColor="Navy" />
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
