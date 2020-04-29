<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PageTourism.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title> Gallery </title>
    <link href="css/contact.css" rel="stylesheet" />
    <script src="js/contact.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body style="background-image:url('<%=image.backgroundImg %>')">
    <div id="main">
        <nav>
            <ul>
                <li><a href="Home.aspx"><%=menu.About%></a></li>
                <li><a href="Voyages.aspx"><%=menu.Pages%></a></li>
                <li><a href="Gallery.aspx"><%=menu.Gallery%></a></li>
                <li><a href="Contact.aspx"><%=menu.Blog%></a></li>
                <li><a href="Gallery.aspx"><%=menu.Contact%></a></li>
            </ul>
        </nav>

        <div id="titleMenu">
            <span><%=titlemenu.Title%></span>
        </div>

        <div class="container">
            <div style="text-align: center">
                <h2><%=contact.text1 %></h2>
                <p><%=contact.text2 %> </p>
            </div>
            <div class="row">
                <div class="column">
                    <p style="text-decoration: underline;"><%=contact.text3 %> </p>
                    <p><%=contact.text4 %> </p>
                    <br/>
                    <p style="text-decoration: underline;"><%=contact.text5 %> </p>
                    <p><%=contact.text6 %> </p>
                    <p><%=contact.text7 %> </p>
                    <br />
                    <p style="text-decoration: underline;"><%=contact.text8 %> </p>
                    <p><%=contact.text9 %> </p>
                    <p><%=contact.text10 %> </p>
                </div>
                <div class="column">
                    <form id="form1" runat="server">

                        <div>

                            <asp:TextBox ID="TxtTo" runat="server">to</asp:TextBox>

                            <asp:TextBox ID="txtSubject" runat="server">subject</asp:TextBox>

                            <asp:TextBox ID="txtMessage" runat="server" Height="313px" Width="474px">message</asp:TextBox>

                            <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="send" />

                        </div>

                    </form>
                </div>
            </div>
        </div>

    </div>
</body>
</html>
