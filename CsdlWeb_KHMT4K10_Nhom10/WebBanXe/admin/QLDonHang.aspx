<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="QLDonHang.aspx.cs" Inherits="WebBanXe_admin_QLDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Nội Dung Trang Quản Lý Đơn Hàng</h1>
    <asp:Button PostBackUrl="~/WebBanXe/admin/ThemDonHang.aspx" ID="Button1" runat="server" Text="thêm" />
    <asp:Button PostBackUrl="~/WebBanXe/admin/SuaDonHang.aspx" ID="Button2" runat="server" Text="sửa" />
    <button>xóa</button>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <script>
        $("#nav_order").addClass("active");
    </script>
</asp:Content>

