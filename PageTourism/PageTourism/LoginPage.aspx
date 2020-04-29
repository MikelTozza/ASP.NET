<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="PageTourism.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/"/>
    <link href="boot/css/customlogin.css" rel="stylesheet" />
    <link href="boot/css/bootstrap.css" rel="stylesheet" />
    <link href="boot/css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/contact.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
        <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>
        <br>
        <br>

        <asp:TextBox ID="txtPassWord" runat="server" TextMode="Password" Text="passWord"></asp:TextBox>
        
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"/>
                Remember me
            </label>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
    </form>
</body>
</html>
