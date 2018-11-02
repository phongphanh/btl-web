<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ThemXe.aspx.cs" Inherits="WebBanXe_admin_ThemXe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    thêm xe
    
    <asp:Button PostBackUrl="~/WebBanXe/admin/QLXe.aspx" ID="Button1" runat="server" Text="xác nhận" />
    <asp:Button PostBackUrl="~/WebBanXe/admin/QLXe.aspx" ID="Button2" runat="server" Text="hủy" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

