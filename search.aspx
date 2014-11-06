<%@ Page Title="" Language="VB" MasterPageFile="~/movies.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Search All About Movies
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_mstaub_movies %>" SelectCommand="SELECT * FROM [mstaub_movies] ORDER BY [Title]" DeleteCommand="DELETE FROM [mstaub_movies] WHERE [MovieID] = @MovieID" InsertCommand="INSERT INTO [mstaub_movies] ([Title], [ReleaseYear], [DirectorLName], [USGross], [Genre], [MPAArating], [OscarBestPicture], [OscarBestDirector]) VALUES (@Title, @ReleaseYear, @DirectorLName, @USGross, @Genre, @MPAArating, @OscarBestPicture, @OscarBestDirector)" UpdateCommand="UPDATE [mstaub_movies] SET [Title] = @Title, [ReleaseYear] = @ReleaseYear, [DirectorLName] = @DirectorLName, [USGross] = @USGross, [Genre] = @Genre, [MPAArating] = @MPAArating, [OscarBestPicture] = @OscarBestPicture, [OscarBestDirector] = @OscarBestDirector WHERE [MovieID] = @MovieID">
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

            Search by Movie Title:
            <asp:TextBox ID="Search_textbox" runat="server"></asp:TextBox>
    
    <p />
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1" CellPadding="4" CellSpacing="2" CssClass="cssgridview">
        <AlternatingRowStyle CssClass="alt" />
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="ReleaseYear" HeaderText="Release Year" SortExpression="Release Year" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="DirectorLName" HeaderText="Director" SortExpression="Director" />
            <asp:HyperLinkField DataNavigateUrlFields="MovieID" DataNavigateUrlFormatString="moviedetails.aspx?MovieID={0}" Text="More Details" />
        </Columns>
    </asp:GridView>
    <br />

</asp:Content>

