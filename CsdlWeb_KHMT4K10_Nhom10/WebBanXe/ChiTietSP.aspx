<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageClient.master" AutoEventWireup="true" CodeFile="ChiTietSP.aspx.cs" Inherits="WebBanXe_ChiTietSP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
         <div class="container">
             <div class="row">              
                <h1>Chi tiết sản phẩm</h1>
                 
                <asp:LinkButton PostBackUrl="~/WebBanXe/DatMua.aspx" ID="LinkButton1" runat="server">đặt mua</asp:LinkButton>
             </div>
         </div>
    </div>
    
    <br />
</asp:Content>

