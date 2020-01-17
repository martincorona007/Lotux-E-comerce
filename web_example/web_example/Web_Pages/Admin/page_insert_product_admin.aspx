<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_insert_product_admin.aspx.cs" Inherits="web_example.Web_Pages.Admin.page_insert_product_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="insert">
        <div class="container">
            <div class="section-title">
                <h1>Product Details</h1>
                <div class="pick">
                    <asp:Image ID="Picture" runat="server"  src="../../Styles/Pictures/product.png" ></asp:Image>
                </div>

             </div>
        </div>
        <div class="container">
            <div class="row">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Green" Text=""></asp:Label>
                      <div class="col-md-4">
                         <label>Picture</label>
                         <div class="form-group">
                            <asp:FileUpload class="form-control" ID="FileUpload1" runat="server" CssClass="auto-style1" />
                         </div>
                          <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red" Text=""></asp:Label>
                      </div>
                      
                      <div class="col-md-4">
                        <label>Name Product</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Enter name product"></asp:TextBox>
                        </div>
                      </div>
                      <div class="col-md-4">
                          <label>Category</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
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
            <div class="row">
                         <div class="col-md-4">
                            <label>Brand</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Enter Brand"></asp:TextBox>
                                       
                            </div>
                         </div>
                         <div class="col-md-4">
                            <label>Current Stock (per unit)</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Enter Current Stock (per unit)" TextMode="Number"></asp:TextBox>
                            </div>
                         </div>
                         <div class="col-md-4">
                            <label>Price</label>
                            <div class="form-group">
                               <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Enter Price"></asp:TextBox>
                            </div>
                      </div>
                  </div>
            <div class="row">
                     <div class="col-12">
                        <label>Product Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Product Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
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
                        <asp:Button ID="Button1" class="btn btn-sm btn-block btn-warning" runat="server" Text="Back to Management" />
                   </div>
                   <div class="col-md-4">
                       <asp:Button ID="Button2" class="btn btn-sm btn-block btn-success" runat="server" Text="Add Product" OnClick="btn_add_Click" />
                   </div>
                </div>
               
             </div>
        </div>
    </section>

</asp:Content>
