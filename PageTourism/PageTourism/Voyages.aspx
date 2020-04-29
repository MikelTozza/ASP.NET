<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Voyages.aspx.cs" Inherits="PageTourism.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title> Gallery </title>
    <link href="css/contact.css" rel="stylesheet" />
    <link href="boot/css/bootstrap.css" rel="stylesheet" />
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
                <li><a href="Contact.aspx"><%=menu.Contact%></a></li>
            </ul>
        </nav>
         


<%-- grid view of items --%>
        <br />
        <br />
        
      
        <div class="card-deck" runat="server">
            <div class="col-sm-6 col-lg-3 mb-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="<%=imgGallery.images%>" alt="Card image cap" />
                    <div class="card-block">
                        <h5 class="card-title">Safari #1</h5>
                        <p class="card-text">TEST TEXT </p>
                        <a href="Contact.aspx" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3 mb-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="<%=imgGallery.images%>" alt="Card image cap" />
                    <div class="card-block">
                        <h5 class="card-title">Safari #1</h5>
                        <p class="card-text">TEST TEXT </p>
                        <a href="Contact.aspx" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3 mb-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="<%=imgGallery.images%>" alt="Card image cap" />
                    <div class="card-block">
                        <h5 class="card-title">Safari #1</h5>
                        <p class="card-text">TEST TEXT </p>
                        <a href="Contact.aspx" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3 mb-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="<%=imgGallery.images%>" alt="Card image cap" />
                    <div class="card-block">
                        <h5 class="card-title">Safari #1</h5>
                        <p class="card-text">TEST TEXT </p>
                        <a href="Contact.aspx" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-lg-3 mb-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="<%=imgGallery.images%>" alt="Card image cap" />
                    <div class="card-block">
                        <h5 class="card-title">Safari #1</h5>
                        <p class="card-text">TEST TEXT </p>
                        <a href="Contact.aspx" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

            <%--<asp:ListView ID="CARDVIEW" runat="server" DataSourceID="DataSourceCard">
                <ItemTemplate>
                    <div class="col-sm-6 col-lg-3 mb-4">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="<%=imgGallery.images%>" alt="Card image cap" />
                            <div class="card-block">
                                <h5 class="card-title">Safari #1</h5>
                                <p class="card-text">TEST TEXT </p>
                                <a href="Contact.aspx" class="btn btn-primary">Go somewhere</a>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>--%>
        </div>
        </div>
        <br />
       
       

        
</body>
</html>
