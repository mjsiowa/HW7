<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newmovie.aspx.vb" Inherits="newmovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <div class="header">
        <table><tr>
        <td><asp:Image ID="Image1" runat="server" src="pics/film.jpg" /></td>
            <td>All About Movies</td>
            </tr></table>
    </div>

        <div class="navmenu">
            Nav Menu
        </div>

        <div class="mainapp">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_mstaub_movies %>" DeleteCommand="DELETE FROM [mstaub_movies] WHERE [MovieID] = @MovieID" InsertCommand="INSERT INTO [mstaub_movies] ([Title], [ReleaseYear], [DirectorLName], [USGross], [Genre], [MPAArating], [OscarBestPicture], [OscarBestDirector]) VALUES (@Title, @ReleaseYear, @DirectorLName, @USGross, @Genre, @MPAArating, @OscarBestPicture, @OscarBestDirector)" SelectCommand="SELECT * FROM [mstaub_movies]" UpdateCommand="UPDATE [mstaub_movies] SET [Title] = @Title, [ReleaseYear] = @ReleaseYear, [DirectorLName] = @DirectorLName, [USGross] = @USGross, [Genre] = @Genre, [MPAArating] = @MPAArating, [OscarBestPicture] = @OscarBestPicture, [OscarBestDirector] = @OscarBestDirector WHERE [MovieID] = @MovieID">
            <DeleteParameters>
                <asp:Parameter Name="MovieID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="ReleaseYear" Type="Decimal" />
                <asp:Parameter Name="DirectorLName" Type="String" />
                <asp:Parameter Name="USGross" Type="Decimal" />
                <asp:Parameter Name="Genre" Type="String" />
                <asp:Parameter Name="MPAArating" Type="String" />
                <asp:Parameter Name="OscarBestPicture" Type="String" />
                <asp:Parameter Name="OscarBestDirector" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="ReleaseYear" Type="Decimal" />
                <asp:Parameter Name="DirectorLName" Type="String" />
                <asp:Parameter Name="USGross" Type="Decimal" />
                <asp:Parameter Name="Genre" Type="String" />
                <asp:Parameter Name="MPAArating" Type="String" />
                <asp:Parameter Name="OscarBestPicture" Type="String" />
                <asp:Parameter Name="OscarBestDirector" Type="String" />
                <asp:Parameter Name="MovieID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>




    
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" ReadOnly="True" SortExpression="MovieID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="ReleaseYear" HeaderText="ReleaseYear" SortExpression="ReleaseYear" />
                <asp:BoundField DataField="DirectorLName" HeaderText="DirectorLName" SortExpression="DirectorLName" />
                <asp:BoundField DataField="USGross" HeaderText="USGross" SortExpression="USGross" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="MPAArating" HeaderText="MPAArating" SortExpression="MPAArating" />
                <asp:BoundField DataField="OscarBestPicture" HeaderText="OscarBestPicture" SortExpression="OscarBestPicture" />
                <asp:BoundField DataField="OscarBestDirector" HeaderText="OscarBestDirector" SortExpression="OscarBestDirector" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        </div>


          <div class="footer">
            Footer Div
        </div>
    
    </div>
    </form>
</body>
</html>
