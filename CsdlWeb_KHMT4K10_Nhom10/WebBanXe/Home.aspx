<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageClient.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="WebBanXe_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main id="content">
        <section class="section slide">
            <div class="owl-carousel">
                <div>
                    <img src="image/system/xe2.jpg" />
                </div>
                <div>
                    <img src="image/system/xe1.jpg" />
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
                    <img src="image/system/xe2.jpg" />
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
        <section class="section "></section>
    </main>
</asp:Content>

