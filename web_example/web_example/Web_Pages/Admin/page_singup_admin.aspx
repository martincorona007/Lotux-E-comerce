<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_singup_admin.aspx.cs" Inherits="web_example.Web_Pages.page_singup_admin" %>
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
                               
                               <!--Picture--->
                               <div>
                                   <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/Pictures/p1.PNG" width="502" height="70" />
                               </div>
                               <!--Picture--->
                                 <div class="form-group">
                                    <asp:Label ID="lbl_email" runat="server" Text="Email "></asp:Label>
                                    <asp:TextBox ID="txt_email" class="form-control"  Placeholder="Enter Email" runat="server"></asp:TextBox>
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="txt_email" ErrorMessage="Pleace fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </td>
                                            <td>
                                                <asp:RegularExpressionValidator ID="REVemail" runat="server" ControlToValidate="txt_email" ErrorMessage="Email invalid" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </td>
                                            <td>
                                                <asp:Label ID="lbl_verification" runat="server" Font-Bold="True" ForeColor="Red" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                        
                                    </table>
                                    
                                     
                                 </div>
                                    <!--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-->
                                  <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <asp:Label ID="lbl_password1" runat="server" Text="Password  "></asp:Label>
                                      <asp:TextBox ID="txt_password1" class="form-control" Placeholder="Enter Password" TextMode="Password" runat="server"></asp:TextBox>
                                      
                                      <asp:RequiredFieldValidator ID="RFVpassword" runat="server" ControlToValidate="txt_password1" ErrorMessage="Pleace fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                  </div>
                                    <div class="form-group col-md-6">
                                       <asp:Label ID="Label1" runat="server"  Text="Confirm Password  "></asp:Label>
                                       <asp:TextBox ID="txt_password2" class="form-control" TextMode="Password" Placeholder="Enter Confirm Password" runat="server"></asp:TextBox>
                                  
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RFVCpassword" runat="server" ControlToValidate="txt_password2" ErrorMessage="Pleace fill out this field " Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </td>        
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:CompareValidator ID="CVpassword" runat="server" ControlToCompare="txt_password1" ControlToValidate="txt_password2" ErrorMessage="The passswords must be the same" Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                                                </td>
                                            </tr>
                                        </table>
                                        
                                     
                                    </div>
                                      <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Next" OnClick="Button1_Click" />
            
                                 </div>
                           </div>
                       </div>
                   </div>

               </div>              
            </div>
        </div>
    </div>
</asp:Content>
