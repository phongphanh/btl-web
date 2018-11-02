<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageClient.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="WebBanXe_GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Giỏ Hàng</h1>
    <asp:LinkButton ID="LinkButton1" PostBackUrl="~/WebBanXe/Checkout.aspx" runat="server">Checkout</asp:LinkButton>
<section class="page-cart">
    <div class="container">
        <div class="cart-title">
            <h2>Giỏ hàng</h2>
        </div><!--end cart tittle-->
        <div class="cart-content" >
            <table>
                <tr>
                    <th></th>
                    <th></th>
                    <th>Sản phẩm</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Tổng cộng</th>

                </tr>
                <tr>
                    <td>
                        <p class="color-red">X</p>
                    </td>
                    <td>
                        <img src="image/Kia/kia1.jpg" alt="Alternate Text" />
                    </td>
                    <td>
                        <p class="color-red">Kia Morning C255Z</p>
                    </td>
                    <td>
                        <p>800,000,000</p>
                        <span>₫</span>
                    </td>
                    <td>
                        <p>1</p>
                    </td>
                    <td>
                        <p>800,000,000</p>
                        <span>₫</span>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        
                        
                              <a class="fleft" href="#">Mã ưu đãi</a>
                               <a class="fleft" href="#">Áp dụng phiếu giảm giá</a>
                               <a  class="fright" href="#">Cập nhật giỏ hàng</a>
                                <div class="clear"></div>
                            
                        
                    </td>
                </tr>
            </table>
        </div><!--end cart content-->
    </div>
</section>
</asp:Content>

