
Partial Class login_login
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoggedIn(sender As Object, e As EventArgs) Handles Login1.LoggedIn
        If Roles.IsUserInRole(Login1.UserName, "r_mstaub_admin") = True Then
            Response.Redirect("~/admin/default.aspx")
        Else
            Response.Redirect("~/default.aspx")
        End If

    End Sub

End Class
