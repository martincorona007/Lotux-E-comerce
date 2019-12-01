<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_singup_user_2.aspx.cs" Inherits="web_example.Web_Pages.User.page_singup_user_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
               <div class="card">
                   <div class="card-body">
                       <div class="row">
                           <div class="col">
                               <!--Picture--->
                               <div>
                                   <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/Pictures/p3.PNG" width="502" height="70" />
                               </div>
                               <!--Picture--->
                                 <div class="form-row">
                                     <div class="form-group col-md-6">
                                        <asp:Label ID="lbl_type_credit" runat="server" Text="Credit Card Type"></asp:Label>
                                        <asp:DropDownList ID="DDL_type" class="form-control"  runat="server" OnSelectedIndexChanged="SelectedIndex_Changed" DataTextField="countryName" DataValueField="countryName">
                                           <asp:ListItem Value="0">Select</asp:ListItem>
                                                    <asp:ListItem>Master Card</asp:ListItem>
                                                    <asp:ListItem>American Express</asp:ListItem>
                                                    <asp:ListItem>Visa</asp:ListItem>
                                                    <asp:ListItem>Bitcoin Card</asp:ListItem>
                                                    <asp:ListItem>Etherium Card</asp:ListItem>
                                         </asp:DropDownList>
                                         
                                         <asp:RequiredFieldValidator ID="RFV_type" runat="server" ControlToValidate="DDL_type" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                              
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="lbl_credit_card" runat="server" Text="Credit Card Number"></asp:Label>
                                        <asp:TextBox ID="txt_credit_card" class="form-control" placeholder="0000-000-0000-000" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_credit_card" runat="server" ControlToValidate="txt_credit_card" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_credit_card" ErrorMessage="Error Credit Card" Font-Bold="True" ForeColor="Red" ValidationExpression="[\d]+((-|\s)?[\d]+)+$"></asp:RegularExpressionValidator>
                                    </div>

                                    
                                  </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="Label1" runat="server" Text="Expiration Date"></asp:Label>
                                     <asp:DropDownList ID="DDL_1" class="form-control" runat="server" OnSelectedIndexChanged="SelectedIndex_Changed" DataTextField="countryName"  DataValueField="countryName">
                                           <asp:ListItem Value="0">Select</asp:ListItem>
                                                    <asp:ListItem>01</asp:ListItem>
                                                    <asp:ListItem>02</asp:ListItem>
                                                    <asp:ListItem>03</asp:ListItem>
                                                    <asp:ListItem>04</asp:ListItem>
                                                    <asp:ListItem>05</asp:ListItem>
                                                    <asp:ListItem>06</asp:ListItem>
                                                    <asp:ListItem>07</asp:ListItem>
                                                    <asp:ListItem>08</asp:ListItem>
                                                    <asp:ListItem>09</asp:ListItem>
                                                    <asp:ListItem>10</asp:ListItem>
                                                    <asp:ListItem>11</asp:ListItem>
                                                    <asp:ListItem>12</asp:ListItem>
                                                    
                                         </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RFV_DDL1" runat="server" ControlToValidate="DDL_1" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                              
                                    </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                        <asp:DropDownList ID="DDL2" class="form-control"  runat="server" InitialValue="0" OnSelectedIndexChanged="SelectedIndex_Changed1" DataTextField="countryName" DataValueField="countryName">
                                           <asp:ListItem Value="0">Select</asp:ListItem>
                                                    <asp:ListItem>13</asp:ListItem>
                                                    <asp:ListItem>14</asp:ListItem>
                                                    <asp:ListItem>15</asp:ListItem>
                                                    <asp:ListItem>16</asp:ListItem>
                                                    <asp:ListItem>17</asp:ListItem>
                                                    <asp:ListItem>18</asp:ListItem>
                                                    <asp:ListItem>19</asp:ListItem>
                                                    <asp:ListItem>20</asp:ListItem>
                                                    <asp:ListItem>21</asp:ListItem>
                                                    <asp:ListItem>22</asp:ListItem>
                                                    <asp:ListItem>23</asp:ListItem>
                                                    <asp:ListItem>24</asp:ListItem>
                                                    <asp:ListItem>25</asp:ListItem>
                                                    <asp:ListItem>26</asp:ListItem>
                                                    <asp:ListItem>27</asp:ListItem>
                                                    
                                         </asp:DropDownList>
                                         <asp:RequiredFieldValidator ID="RFV_ddl2" runat="server" ControlToValidate="DDL2" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                              
                                    </div>
                                      
                                </div>
                                    <div class="form-group col-md-6">
                                        <asp:Label ID="lbl_code_security" runat="server" Text="Code Security"></asp:Label>
                                        <asp:TextBox ID="txt_code_security" class="form-control" placeholder="000" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFV_code_security" runat="server" ControlToValidate="txt_code_security" ErrorMessage="Please fill out this field" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_code_security" ErrorMessage="Error Code Security" Font-Bold="True" ForeColor="Red" ValidationExpression="^[0-9]{3}$"></asp:RegularExpressionValidator>
                                     </div>
                                  <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Next" OnClick="Button1_Click" />
                                 
                           </div>
                       </div>
                   </div>

               </div>              
            </div>
        </div>
    </div>
</asp:Content>
