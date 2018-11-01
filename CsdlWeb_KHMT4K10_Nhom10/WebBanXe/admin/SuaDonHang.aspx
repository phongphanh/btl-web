<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="SuaDonHang.aspx.cs" Inherits="WebBanXe_admin_SuaDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    sửa đơn hàng
    
    <asp:Button PostBackUrl="~/WebBanXe/admin/QLDonHang.aspx" ID="Button1" runat="server" Text="xác nhận" />
    <asp:Button PostBackUrl="~/WebBanXe/admin/QLDonHang.aspx" ID="Button2" runat="server" Text="hủy" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

