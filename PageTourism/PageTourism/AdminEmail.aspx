<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEmail.aspx.cs" Inherits="PageTourism.AdminEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/contact.css" rel="stylesheet" />

</head>
<body>
    <div id="main">
                <nav>
                     <ul>
                <li><a href="Admin.aspx"> Voyages</a></li>
                <li><a href="AdminEmail.aspx"> Email</a></li>
                <li><a href="Home.aspx"> Back to Website</a></li>            
                         
                    </ul>
                </nav>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                    <asp:BoundField DataField="text" HeaderText="text" SortExpression="text" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Email] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Email] ([email], [subject], [text]) VALUES (@email, @subject, @text)" SelectCommand="SELECT * FROM [Email]" UpdateCommand="UPDATE [Email] SET [email] = @email, [subject] = @subject, [text] = @text WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="subject" Type="String" />
                    <asp:Parameter Name="text" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <div class="column">
                    

                        <div>

                            <asp:TextBox ID="TxtTo" runat="server">to</asp:TextBox>

                            <asp:TextBox ID="txtSubject" runat="server">subject</asp:TextBox>

                            <asp:TextBox ID="txtMessage" runat="server" Height="313px" Width="474px" OnTextChanged="txtMessage_TextChanged">message</asp:TextBox>

                            <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="send" />

                        </div>
                   
                </div>
    </form>
        </div>
</body>
</html>
