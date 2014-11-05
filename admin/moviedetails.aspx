<%@ Page Title="" Language="VB" MasterPageFile="~/movies.master" AutoEventWireup="false" CodeFile="moviedetails.aspx.vb" Inherits="moviedetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image4" runat="server" ImageUrl="~/pics/admin.jpg" Height="75px" />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_mstaub_movies %>" SelectCommand="SELECT * FROM [mstaub_movies] WHERE ([MovieID] = @MovieID)" DeleteCommand="DELETE FROM [mstaub_movies] WHERE [MovieID] = @MovieID" InsertCommand="INSERT INTO [mstaub_movies] ([Title], [ReleaseYear], [DirectorLName], [USGross], [Genre], [MPAArating], [OscarBestPicture], [OscarBestDirector]) VALUES (@Title, @ReleaseYear, @DirectorLName, @USGross, @Genre, @MPAArating, @OscarBestPicture, @OscarBestDirector)" UpdateCommand="UPDATE [mstaub_movies] SET [Title] = @Title, [ReleaseYear] = @ReleaseYear, [DirectorLName] = @DirectorLName, [USGross] = @USGross, [Genre] = @Genre, [MPAArating] = @MPAArating, [OscarBestPicture] = @OscarBestPicture, [OscarBestDirector] = @OscarBestDirector WHERE [MovieID] = @MovieID" >
         
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
            <SelectParameters>
                <asp:QueryStringParameter Name="MovieID" QueryStringField="MovieID" />
            </SelectParameters>
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
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MovieID" DataSourceID="SqlDataSource1">
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
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>
       

    <br />
    <asp:Label ID="lbl_deleted" runat="server"></asp:Label>
       

</asp:Content>

