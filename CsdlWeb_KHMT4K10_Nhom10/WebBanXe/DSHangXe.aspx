<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageClient.master" AutoEventWireup="true" CodeFile="DSHangXe.aspx.cs" Inherits="WebBanXe_DSHangXe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="content">
         <div class="container">
             <div class="row">              
                <h1>Danh sách hãng xe</h1>
                <asp:LinkButton PostBackUrl="~/WebBanXe/SanPham.aspx" ID="LinkButton1" runat="server">Xem xe theo hãng</asp:LinkButton>
               
             </div>
         </div>
    </div>
</asp:Content>

