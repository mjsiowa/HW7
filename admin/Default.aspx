<%@ Page Title="" Language="VB" MasterPageFile="~/movies.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Image ID="Image4" runat="server" ImageUrl="~/pics/admin.jpg" Height="75px" />

    <table>
        <tr>
            <td>
                <asp:HyperLink ID="new_movie_link" runat="server" NavigateUrl="~/admin/newmovie.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/pics/images.jpg" Height="150px" />
</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin/admin_search.aspx">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/pics/red-edit-icon-glossy-md.png" Height="150px" />
                </asp:HyperLink>
                
            </td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/site_mgr/UserMgmt.aspx">

                    <asp:Image ID="Image3" runat="server" ImageUrl="~/pics/delete-300x300.jpg" Height="150px" />
                </asp:HyperLink>
                

            </td>
        </tr>

        <tr>
            <td>
                Add New movie
            </td>
            <td>
                Update/Delete
            </td>
            <td>
                Modify Users
            </td>
        </tr>

    </table>

   

</asp:Content>

