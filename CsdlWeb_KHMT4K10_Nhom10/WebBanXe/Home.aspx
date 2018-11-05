<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageClient.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="WebBanXe_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main id="content">

        <section class="slide">
            <div class="owl-carousel">
                <div>
                    <img src="image/system/xe4.jpg" />
                </div>
                <div>
                    <img src="image/system/xe3.jpg" />
                </div>
                <div>
                    <img src="image/system/xe4.jpg" />
                </div>
                <div>
                    <img src="image/system/xe3.jpg" />
                </div>
                <div>
                    <img src="image/system/xe4.jpg" />
                </div>
                <div>
                    <img src="image/system/xe3.jpg" />
                </div>
                <div>
                    <img src="image/system/xe4.jpg" />
                </div>
                <div>
                    <img src="image/system/xe3.jpg" />
                </div>
            </div>
            <div class="search-site fright">
                <div class="container">
                    <div class="row">
                        <div class="search-wrap">
                            <select>
                                <option>tìm kiếm theo giá</option>
                                <option>100 triệu - 500 triệu</option>
                                <option>500 triệu - 1 tỷ</option>
                                <option>1 tỷ - 3 tỷ</option>
                                <option>trên 3 tỷ</option>
                            </select>
                            <asp:LinkButton PostBackUrl="~/WebBanXe/SanPham.aspx" ID="LinkButton1" runat="server"><i class="fas fa-search"></i></asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <div class="main-content">
            <div class="container">
                <div class="row">
                    <div class="col-70">
                        <section class="section product">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOToConnectionString %>" SelectCommand="SELECT [TenXe], [Gia], [Anh], [KhuVuc], [ID_Xe], [NgayDang] FROM [Xe] ORDER BY [NgayDang] DESC"></asp:SqlDataSource>
                            <div class="ema_title">
                                <a class="ema_txt" href="#">Xe ô tô mới đăng</a>
                            </div>



                            <div class="product-list">
                                <div class="row" style="margin: 5px -5px;">


                                    <div class="col-25">
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
                                    </div>

                        
                                </div>
                            </div>
                            <div class="site-btn">
                                <asp:LinkButton CssClass="btn btn-red" ID="LinkButton3" PostBackUrl="~/WebBanXe/SanPham.aspx" runat="server">
                                    Xem thêm xe
                                </asp:LinkButton>
                            </div>
                        </section>
                        <section class="section quangcao" style="text-align: center;">
                            <img style="width: 100%;" src="image/system/baner2.gif" />
                        </section>

<%--                        <section class="section tuvan">
                            <div class="ema_title">
                                <a class="ema_txt" href="#">Tư vấn</a>
                            </div>
                            <div class="tuvan-list">
                                <div class="row">
                                    <div class="col-45">
                                        <div class="tuvan-item">
                                            <img src="image/system/xe4.jpg" />
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3>
                                            <span class="day">12/06/2018 20:57</span>
                                            <p>Mazda6 và Toyota Corolla Altis là hai mẫu sedan thuộc hai phân khúc khác nhau. Tuy nhiên, trong tầm giá trên dưới 850 triệu đồng, hai mẫu xe này lại cạnh tranh khá khốc liệt.</p>
                                            <a href="#"><i class="fas fa-caret-right"></i>Sedan hạng D, mua Mazda 6 hay Toyota Camry?</a>
                                            <br />
                                            <a href="#"><i class="fas fa-caret-right"></i>499 triệu động, mua Kia Cerato SMT hay Hyundai Accent ...</a>
                                        </div>
                                    </div>
                                    <div class="col-55">
                                        <div class="">
                                            <div class="col-50">
                                                <div class="tuvan-item">
                                                    <img src="image/system/xe4.jpg" />
                                                    <h4 class="h4-title">Nên mua Kia Cerato SMT hay Toyota Vios 1.5E MT chạy dịch vụ?</h4>
                                                    <span class="day">12/06/2018 20:57</span>
                                                </div>
                                            </div>
                                            <div class="col-50">
                                                <div class="tuvan-item">
                                                    <img src="image/system/xe4.jpg" />
                                                    <h4 class="h4-title">Nên mua Kia Cerato SMT hay Toyota Vios 1.5E MT chạy dịch vụ?</h4>
                                                    <span class="day">12/06/2018 20:57</span>
                                                </div>
                                            </div>
                                            <div class="col-50">
                                                <div class="tuvan-item">
                                                    <img src="image/system/xe4.jpg" />
                                                    <h4 class="h4-title">Nên mua Kia Cerato SMT hay Toyota Vios 1.5E MT chạy dịch vụ?</h4>
                                                    <span class="day">12/06/2018 20:57</span>
                                                </div>
                                            </div>
                                            <div class="col-50">
                                                <div class="tuvan-item">
                                                    <img src="image/system/xe4.jpg" />
                                                    <h4 class="h4-title">Nên mua Kia Cerato SMT hay Toyota Vios 1.5E MT chạy dịch vụ?</h4>
                                                    <span class="day">12/06/2018 20:57</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="section compare">
                            <div class="ema_title">
                                <a class="ema_txt" href="#">So sánh xe</a>
                            </div>
                            <div class="compare-item">
                                <div class="row">
                                    <div class="col-45">
                                        <div class="compare-img">
                                            <img src="image/system/xe4.jpg" />
                                        </div>
                                    </div>
                                    <div class="col-55">
                                        <div class="compare-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3>
                                            <span class="day">12/06/2018 20:57</span>
                                            <p>Mazda6 và Toyota Corolla Altis là hai mẫu sedan thuộc hai phân khúc khác nhau. Tuy nhiên, trong tầm giá trên dưới 850 triệu đồng, hai mẫu xe này lại cạnh tranh khá khốc liệt.</p>
                                            <a href="#"><i class="fas fa-caret-right"></i>Sedan hạng D, mua Mazda 6 hay Toyota Camry?</a>
                                            <br />
                                            <a href="#"><i class="fas fa-caret-right"></i>499 triệu động, mua Kia Cerato SMT hay Hyundai Accent ...</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <section class="section quangcao" style="text-align: center;">
                            <img style="width: 100%;" src="image/system/baner2.gif" />
                        </section>--%>
                    </div>
                    <div class="col-30">
                        <aside class="aside-site">
                            <section class="section news">
                                <div class="ema_title">
                                    <a class="ema_txt" href="#">Tin tức</a>
                                </div>
                                <div class="news-list-item">
                                    <div class="news-item">
                                        <img src="image/system/xe4.jpg" />
                                        <div class="news-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3>
                                            <span class="day">12/06/2018 20:57</span>
                                        </div>
                                    </div>

                                    <div class="news-item">
                                        <img src="image/system/xe4.jpg" />
                                        <div class="news-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3>
                                            <span class="day">12/06/2018 20:57</span>
                                        </div>
                                    </div>

                                    <div class="news-item">
                                        <img src="image/system/xe4.jpg" />
                                        <div class="news-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3>
                                            <span class="day">12/06/2018 20:57</span>
                                        </div>
                                    </div>

                                    <div class="news-item">
                                        <img src="image/system/xe4.jpg" />
                                        <div class="news-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3>
                                            <span class="day">12/06/2018 20:57</span>
                                        </div>
                                    </div>

                                </div>
                            </section>
                            
<%--                            <section class="section promotion">
                                <div class="ema_title">
                                    <a class="ema_txt" href="#">Khuyến mãi</a>
                                </div>
                                <div class="promotion-list-item">
                                    <div class="promotion-item">
                                        <img src="image/system/xe4.jpg" />
                                        <div class="promotion-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3>
                                            <span class="day">12/06/2018 20:57</span>
                                        </div>
                                    </div>
                                    
                                    <div class="promotion-item">
                                        <img src="image/system/xe4.jpg" />
                                        <div class="promotion-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3>
                                            <span class="day">12/06/2018 20:57</span>
                                        </div>
                                    </div>
                                    <div class="promotion-item">
                                        <img src="image/system/xe4.jpg" />
                                        <div class="promotion-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3>
                                            <span class="day">12/06/2018 20:57</span>
                                        </div>
                                    </div>

                                </div>
                            </section>--%>

                        </aside>
                    </div>
                </div>
            </div>

        </div>

    </main>
</asp:Content>

