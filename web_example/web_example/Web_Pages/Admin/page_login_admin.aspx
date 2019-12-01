<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_login_admin.aspx.cs" Inherits="web_example.Web_Pages.page_login_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="image">
      
        <div id="lamisma">
            <div>
                        <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
                        <asp:TextBox ID="txt_email" runat="server" class="form-control" placeholder="Enter email"></asp:TextBox>
                        </div>
      
            <div>
                       <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="txt_password" runat="server" class="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                        
                
            </div>
            <div class="form-row">
                <div class="form-group col-md-5">
                    <asp:Button ID="btn_singup" style=margin-top:20px class="btn btn-primary" runat="server" Text="Sing Up" OnClick="btn_singup_Click" />


                </div>
                <div class="form-group col-mb-6">
                    <asp:Button ID="btn_singin" style=margin-top:20px class="btn btn-primary" runat="server" Text="Sing In" OnClick="btn_singin_Click" />
                       
                </div>
                 
                
            </div>
            <div class="form-row">
                <asp:Label ID="lbl_status" runat="server"  Font-Bold="True" ForeColor="Red"  Text=" "></asp:Label>

            </div>
        </div>
        
            
    </div>
</asp:Content>
