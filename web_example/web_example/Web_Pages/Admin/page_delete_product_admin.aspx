<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_delete_product_admin.aspx.cs" Inherits="web_example.Web_Pages.Admin.page_delete_product_admin" %>
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
                        <center>
                           <h4>Delete Product</h4>
                        </center>
                     </div>
                  </div>
                   <div class="row">
                                 <div class="col">
                                    <center>
                           
                                        <asp:Image ID="Image2" runat="server" width="100px" src="../../Styles/Pictures/delete.png" ></asp:Image>
                                    </center>
                                 </div>
                              </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">
                      
                       <div class="col-4">
                          <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" />
                      </div> 
                       <div class="col-4">
                            
                           
                            <asp:TextBox CssClass="form-control" ID="txt_name" runat="server" placeholder="Delete product (ID)"></asp:TextBox>
                      </div>
                        

                    </div>

                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                      <div class="col-4">
                           <asp:Button ID="btn_come_back" class="btn btn-lg btn-block btn-warning" runat="server" Text="Back to management" />
                      </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
