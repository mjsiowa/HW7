﻿<%@ Page Title="" Language="VB" MasterPageFile="~/movies.master" AutoEventWireup="false" CodeFile="admin_details.aspx.vb" Inherits="moviedetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">Edit/Delete Movie
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table><tr>
    <td><asp:Image ID="Image4" runat="server" ImageUrl="~/pics/admin.jpg" Height="60px" />
    </td>
        <td style="vertical-align:middle">
        <ul><li>
            <asp:HyperLink ID="Add_Movie" runat="server" NavigateUrl="~/admin/newmovie.aspx">Add New movie</asp:HyperLink>
            </li>
        <li> | </li>
            <li>
                <asp:HyperLink ID="update" runat="server" NavigateUrl="~/admin/admin_search.aspx">Update/Delete</asp:HyperLink>
                
            </li>
        <li> | </li>
            <li>
                <asp:HyperLink ID="Modify" runat="server" NavigateUrl="~/site_mgr/UserMgmt.aspx">Modify Users</asp:HyperLink>
                
        </li>
    </ul>
        </td></tr>
   </table>

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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="MovieID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
              
                <table>

                <tr>
                    <td>
                        *Title:</td>
                <td><asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                </td>
                    <td>
                        <asp:RequiredFieldValidator ID="Title_FieldValidator" runat="server" ErrorMessage="Please enter movie title" ControlToValidate="TitleTextBox"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                <td>*Release Year:</td>
                <td><asp:TextBox ID="ReleaseYearTextBox" runat="server" Text='<%# Bind("ReleaseYear") %>' />
                </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ReleaseYearTextBox" ErrorMessage="Please enter movie release year"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                <td>*Director:</td>
                <td><asp:TextBox ID="DirectorLNameTextBox" runat="server" Text='<%# Bind("DirectorLName") %>' />
                </td>
                        <td> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DirectorLNameTextBox" ErrorMessage="Please enter director name"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                <tr><td>US Gross:</td>
                <td><asp:TextBox ID="USGrossTextBox" runat="server" Text='<%# Bind("USGross") %>' />
                </td>
                    <td></td>
                    </tr>
                    <tr>
                <td>Genre:</td>
                <td><asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
                    </td>
                        <td></td>
                </tr>
                    <tr>
                        <td>
                MPAA Rating:</td>
                <td><asp:TextBox ID="MPAAratingTextBox" runat="server" Text='<%# Bind("MPAArating") %>' />
                    </td>
                        <td></td>
                </tr>
                    <tr><td>
                Oscar Best Picture:</td>
                <td><asp:TextBox ID="OscarBestPictureTextBox" runat="server" Text='<%# Bind("OscarBestPicture") %>' />
                </td>
                        <td></td>
                    </tr>
                    <tr><td>
                Oscar Best Director:</td>
                <td><asp:TextBox ID="OscarBestDirectorTextBox" runat="server" Text='<%# Bind("OscarBestDirector") %>' />
                </td>
                        <td></td>
                    </tr>
                    <tr><td></td>

                <td>
                    <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                

                </td>
            </tr>
                        </table>
                    </EditItemTemplate>
            <InsertItemTemplate>
                </InsertItemTemplate>
            <ItemTemplate>
                 <table cellpadding="5">

                <tr>
                    <td style="text-align:right;">
                Title:</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </td>
                    <td>
                        </td>
                    </tr>
                    <tr>
                <td style="text-align:right;">Release Year:</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ReleaseYear") %>'></asp:Label>
                   
                </td>
                        <td>
                            
                        </td>
                    </tr>
                    <tr>
                <td style="text-align:right;">Director:</td>
                <td>
                    
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("DirectorLName") %>' ></asp:Label>
                </td>
                        <td> 
                            
                        </td>
                    </tr>
                <tr><td style="text-align:right;">US Gross:</td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("USGross")%>' ></asp:Label>
                    
                </td>
                    <td></td>
                    </tr>
                    <tr>
                <td style="text-align:right;">Genre:</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Genre") %>'></asp:Label>
                    
                    </td>
                        <td></td>
                </tr>
                    <tr>
                        <td style="text-align:right;">
                MPAA Rating:</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("MPAArating") %>'></asp:Label>
                    
                    </td>
                        <td></td>
                </tr>
                    <tr><td style="text-align:right;">
                Oscar Best Picture:</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("OscarBestPicture") %>'></asp:Label>
                    
                </td>
                        <td></td>
                    </tr>
                    <tr><td style="text-align:right;">
                Oscar Best Director:</td>
                <td>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("OscarBestDirector") %>'></asp:Label>
                   
                </td>
                        <td></td>
                    </tr
                    <tr> <td></td><td>
                        <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
               
                </td>
                        </tr>
                     </table>

            </ItemTemplate>
    </asp:FormView>
    
    <asp:Label ID="lbl_deleted" runat="server"></asp:Label>
       
</asp:Content>

