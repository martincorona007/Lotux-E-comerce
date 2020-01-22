<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_update_product_admin.aspx.cs" Inherits="web_example.Web_Pages.Admin.page_update_product_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section class="update">
        <div class="container">
               <div class="section-title">
                   <h1>Product Details</h1>
                   <div class="pick">
                            <asp:Image ID="Picture" runat="server"  src="../../Styles/Pictures/update.png" ></asp:Image>
                   </div>
               </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="pick">
                           <asp:Label ID="lbl_success" runat="server" Font-Bold="True" ForeColor="Lime"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <div class="sect-a">
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                     <div class="col-md-6">
                        <label>Product ID</label>
                         <asp:Label ID="lblstatus" runat="server" Text="" Font-Bold="True" ForeColor="Red"></asp:Label>
                       <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="txt_ID" runat="server" placeholder="Enter Product ID" BorderStyle="Inset"></asp:TextBox>
                              <asp:LinkButton class="btn btn-primary" ID="LINK_BUTTUN_ID" runat="server" OnClick="LINK_BUTTUN_ID_Click"><i class="fas fa-check-circle"></i></asp:LinkButton>
                           </div>
                        </div>
                     </div>
                    <div class="col-md-6">
                        <label>Name Product</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_name"  runat="server" ></asp:TextBox>
                        </div>
                    </div>
                    </div>
                    <div class="row">
                            <div class="col-md-6">
                              <label>Category</label>
                            <div class="form-group">
                               <asp:DropDownList class="form-control" ID="DDL_category"  runat="server" >
                                  <asp:ListItem Text="Home" Value="1" />
                                  <asp:ListItem Text="Computers" Value="2" />
                                  <asp:ListItem Text="Cell phones and tables" Value="3" />
                                  <asp:ListItem Text="TV and Video" Value="4" />
                                  <asp:ListItem Text="Cameras" Value="5" />
                                  <asp:ListItem Text="Audio" Value="6" />
                                  <asp:ListItem Text="Video game" Value="7" />
                                  <asp:ListItem Text="Drones, Radio Control and Toys" Value="8" />
                                  <asp:ListItem Text="Wearables" Value="9" />
                                  <asp:ListItem Text="Musical Instruments and DJ" Value="10" />
                                  <asp:ListItem Text="Cars, Bicycles and GPS" Value="11" />
                                  <asp:ListItem Text="Smart home" Value="12" />
                                  <asp:ListItem Text="Health, Wellness and Beauty" Value="13" />
                                  <asp:ListItem Text="Movies and series" Value="14" />
                                  <asp:ListItem Text="Gift cards" Value="15" />
                                  <asp:ListItem Text="Office items" Value="16" />
                                  <asp:ListItem Text="Telephony" Value="17" />
                                  <asp:ListItem Text="Babies" Value="18" />
                                  <asp:ListItem Text="Tools" Value="19" />
                             
                               </asp:DropDownList>
                            </div>
                        </div>
                      <div class="col-md-6">
                            <label>Brand</label>
                        <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="txt_brand" runat="server" Text='<%# Bind("brand") %>'></asp:TextBox>
                         </div>
                      </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Current Stock (per unit)</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="txt_current_stock" runat="server" Text='<%# Bind("current_stock") %>' TextMode="Number"></asp:TextBox>
                            </div>
                         </div>
                         <div class="col-md-6">
                            <label>Price</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="txt_price" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                            </div>
                        </div>
                    </div> 
                </div>
                <div class="col-md-4">
                        <div class="row">
                            <label>Select another Picture</label>
                         <div class="form-group">
                            <asp:FileUpload class="form-control" ID="FileUpload1"  runat="server"  />
                         </div>
                        </div>
                         <div class="row">
                                <asp:Label ID="lbl_image" runat="server" Text="Picture "></asp:Label>
                                 <asp:Label ID="lbl_verification" runat="server" Font-Bold="True" ForeColor="Red" Text=""></asp:Label>
                      
                                <div class="form-group">
                                    <asp:Image ID="Image2" runat="server"/>
                                 </div>
                         </div>
                 </div>
             </div>
            <div class="row">
                     <div class="col-12">
                        <label>Product Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_description" runat="server" Text='<%# Bind("description") %>' TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
             </div>
         
        </div>    
        <div class="container">
                <div class="alinear">
                    <div class="row">
                        <div class="col-md-4">

                        </div>
                        <div class="col-md-4">
                            <asp:Button ID="btn_come_back" class="btn btn-lg btn-block btn-warning" runat="server" Text="Back to management" />
                         </div>
                     
                         <div class="col-md-4">
                            <asp:Button ID="btn_Update" class="btn btn-lg btn-block btn-success" runat="server" Text="Update" OnClick="Button3_Click" />
                         </div>

                    </div>

                </div>
                     
                     
          </div>
    </section>
        
   
</asp:Content>
