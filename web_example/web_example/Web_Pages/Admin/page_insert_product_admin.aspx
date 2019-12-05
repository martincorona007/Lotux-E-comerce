﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_insert_product_admin.aspx.cs" Inherits="web_example.Web_Pages.Admin.page_insert_product_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 1;
        }
    </style>
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
                           <h4>Product Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           
                            <asp:Image ID="Image1" runat="server" width="100px" src="../../Styles/Pictures/product.png" ></asp:Image>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:Label ID="lbl_success" runat="server" Font-Bold="True" ForeColor="Green" Text=""></asp:Label>
                      <div class="col-md-4">
                         <label>Picture</label>
                         <div class="form-group">
                            <asp:FileUpload class="form-control" ID="FileUpload" runat="server" CssClass="auto-style1" />
                         </div>
                          <asp:Label ID="lbl_verification" runat="server" Font-Bold="True" ForeColor="Red" Text=""></asp:Label>
                      </div>
                      
                      <div class="col-md-4">
                        <label>Name Product</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_name" runat="server" placeholder="Enter name product"></asp:TextBox>
                        </div>
                      </div>
                      <div class="col-md-4">
                          <label>Category</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DDL_category" runat="server">
                              <asp:ListItem Value="0">Select</asp:ListItem>
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
                  </div>
                  
                     
                  </div>
                  <div class="row">
                         <div class="col-md-4">
                            <label>Brand</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="txt_brand" runat="server" placeholder="Enter Brand"></asp:TextBox>
                                       
                            </div>
                         </div>
                         <div class="col-md-4">
                            <label>Current Stock (per unit)</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="txt_current_stock" runat="server" placeholder="Enter Current Stock (per unit)" TextMode="Number"></asp:TextBox>
                            </div>
                         </div>
                         <div class="col-md-4">
                            <label>Price</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="txt_price" runat="server" placeholder="Enter Price"></asp:TextBox>
                            </div>
                      </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label>Product Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txt_description" runat="server" placeholder="Product Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                    
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="btn_come_back" class="btn btn-lg btn-block btn-warning" runat="server" Text="Back to management" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="btn_add" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="btn_add_Click" />
                     </div>
                     
                     
                  </div>
               </div>
            </div>
            
            <br>
         </div>
         
    </div>
   

</asp:Content>
