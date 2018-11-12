<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageClient.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="WebBanXe_DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
         <div class="container">
             <div class="row">              
                <h1 style="text-align: center;">Trang đăng ký</h1>
                <div class="dangky-wrap" style="width: 350px; margin: 0 auto;">
                    <asp:Label ID="Label1" runat="server" Text="Họ tên: "></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_hoten" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txt_hoten" ForeColor="Red" Text="Họ tên không được để trống" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Email: "></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txt_email" ForeColor="Red" Text="Email không được để trống" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Password: "></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txt_password" ForeColor="Red" Text="Mật khẩu không được để trống" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Confirm password: "></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_confirm" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txt_confirm" ForeColor="Red" Text="Xác nhận mật khẩu không được để trống" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="SDT: "></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_sdt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txt_sdt" ForeColor="Red" Text="Số điện thoại không được để trống" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Tỉnh/Thành phố: "></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_tinh_tp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txt_tinh_tp" ForeColor="Red" Text="Tỉnh/Thành phố không được để trống" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Quận/Huyện: "></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_quan_huyen" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txt_quan_huyen" ForeColor="Red" Text="Quận/Huyện không được để trống" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Địa chỉ: "></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_diachi" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txt_diachi" ForeColor="Red" Text="Địa chỉ không được để trống" ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:CheckBox ID="cbx_agree" required autofocus runat="server"  /> Tôi đồng ý với Chính sách bảo mật và Điều khoản sử dụng của OtoS.vn
                    <%--<asp:RequiredFieldValidator ControlToValidate="cbx_agree" ForeColor="Red" Text="Vui lòng chấp nhận điều khoản" ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Đăng ký" />
                </div>
             </div>
         </div>
    </div>
</asp:Content>

