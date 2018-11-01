<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="QLTaiKhoan.aspx.cs" Inherits="WebBanXe_admin_QLTaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Nội Dung Trang Quản Lý Tài Khoản</h1>
    
    <asp:Button PostBackUrl="~/WebBanXe/admin/SuaTk.aspx" ID="Button2" runat="server" Text="sửa" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <script>
        $("#nav_tk").addClass("active");
    </script>
</asp:Content>

