
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub Search_textbox_TextChanged(sender As Object, e As EventArgs) Handles Search_textbox.TextChanged
        ' Declare a variable
        Dim searchWord As String
        ' Set the variable equal to the SQL statement to perform the search
        searchWord = "Select * From mstaub_movies where (title Like '%" _
        + Search_textbox.Text.ToString() + "%')"
        ' Apply the variable (SQL statement) to the data source
        SqlDataSource1.SelectCommand = searchWord

    End Sub

  
End Class
