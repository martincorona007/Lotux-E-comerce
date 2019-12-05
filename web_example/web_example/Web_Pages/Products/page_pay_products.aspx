<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_pay_products.aspx.cs" Inherits="web_example.Web_Pages.Products.page_pay_products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
               <div class="card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col">
                               <!--Picture--->
                               <div>
                                   <center>
                                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/Pictures/pay.png" width="100px" />
                                   </center>
                               </div>
                               <!--Picture--->
                               <div class="row">
                                       <div class="col">
                                            <asp:Label ID="lbl_country" runat="server" Text="Country"></asp:Label>
                                            <asp:TextBox ID="txt_country" class="form-control" placeholder="Enter Country" runat="server"></asp:TextBox>
                                        <!--    <asp:RequiredFieldValidator ID="RFV_txt_country" runat="server" ControlToValidate="txt_country" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                      -->
                                       </div>
                                       <div class="col">
                                           <asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label>
                                           <asp:TextBox ID="txt_city" class="form-control" placeholder="Enter city" runat="server"></asp:TextBox>
                                          <!--  <asp:RequiredFieldValidator ID="RFV_city" runat="server" ControlToValidate="txt_city" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                      -->
                                       </div>
                                       <div class="col">
                                           <asp:Label ID="lbl_zipcode" runat="server" Text="Zip Code"></asp:Label>
                                           <asp:TextBox ID="txt_zipcode" class="form-control" placeholder="Enter Zip Code" runat="server"></asp:TextBox>
                                       <!--     <asp:RequiredFieldValidator ID="RFV_zipcode" runat="server" ControlToValidate="txt_zipcode" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                      -->
                                       </div>
                               </div>
                               
                               <div class="row">

                               </div>
                               <div class="row">
                                   <div class="col">
                                      <asp:Button ID="btn_1" class="btn btn-primary btn-lg" runat="server" Text="Next" OnClick="Button1_Click" />
                                   </div >
                                   
                               </div>
                                               
                           </div>
                       </div>
                   </div>

               </div>              
            </div>
        </div>
    </div>
</asp:Content>
