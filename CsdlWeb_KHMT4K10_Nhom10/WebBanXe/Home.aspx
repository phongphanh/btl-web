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
                            <asp:DropDownList ID="ddl_Gia" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_Gia_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fas fa-search"></i></asp:LinkButton>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOToConnectionString %>" SelectCommand="SELECT [ID_Xe], [TenXe], [KhuVuc], [Anh], [Gia] FROM [Xe] WHERE ([Da_Ban] LIKE '%' + @Da_Ban + '%')">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="False" Name="Da_Ban" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <div class="ema_title">
                                <a class="ema_txt" href="#">Xe ô tô</a>
                            </div>
                            <div class="product-list">
                                <div class="row" style="margin: 5px -5px;">



                                    <asp:DataList ID="DataList1" runat="server" DataKeyField="ID_Xe" Width="100%" RepeatColumns="4">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("ID_Xe", "ChiTietSp.aspx?ID_Xe={0}") %>'>

                                                <div class="product-item">
                                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Anh", "{0}") %>' />
                                                    <p class="item-title">
                                                        <b>
                                                            <asp:Label ID="TenXeLabel" runat="server" Text='<%# Eval("TenXe") %>' /></b>
                                                    </p>
                                                    <label>Xe mới</label>
                                                    <asp:Label CssClass="price" ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' />
                                                    <p class="item-add">
                                                        <asp:Label ID="KhuVucLabel" runat="server" Text='<%# Eval("KhuVuc") %>' />
                                                    </p>
                                                    <div class="numb-img">
                                                        <i class="fas fa-camera"></i>
                                                        <span>10</span>
                                                    </div>
                                                </div>
                                            </asp:HyperLink></ItemTemplate></asp:DataList><div class="site_paded">
                                        <asp:Button ID="cmdPrev" runat="server" Text="<< " OnClick="cmdPrev_Click" />
                                        <asp:Label ID="index_page" Text="" runat="server" />
                                        <asp:Button ID="cmdNext" runat="server" Text=" >>" OnClick="cmdNext_Click" />
                                    </div>

                                </div>
                            </div>
                            <div class="site-btn">
                           <%--     <asp:LinkButton CssClass="btn btn-red" ID="LinkButton3" PostBackUrl="~/WebBanXe/SanPham.aspx" runat="server">
                                    Xem thêm xe
                                </asp:LinkButton>--%>
                            </div>
                        </section>
                        <section class="section quangcao" style="text-align: center;">
                            <img style="width: 100%;" src="image/system/baner2.gif" /> </section><section class="section tuvan">
                            <div class="ema_title">
                                <a class="ema_txt" href="#">Tư vấn</a> </div><div class="tuvan-list">
                                <div class="row">
                                    <div class="col-45">
                                        <div class="tuvan-item">
                                            <img src="image/system/xe4.jpg" /> <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> <p>Mazda6 và Toyota Corolla Altis là hai mẫu sedan thuộc hai phân khúc khác nhau. Tuy nhiên, trong tầm giá trên dưới 850 triệu đồng, hai mẫu xe này lại cạnh tranh khá khốc liệt.</p><a href="#"><i class="fas fa-caret-right"></i>Sedan hạng D, mua Mazda 6 hay Toyota Camry?</a> <br />
                                            <a href="#"><i class="fas fa-caret-right"></i>499 triệu động, mua Kia Cerato SMT hay Hyundai Accent ...</a> </div></div><div class="col-55">
                                        <div class="">
                                            <div class="col-50">
                                                <div class="tuvan-item">
                                                    <img src="image/system/xe4.jpg" /> <h4 class="h4-title">Nên mua Kia Cerato SMT hay Toyota Vios 1.5E MT chạy dịch vụ?</h4><span class="day">12/06/2018 20:57</span> </div></div><div class="col-50">
                                                <div class="tuvan-item">
                                                    <img src="image/system/xe4.jpg" /> <h4 class="h4-title">Nên mua Kia Cerato SMT hay Toyota Vios 1.5E MT chạy dịch vụ?</h4><span class="day">12/06/2018 20:57</span> </div></div><div class="col-50">
                                                <div class="tuvan-item">
                                                    <img src="image/system/xe4.jpg" /> <h4 class="h4-title">Nên mua Kia Cerato SMT hay Toyota Vios 1.5E MT chạy dịch vụ?</h4><span class="day">12/06/2018 20:57</span> </div></div><div class="col-50">
                                                <div class="tuvan-item">
                                                    <img src="image/system/xe4.jpg" /> <h4 class="h4-title">Nên mua Kia Cerato SMT hay Toyota Vios 1.5E MT chạy dịch vụ?</h4><span class="day">12/06/2018 20:57</span> </div></div></div></div></div></div></section><section class="section compare">
                            <div class="ema_title">
                                <a class="ema_txt" href="#">So sánh xe</a> </div><div class="compare-item">
                                <div class="row">
                                    <div class="col-45">
                                        <div class="compare-img">
                                            <img src="image/system/xe4.jpg" /> </div></div><div class="col-55">
                                        <div class="compare-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> <p>Mazda6 và Toyota Corolla Altis là hai mẫu sedan thuộc hai phân khúc khác nhau. Tuy nhiên, trong tầm giá trên dưới 850 triệu đồng, hai mẫu xe này lại cạnh tranh khá khốc liệt.</p><a href="#"><i class="fas fa-caret-right"></i>Sedan hạng D, mua Mazda 6 hay Toyota Camry?</a> <br />
                                            <a href="#"><i class="fas fa-caret-right"></i>499 triệu động, mua Kia Cerato SMT hay Hyundai Accent ...</a> </div></div></div></div></section><section class="section quangcao" style="text-align: center;">
                            <img style="width: 100%;" src="image/system/baner2.gif" /> </section></div><div class="col-30">
                        <aside class="aside-site">
                            <section class="section news">
                                <div class="ema_title">
                                    <a class="ema_txt" href="#">Tin tức</a> </div><div class="news-list-item">
                                    <div class="news-item">
                                        <img src="image/system/xe4.jpg" /> <div class="news-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div><div class="news-item">
                                        <img src="image/system/xe4.jpg" /> <div class="news-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div><div class="news-item">
                                        <img src="image/system/xe4.jpg" /> <div class="news-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div><div class="news-item">
                                        <img src="image/system/xe4.jpg" /> <div class="news-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div></div></section><section class="section promotion">
                                <div class="ema_title">
                                    <a class="ema_txt" href="#">Khuyến mãi</a> </div><div class="promotion-list-item">
                                    <div class="promotion-item">
                                        <img src="image/system/xe4.jpg" /> <div class="promotion-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div><div class="promotion-item">
                                        <img src="image/system/xe4.jpg" /> <div class="promotion-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div><div class="promotion-item">
                                        <img src="image/system/xe4.jpg" /> <div class="promotion-text">
                                            <h3 class="h3-title">Chọn Mazda6 2018 hay Toyota Corolla Altis 2018 trong tầm giá 850 triệu đồng</h3><span class="day">12/06/2018 20:57</span> </div></div></div></section></aside></div></div></div></div></main></asp:Content>