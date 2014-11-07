<%@ Page Title="" Language="VB" MasterPageFile="~/movies.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    Contact Us
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>
    
    <h2>
        Your email address: (i.e.&nbsp; jsmith@gmail.com)</h2>
        <asp:TextBox ID="senderAddress" runat="server" Width="259px"></asp:TextBox><asp:RequiredFieldValidator ID="senderRequiredFieldValidator" runat="server" ErrorMessage=" Please enter valid email address" ControlToValidate="senderAddress"></asp:RequiredFieldValidator>
        <br />
        <br />
       
         <h2>Your message:</h2> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" Height="200px" Width="350px"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

       
        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <div class="deletemessage">
        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>
            </div>

        <!-- End your 'If' statement. -->
        <%End If%>
</asp:Content>

