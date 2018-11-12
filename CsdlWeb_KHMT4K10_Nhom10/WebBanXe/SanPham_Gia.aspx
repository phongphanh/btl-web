<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageClient.master" AutoEventWireup="true" CodeFile="SanPham_Gia.aspx.cs" Inherits="WebBanXe_SanPham_Gia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
         <div class="container">
             <div class="row">              
                <h1>Trang sản phẩm</h1>
                <asp:LinkButton PostBackUrl="~/WebBanXe/ChiTietSP.aspx" ID="LinkButton1" runat="server">chi tiết sản phẩm</asp:LinkButton>
                <br />
                <asp:LinkButton PostBackUrl="~/WebBanXe/DatMua.aspx" ID="LinkButton2" runat="server">đặt hàng</asp:LinkButton>
             </div>
         </div>
    </div>
</asp:Content>

