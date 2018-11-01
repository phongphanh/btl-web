<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="QLXe.aspx.cs" Inherits="WebBanXe_admin_QLXe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Nội Dung Trang Quản Lý Xe</h1>
    
    <asp:Button PostBackUrl="~/WebBanXe/admin/ThemXe.aspx" ID="Button1" runat="server" Text="thêm" />
    <asp:Button PostBackUrl="~/WebBanXe/admin/SuaXe.aspx" ID="Button2" runat="server" Text="sửa" />
    <button>xóa</button>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <script>
        $("#nav_xe").addClass("active");
    </script>
</asp:Content>

