<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_successful_product.aspx.cs" Inherits="web_example.Web_Pages.Products.page_successful_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid-a">
        <div class="row">
            <div class="col-md-12">
               <div class="card">
                   <div class="card-body">
                       <div class="row">
                       <div class="col">
                               <div class="section-title">
                                           <h1>Successful Operation</h1>
                                    <div class="pick">
                                         <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/Pictures/success.png" width="100px" />
                                    </div>
                               </div>
                               <div class="section-title">
                                        <asp:Label ID="Label1" runat="server" Text="Thank you for buy in Lotux E-comerce, We'll send you a email with the details of your product ship"></asp:Label>
                                    </div>
                                
                               <div class="alinear">
                                      <asp:Button ID="btn_1" class="btn btn-primary btn-lg" runat="server" Text="Next" OnClick="Button1_Click" />
                               </div >
                                   
                                               
                           </div>
                       
                       
                       </div>
                   </div>

               </div>              
            </div>
        </div>
    </div>
</asp:Content>
