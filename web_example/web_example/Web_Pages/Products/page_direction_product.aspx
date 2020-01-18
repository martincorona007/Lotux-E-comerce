<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_direction_product.aspx.cs" Inherits="web_example.Web_Pages.Products.page_direction_product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <div class="section-title">
            <h1>Product's Direction</h1>
            <div class="pick">
                     <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/Pictures/file.png" />
            </div>
        </div>
    </header>
    <article class="a1">
        <section>
            <div>
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
                                    <div class="col-md-12">
                                           <asp:Label ID="Label1" runat="server" Text="Select type of deliver"></asp:Label>
                                    </div>
                                </div>
                                   
                                <div class="row">
                                
                                 
                                    <div class="col-md-1">
                                                <asp:Button ID="Btn1" class="btn btn-primary " runat="server" Text="Stantard" OnClick="btn_1_Click" />
                                     </div>
                                     <div class="col-md-2">
                                                <asp:Button ID="Btn2" class="btn btn-success " runat="server" Text="Decepticon" OnClick="btn_2_Click" />
                                     </div>
                                     <div class="col-md-4">
                                             <asp:TextBox ID="txt_time1" class="form-control"  runat="server"></asp:TextBox>
                                     </div>
                                     <div class="col-md-1">
                                                <asp:Label ID="Label2" runat="server" Text="/"></asp:Label>
                                     </div>
                                     <div class="col-md-4">
                                             <asp:TextBox ID="txt_time2" class="form-control"  runat="server"></asp:TextBox>
                                     </div>
                                </div>
                
                
                                <div class="row">
                                    <div class="col-md-12">
                                            <label>Direction</label>
                                            <div class="form-group">
                                               <asp:TextBox CssClass="form-control" ID="txt_direction" runat="server" placeholder="Enter address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                            </div>
                                         </div>
                                </div>
                               
                             
                                   <div class="alinear">
                                      <asp:Button ID="btn_1" class="btn btn-primary btn-lg" runat="server" Text="Next" OnClick="Button1_Click" />
                                   </div >
                                   
                               
            </div>
        </section>
    </article>
    
     
 
</asp:Content>
