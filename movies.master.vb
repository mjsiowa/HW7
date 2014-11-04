
Partial Class movies
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_date.Text = DateTime.Now.ToLongDateString
        lbl_copy.Text = DateTime.Now.Year
    End Sub
End Class

