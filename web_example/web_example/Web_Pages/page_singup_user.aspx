<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_singup_user.aspx.cs" Inherits="web_example.Web_Pages.page_singup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
               <div class="card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col">
                               <div class="form-group">
                                    <asp:Label ID="lbl_user" runat="server" Text="User "></asp:Label>
                                    <asp:TextBox ID="txt_name" class="form-control" placeholder="Enter " runat="server"></asp:TextBox>
            
                                    <asp:RequiredFieldValidator ID="RFVname" runat="server" ControlToValidate="txt_name" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
            
                                  </div>
                                  <div class="form-group">
                                    <asp:Label ID="lbl_email" runat="server" Text="Email "></asp:Label>
                                    <asp:TextBox ID="txt_email" class="form-control" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="txt_email" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="REVemail" runat="server" ControlToValidate="txt_email" ErrorMessage="Email invalid" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                   </div>
                                    <!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
                                  <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <asp:Label ID="lbl_password1" runat="server" Text="Password  "></asp:Label>
                                      <asp:TextBox ID="txt_password1" class="form-control" runat="server"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RFVpassword" runat="server" ControlToValidate="txt_password1" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
           
                                    </div>
                                    <div class="form-group col-md-6">
                                       <asp:Label ID="Label1" runat="server" Text="Confirm Password  "></asp:Label>
                                       <asp:TextBox ID="txt_password2" class="form-control"  runat="server"></asp:TextBox>
                                       <asp:RequiredFieldValidator ID="RFVCpassword" runat="server" ControlToValidate="txt_password2" ErrorMessage="Please fill out this field " Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                       <asp:CompareValidator ID="CVpassword" runat="server" ControlToCompare="txt_password1" ControlToValidate="txt_password2" ErrorMessage="The passswords must be the same" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                                     </div>
                                      <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Sign Up" OnClick="Button1_Click" />
            
                                 </div>
                           </div>
                       </div>
                   </div>

               </div>              
            </div>
        </div>
    </div>
    

</asp:Content>
