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
                           <asp:Button ID="btn_come_back" class="btn btn-lg btn-block btn-warning" runat="server" Text="Back to management" />
                      </div>
                        <div class="col-4">
                           <asp:TextBox CssClass="form-control" ID="txt_ID" runat="server" placeholder="Enter ID"></asp:TextBox>
                        </div>
                        <div class="col-4">
                               <asp:LinkButton class="btn btn-lg btn-block btn-danger" ID="LinkButton4" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                        </div>   
                     </div>
                   
                  <div class="row">
                     <div class="col">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_exampleConnectionString1 %>" SelectCommand="SELECT [ID_prod], [name], [brand], [price], [description], [photo], [current_stock] FROM [Products]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_prod" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="ID_prod" HeaderText="ID_prod" InsertVisible="False" ReadOnly="True" SortExpression="ID_prod" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="brand" HeaderText="brand" SortExpression="brand" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                                <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
                                <asp:BoundField DataField="current_stock" HeaderText="current_stock" SortExpression="current_stock" />
                            </Columns>
                         </asp:GridView>
                     </div>
                      
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
