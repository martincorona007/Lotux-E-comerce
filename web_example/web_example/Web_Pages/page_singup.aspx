<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_singup.aspx.cs" Inherits="web_example.Web_Pages.page_singup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:Label ID="lbl_user" runat="server" Text="User "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFVname" runat="server" ControlToValidate="txt_name" ErrorMessage="Pleace fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_email" runat="server" Text="Email "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="txt_email" ErrorMessage="Pleace fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="REVemail" runat="server" ControlToValidate="txt_email" ErrorMessage="Email invalid" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
       <tr>
           <td>
                <asp:Label ID="lbl_password1" runat="server" Text="Password  "></asp:Label>
           </td>
          <td>
                <asp:TextBox ID="txt_password1" runat="server"></asp:TextBox>
            </td>
           <td>
               <asp:RequiredFieldValidator ID="RFVpassword" runat="server" ControlToValidate="txt_password1" ErrorMessage="Pleace fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
           </td>
       </tr>
        <tr>
           <td>
                <asp:Label ID="Label1" runat="server" Text="Confirm Password  "></asp:Label>
           </td>
          <td>
                <asp:TextBox ID="txt_password2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RFVCpassword" runat="server" ControlToValidate="txt_password2" ErrorMessage="Pleace fill out this field " Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CVpassword" runat="server" ControlToCompare="txt_password1" ControlToValidate="txt_password2" ErrorMessage="The passswords must be the same" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
            </td>
       </tr>
        <tr>
           <td>
               
           </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </td>
          
       </tr>
    </table>

</asp:Content>
