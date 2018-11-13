<%@ Page Title="" Language="C#" MasterPageFile="~/WebBanXe/MasterPageClient.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="WebBanXe_DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content">
        <div class="container">
            <div class="row">
                <br />
                <br />
                <h1 style="text-align: center;">Trang đăng ký</h1>
                <br />


                <table class="dangky-wrap" style="width: 700px; margin: 0 auto;background-color: #cff3e4; border-radius: 10px;">
                    <tbody style="">

                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Họ tên: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txt_hoten" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="txt_hoten" ForeColor="Red" Text="Họ tên không được để trống" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ValidationExpression="\w{0,50}" ControlToValidate="txt_hoten" Text="Tên không quá 50 ký tự"  ForeColor="Red" ID="reqTen" runat="server" ErrorMessage="RegularExpressionValidator" Display="Dynamic"></asp:RegularExpressionValidator>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Email: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red" Text="Email không được để trống" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator Display="Dynamic" Text="[6 - 50 character]@gmail.com" ValidationExpression="(\w{1,50})@(\w{1,})[.]com" ControlToValidate="txt_email" ForeColor="Red" ID="repEmail" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>                      
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Password: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txt_password" type="password" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_password" Display="Dynamic" ForeColor="Red" Text="Mật khẩu không được để trống" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ValidationExpression="\w{6,50}" ControlToValidate="txt_password" Text="Mật khẩu chứa 6 - 50 ký tự, không dấu và không có dấu cách"  ForeColor="Red" ID="reqPassword" runat="server" ErrorMessage="RegularExpressionValidator" Display="Dynamic"></asp:RegularExpressionValidator>
                            
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Confirm password: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txt_confirm" type="password"  runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_confirm" Display="Dynamic" ForeColor="Red" Text="Xác nhận mật khẩu không được để trống" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                <asp:CompareValidator Display="Dynamic" Operator="Equal" ControlToValidate="txt_confirm" ControlToCompare="txt_password" Text="Xác nhận mật khẩu phải giống mật khẩu" ForeColor="Red" ID="cmpConfirm" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="SDT: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txt_sdt" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_sdt" Display="Dynamic" ForeColor="Red" Text="Số điện thoại không được để trống" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator Display="Dynamic" ValidationExpression="\d{10,11}" Text="số điện thoại khống đúng" ControlToValidate="txt_sdt" ForeColor="Red" ID="reqSdt" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Tỉnh/Thành phố: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txt_tinh_tp" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_tinh_tp" Display="Dynamic" ForeColor="Red" Text="Tỉnh/Thành phố không được để trống" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Quận/Huyện: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txt_quan_huyen" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_quan_huyen" Display="Dynamic" ForeColor="Red" Text="Quận/Huyện không được để trống" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Địa chỉ: "></asp:Label>
                                <br />
                                <asp:TextBox ID="txt_diachi" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="txt_diachi" Display="Dynamic" ForeColor="Red" Text="Địa chỉ không được để trống" ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <div class="dangky-wrap" style="width: 350px; margin: 0 auto;">
                    <input type="checkbox" required />Tôi đồng ý với chính sách bảo mật và điều khoản sử dụng của OtoS.vn
                    <br />
                    <br />
                    <asp:Button ID="btn_dangky" runat="server" Text="Đăng ký" OnClick="Button1_Click" />
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOToConnectionString %>" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [ID_TK] = @ID_TK" InsertCommand="INSERT INTO [TaiKhoan] ([HoTen], [Email], [Password], [SDT], [Tinh_ThanhPho], [Quan_Huyen], [DiaChi], [LoaiTK], [TrangThaiTK]) VALUES (@HoTen, @Email, @Password, @SDT, @Tinh_ThanhPho, @Quan_Huyen, @DiaChi, @LoaiTK, @TrangThaiTK)" SelectCommand="SELECT * FROM [TaiKhoan]" UpdateCommand="UPDATE [TaiKhoan] SET [HoTen] = @HoTen, [Email] = @Email, [Password] = @Password, [SDT] = @SDT, [Tinh_ThanhPho] = @Tinh_ThanhPho, [Quan_Huyen] = @Quan_Huyen, [DiaChi] = @DiaChi, [LoaiTK] = @LoaiTK, [TrangThaiTK] = @TrangThaiTK WHERE [ID_TK] = @ID_TK">
                    <DeleteParameters>
                        <asp:Parameter Name="ID_TK" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="HoTen" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="SDT" Type="String" />
                        <asp:Parameter Name="Tinh_ThanhPho" Type="String" />
                        <asp:Parameter Name="Quan_Huyen" Type="String" />
                        <asp:Parameter Name="DiaChi" Type="String" />
                        <asp:Parameter Name="LoaiTK" Type="String" />
                        <asp:Parameter Name="TrangThaiTK" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="HoTen" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="SDT" Type="String" />
                        <asp:Parameter Name="Tinh_ThanhPho" Type="String" />
                        <asp:Parameter Name="Quan_Huyen" Type="String" />
                        <asp:Parameter Name="DiaChi" Type="String" />
                        <asp:Parameter Name="LoaiTK" Type="String" />
                        <asp:Parameter Name="TrangThaiTK" Type="Int32" />
                        <asp:Parameter Name="ID_TK" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

