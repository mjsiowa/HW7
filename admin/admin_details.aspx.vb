
Partial Class moviedetails
    Inherits System.Web.UI.Page

    
    Protected Sub FormView1_ItemDeleted(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim itemdeleted As String = e.Values("Title").ToString()

        lbl_deleted.Text = itemdeleted & " has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=admin_search.aspx")
    End Sub


    Protected Sub FormView1_ItemUpdated(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated

        Response.AddHeader("REFRESH", "3;URL=admin_search.aspx")
    End Sub
End Class
