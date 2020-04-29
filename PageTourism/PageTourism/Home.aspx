<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PageTourism.WebForm1" %>
<%@ Import Namespace="PageTourism" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Home </title>
    <link href="css/acceuil.css" rel="stylesheet" />
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
                <li><a href="Gallery.aspx"><%=menu.Contact%></a></li>
                <li><a href="LoginPage.aspx"> Login</a></li>

                    </ul>
                </nav>

                <div id="titleMenu">
                    
                    <span style="float:left"><img src="images/icon2.png" style="width:5%; display:inline-block; position:relative;background:transparent;" /><%=titlemenu.Title%></span>
                </div>

                <div id="explorer">
                    <img class="elephant" src="<%=image.img %>" style="width: 100%; position: relative;" />
                    <p class="Pex1"><%=explorer.exploreLineOne %></p>
                    <p class="Pex2"><%=explorer.exploreLineTwo %></p>
                    <%--<div id="littlebox">

                        <div id="tinyboxleft">
                            <p><%=Voya.titre1 %></p>
                        </div>

                        <div id="tinyboxmiddle">
                            <p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <%=Voya.titre2 %></p>

                        </div>

                        <div id="tinyboxright">
                            <p><%=Voya.titre3 %></p>

                        </div>
                    </div>--%>
                </div>
                <div style="background-image: url('<%=image.backgroundImg %>')">
                    <div class="card-deck" runat="server">
                        <div class="col-sm-6 col-lg-4 mb-4">
                            <div class="card" style="width: 22rem;">
                                <img class="card-img-top" src="<%=Voya.photo1 %>" alt="Card image cap" />
                                <div class="card-block">
                                    <h5 class="card-title"><%=Voya.titre1 %></h5>
                                    <p class="card-text">
                                        <p><%=Voya.desc1 %></p>
                                        <p><%=Voya.prix1 %></p>
                                    </p>
                                    <a href="Inscription.aspx" class="btn btn-primary">Sign-up!</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 mb-4">
                            <div class="card" style="width: 22rem;">
                                <img class="card-img-top" src="<%=Voya.photo2 %>" alt="Card image cap" />
                                <div class="card-block">
                                    <h5 class="card-title"><%=Voya.titre2 %></h5>
                                    <p class="card-text">
                                        <p><%=Voya.desc2 %></p>
                                        <p><%=Voya.prix2 %></p>
                                    </p>
                                    <a href="Inscription.aspx" class="btn btn-primary">Sign-up!</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 mb-4">
                            <div class="card" style="width: 22rem;">
                                <img class="card-img-top" src="<%=Voya.photo3 %>" alt="Card image cap" />
                                <div class="card-block">
                                    <h5 class="card-title"><%=Voya.titre3 %></h5>
                                    <p class="card-text">
                                        <p><%=Voya.desc3 %></p>
                                        <p><%=Voya.prix3 %></p>
                                    </p>
                                    <a href="Inscription.aspx" class="btn btn-primary">Sign-up!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
           
                <%--<div id="bottompage">
                    <div id="box1">
                        <div id="lameass">
                            <img class="left" src="<%=Voya.photo1 %>" style="width: 100%; height: 100%;" />
                        </div>
                        <p><%=Voya.desc1 %></p>
                        <p><%=Voya.prix1 %></p>
                    </div>
                    <div id="box2">
                        <div id="lameass">
                            <img class="middle" src="<%=Voya.photo2 %>" style="width: 100%; height: 100%;" />
                        </div>
                        <p><%=Voya.desc2 %></p>
                        <p><%=Voya.prix2 %></p>
                    </div>
                    <div id="box3">
                        <div id="lameass">
                            <img class="right" src="<%=Voya.photo3 %>" style="width: 100%; height: 100%;" />
                        </div>
                        <p><%=Voya.desc3 %></p>
                        <p><%=Voya.prix3 %></p>
                    </div>
                </div>--%>

            </div>
    
</body>
</html>
