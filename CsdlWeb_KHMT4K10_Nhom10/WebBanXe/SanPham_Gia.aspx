<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageClient.master" AutoEventWireup="true" CodeFile="SanPham_Gia.aspx.cs" Inherits="WebBanXe_SanPham_Gia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content sanpham_gia">
        <div class="container">
            <div class="row">
                
                <section class="slide">
                    <div class="search-site fright">
                        <div class="container">
                            <div class="row">
                                <div class="search-wrap">
                                    <asp:DropDownList ID="ddl_Gia" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_Gia_SelectedIndexChanged" >
                                    </asp:DropDownList>
                                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ><i class="fas fa-search"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>

                </section>
                <h1>Trang sản phẩm</h1>
                <div class="main-content">
                    <div class="row">
                        <div class="col-70">
                            <section class="section product">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOToConnectionString %>" SelectCommand="SELECT [TenXe], [Gia], [Anh], [KhuVuc], [ID_Xe], [NgayDang] FROM [Xe] ORDER BY [NgayDang] DESC"></asp:SqlDataSource>
                                <div class="ema_title">
                                    <a class="ema_txt" href="#"><asp:Label ID="title_gia" runat="server" Text=""></asp:Label></a>
                                </div>

                                <div class="product-list">
                                    <div class="row" style="margin: 5px -5px;">
                                     <%--   <div class="col-25">
                                            <asp:LinkButton PostBackUrl="~/WebBanXe/SanPham.aspx" ID="LinkButton2" runat="server">
                                            
                                            <div class="product-item">
                                                <img src="image/Nissan/Normal-2009-Nissan-Pathfinder-LE-1.jpg" />
                                                <p class="item-title"><b>2018 Mazda 3 1.5 AT Sedan</b></p>
                                                <label>Xe mới</label>
                                                <span class="price">1 tỷ 19 triệu</span>
                                                <p class="item-add">Tp Hồ Chí Minh</p>
                                                <div class="numb-img">
                                                    <i class="fas fa-camera"></i>
                                                    <span>10</span>
                                                </div>
                                            </div>
                                            </asp:LinkButton>
                                        </div>--%>
                                        
                                        <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_Xe" DataSourceID="SqlDataSource1" Width="100%" RepeatColumns="4" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                                            <ItemTemplate>        
                                                <asp:LinkButton PostBackUrl="~/WebBanXe/ChiTietSP.aspx" ID="LinkButton2" runat="server">
                                                    <div class="product-item">
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Anh", "{0}") %>' />
                                                        <p class="item-title">
                                                            <b><asp:Label ID="TenXeLabel" runat="server" Text='<%# Eval("TenXe") %>' /></b>
                                                        </p>
                                                        <label>Xe mới</label>
                                                        
                                                        <asp:Label CssClass="price" ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
                                                        <%--<span >1 tỷ 19 triệu</span>--%>
                                                        <p class="item-add">
                                                            <asp:Label ID="KhuVucLabel" runat="server" Text='<%# Eval("KhuVuc") %>' />
                                                        </p>
                                                        <div class="numb-img">
                                                            <i class="fas fa-camera"></i>
                                                            <span>10</span>
                                                        </div>
                                                    </div>
                                            </asp:LinkButton><asp:Label Visible="false" ID="ID_XeLabel" runat="server" Text='<%# Eval("ID_Xe") %>' />
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <div class="col-30">
                            <aside class="aside-site">
                                <section class="section news">
                                    <div class="ema_title">
                                        <a class="ema_txt" href="#">Tin tức <a class="ema_txt" href="#">Tin tức</a> </div><div class="news-list-item">
                                        <div class="news-item">
                                            <img src="image/system/xe4.jpg" /> <div class="news-text">
                                                <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div><div class="news-item">
                                            <img src="image/system/xe4.jpg" /> <div class="news-text">
                                                <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div><div class="news-item">
                                            <img src="image/system/xe4.jpg" /> <div class="news-text">
                                                <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div><div class="news-item">
                                            <img src="image/system/xe4.jpg" /> <div class="news-text">
                                                <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div></div></section></aside></div></div></div><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOToConnectionString %>" SelectCommand="SELECT [ID_Xe], [TenXe], [KhuVuc], [Anh], [Gia] FROM [Xe] WHERE (([Gia] &gt;= @Gia) AND ([Gia] &lt; @Gia2))">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="Gia" QueryStringField="from_gia" Type="Double" />
                        <asp:QueryStringParameter DefaultValue="999999" Name="Gia2" QueryStringField="to_gia" Type="Double" />
                    </SelectParameters>
                </asp:SqlDataSource>




                <%--                <asp:LinkButton PostBackUrl="~/WebBanXe/ChiTietSP.aspx" ID="LinkButton1" runat="server">chi tiết sản phẩm</asp:LinkButton>
                <br />
                <asp:LinkButton PostBackUrl="~/WebBanXe/DatMua.aspx" ID="LinkButton2" runat="server">đặt hàng</asp:LinkButton>--%>
            </div>
        </div>
    </div>
</asp:Content>

