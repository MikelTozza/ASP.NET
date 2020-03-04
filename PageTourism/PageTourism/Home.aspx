<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PageTourism.WebForm1" %>
<%@ Import Namespace="PageTourism" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Home </title>
    <link href="css/acceuil.css" rel="stylesheet" />
</head>
<body style="background-image:url('<%=image.backgroundImg %>')">
    
        
            <div id="main">
                <nav>
                    <ul>
                        <li><a href="Home.aspx"><%=menu.About%></a></li>
                        <li><a href="Gallery.aspx"><%=menu.Pages%></a></li>
                        <li><a href="Gallery.aspx"><%=menu.Gallery%></a></li>
                        <li><a href="Gallery.aspx"><%=menu.Blog%></a></li>
                        <li><a href="Contact.aspx"><%=menu.Contact%></a></li>
                    </ul>
                </nav>

                <div id="titleMenu">
                    <span><%=titlemenu.Title%></span>
                </div>

                <div id="explorer">
                    <img class="elephant" src="<%=image.img %>" style="width: 100%;position:relative;" />
                    <p class="Pex1"><%=explorer.exploreLineOne %></p>
                    <p class="Pex2"><%=explorer.exploreLineTwo %></p>
                    <div id="littlebox">
                      <div id="tinyboxleft">
                        <p><%=bottompage.leftBox%></p>
                    </div>

                    <div id="tinyboxmiddle">
                        <p><%=bottompage.middleBox%></p>
                    </div>

                    <div id="tinyboxright">
                        <p><%=bottompage.rightBox%></p>
                    </div>
                </div>
                    </div>

            

                <div id="bottompage">
                    <div id="box1">
                        <div id="lameass">
                        <img class="left" src="<%=image.leftboxIMG %>" style="width: 100%;height:100%;" />
                        </div>
                        <p><%=bottompage.leftboxTEXT %></p>
                    </div>
                    <div id="box2">
                        <div id="lameass">
                            <img class="middle" src="<%=image.middleboxIMG %>" style="width: 100%;height:100%;" />
                        </div>
                        <p><%=bottompage.middleboxTEXT %></p>
                    </div>
                    <div id="box3">
                        <div id="lameass">
                            <img class="right" src="<%=image.rightboxIMG %>" style="width: 100%;height:100%;" />
                        </div>
                        <p><%=bottompage.rightTEXT %></p>
                    </div>
                </div>

            </div>
    
</body>
</html>
