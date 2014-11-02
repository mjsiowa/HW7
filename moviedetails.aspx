<%@ Page Language="VB" AutoEventWireup="false" CodeFile="moviedetails.aspx.vb" Inherits="moviedetails" %>

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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_mstaub_movies %>" SelectCommand="SELECT * FROM [mstaub_movies] WHERE ([MovieID] = @MovieID)" >
         
            <SelectParameters>
                <asp:QueryStringParameter Name="MovieID" QueryStringField="MovieID" Type="Int32" />
            </SelectParameters>
           
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1" Height="50px" Width="295px" CellPadding="4" CellSpacing="2">
            <Fields>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="ReleaseYear" HeaderText="Release Year" SortExpression="ReleaseYear" />
                <asp:BoundField DataField="DirectorLName" HeaderText="Director" SortExpression="DirectorLName" />
                <asp:BoundField DataField="USGross" HeaderText="US Gross" SortExpression="USGross" DataFormatString="{0:C}" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                <asp:BoundField DataField="MPAArating" HeaderText="MPAA Rating" SortExpression="MPAArating" />
                <asp:BoundField DataField="OscarBestPicture" HeaderText="Oscar Best Picture" SortExpression="OscarBestPicture" />
                <asp:BoundField DataField="OscarBestDirector" HeaderText="Oscar Best Director" SortExpression="OscarBestDirector" />
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
