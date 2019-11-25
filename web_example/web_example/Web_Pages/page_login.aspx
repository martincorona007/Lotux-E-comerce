<%@ Page Title="" Language="C#" MasterPageFile="~/Master_page.Master" AutoEventWireup="true" CodeBehind="page_login.aspx.cs" Inherits="web_example.Web_Pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server" >
    
</asp:Content>
 <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <table>
        <tr>
            <td>
                <asp:Label ID="lbl_email" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_singup" runat="server" Text="Sing Up" OnClick="btn_singup_Click" /></td>
            <td>
                <asp:Button ID="btn_singin" runat="server" Text="Sing In" OnClick="btn_singin_Click" />

            </td>
            <td>
                <asp:Label ID="lbl_status" runat="server" Text=" "></asp:Label>

            </td>
        </tr>

         
    </table>
   
</asp:Content>
