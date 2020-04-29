<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="PageTourism.Admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/grid.css" rel="stylesheet" />
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
        <div id="voyages">
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="titre" HeaderText="titre" SortExpression="titre" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                        <asp:BoundField DataField="prix" HeaderText="prix" SortExpression="prix" />
                        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                        <asp:CheckBoxField DataField="check" HeaderText="check" SortExpression="check" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Voyage] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Voyage] ([Id], [titre], [description], [prix], [photo], [check]) VALUES (@Id, @titre, @description, @prix, @photo, @check)" SelectCommand="SELECT * FROM [Voyage]" UpdateCommand="UPDATE [Voyage] SET [titre] = @titre, [description] = @description, [prix] = @prix, [photo] = @photo, [check] = @check WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="titre" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="prix" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="check" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="titre" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="prix" Type="String" />
                <asp:Parameter Name="photo" Type="String" />
                <asp:Parameter Name="check" Type="Boolean" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
        </div>
</body>
</html>
