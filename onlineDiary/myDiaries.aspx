<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myDiaries.aspx.cs" Inherits="onlineDiary.myDiaries" %>

<!DOCTYPE html>
<style type="text/css">
    .auto-style1 {
        font-size: x-large;
    }
    .newStyle1 {
        font-family: "Comic Sans MS";
    }
    #TextArea1 {
        height: 146px;
        width: 566px;
    }
    #searchDiaryTB {
        height: 125px;
        width: 561px;
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
                   <asp:Button ID="settingsBTN" runat="server" Text="Settings" style="float:right; font-weight: 700; color: #FFFFFF; background-color: #1c1a19;" Height="32px" Width="135px" OnClick="settingsBTN_Click"/>
        <h2 style="padding-left:550px;padding-top:30px">
        <asp:Label ID="Label1" runat="server" Text="NOTE LIST" style="color: #FF0006; "></asp:Label>
        </h2>
        <p style="padding-left:70px" >
            <p class="auto-style1"><span class="newStyle1">My Notes</span></p>
            <asp:TextBox ID="TextBox1" runat="server" style="padding-right:100px; margin-top: 0px; margin-left: 0px; text-align: right;" Width="217px" Height="21px"></asp:TextBox>
            <asp:Button ID="searchBTN" runat="server" Text="Search" Width="130px" style="color: #FFFFFF; font-weight: 700; background-color: #003366" Height="32px" OnClick="searchBTN_Click" />
                
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" style="font-weight: 700; color: #FFFFFF; background-color: #666699" Text="New Notes" Width="105px" Height="34px" OnClick="Button2_Click" />
                
        </p>
        <div>

            <br />
            <asp:Label ID="singleDiaryLB" runat="server" Text="Label"></asp:Label>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" RepeatColumns="1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                <AlternatingItemStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                <ItemTemplate>
                    title:
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                    <br />
                    diaries:
                    <asp:Label ID="diariesLabel" runat="server" Text='<%# Eval("diaries") %>' />
                    <br />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineDiaryDBConnectionString %>" SelectCommand="SELECT [title], [diaries] FROM [diariesTBL]"></asp:SqlDataSource>

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