<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_management_admin.aspx.cs" Inherits="web_example.Web_Pages.page_management_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <div class="container-fluid">
        <div id="wi-xperia">
           <div class="row">
                <div class="col-md-12">
                    <div class="card text-center">
                       <div class="card-body">
                  
                    
                          <div class="row">
                             <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                             </div>
                             <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button2_Click" />
                             </div>
                             <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button3_Click" />
                             </div>
                          </div>
                       </div>
                    </div>
            
               </div>
            </div>
        
        </div>
        <div id="wi-xperia-a">
            <div class="row">
         
         
          
          <div class="col-md-12">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Product Inventory List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_exampleConnectionString1 %>" SelectCommand="SELECT [ID_prod], [name], [brand], [price], [description], [photo], [current_stock] FROM [Products]"></asp:SqlDataSource>
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_prod" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="ID_prod" HeaderText="ID_prod" InsertVisible="False" ReadOnly="True" SortExpression="ID_prod" />
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-12">
                                                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">

                                                            Brand<asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("brand") %>'></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">

                                                            Price<asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("brand") %>'></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">

                                                            Stock<asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-12">

                                                            Description

                                                            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("description") %>'></asp:Label>

                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-lg-2">
                                                    <asp:Image ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("photo") %>' />
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   
        </div>
        
    
    </div>

</asp:Content>
