<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="SuaTK.aspx.cs" Inherits="WebBanXe_admin_SuaTK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    sửa tài khoản
    
    <asp:Button PostBackUrl="~/WebBanXe/admin/QLTaiKhoan.aspx" ID="Button1" runat="server" Text="xác nhận" />
    <asp:Button PostBackUrl="~/WebBanXe/admin/QLTaiKhoan.aspx" ID="Button2" runat="server" Text="hủy" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

