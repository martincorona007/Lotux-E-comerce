<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_singup_user.aspx.cs" Inherits="web_example.Web_Pages.page_singup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <header>
        <div class="section-title">
            <h1>Sing Up</h1>
            <div class="pick">
                      <asp:Image ID="psa" runat="server" ImageUrl="~/Styles/Pictures/p1.PNG" />
            </div>
        </div>
    </header>
    <article class="a1">
        <section>
            <div>
                
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
                                      
            
                                 </div>
                                   <div class="alinear">
                                              <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Next" OnClick="Button1_Click" />
            
                                   </div>
            </div>
        </section>
    </article>

   

</asp:Content>
