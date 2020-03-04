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
                <li><a href="Gallery.aspx"><%=menu.Pages%></a></li>
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
                <h2>Contact Us</h2>
                <p>MISCELLANEOUS INFORMATION: </p>
            </div>
            <div class="row">
                <div class="column">
                    <p>ADDRESS:</p>
                    <p>138 Atlantis Ln Kingsport Illinois 121154</p>
                    <br>
                    <p>PHONES:</p>
                    <p>800-2345-6789</p>
                    <p>800-2345-6789</p>
                    <br />
                    <p>EMAIL:</p>
                    <p>mail@demolink.com</p>
                    <p>Download information as vCard</p>
                </div>
                <div class="column">
                    <form>

                        <input type="text" id="name" name="name" placeholder="Your name.." />  <%--name tab--%>

                        <input type="text" id="email" name="email" placeholder="Your email.." /> <%--email tab--%>

                        <input type="text" id="phone" name="phone" placeholder="Your phone number.." /> <%--phone tab--%>

                        <textarea id="subject" name="subject" placeholder="Write something.." style="height: 170px"></textarea>
                        <input type="submit" value="Send" onclick="validate()" />
                        <input type="submit" value="Clear" />

                    </form>
                </div>
            </div>
        </div>

    </div>
</body>
</html>
