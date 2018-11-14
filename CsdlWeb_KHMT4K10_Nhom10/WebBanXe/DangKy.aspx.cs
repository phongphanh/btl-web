using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class WebBanXe_DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["HoTen"].DefaultValue = txt_hoten.Text;
        SqlDataSource1.InsertParameters["Email"].DefaultValue = txt_email.Text; 
        SqlDataSource1.InsertParameters["Password"].DefaultValue = txt_password.Text; 
        SqlDataSource1.InsertParameters["SDT"].DefaultValue = txt_sdt.Text; 
        SqlDataSource1.InsertParameters["Tinh_ThanhPho"].DefaultValue = txt_tinh_tp.Text; 
        SqlDataSource1.InsertParameters["Quan_Huyen"].DefaultValue = txt_quan_huyen.Text; 
        SqlDataSource1.InsertParameters["DiaChi"].DefaultValue = txt_diachi.Text; 
        SqlDataSource1.InsertParameters["LoaiTK"].DefaultValue = "khachhang";
        SqlDataSource1.InsertParameters["TrangThaiTK"].DefaultValue = 1.ToString();
        string query = "SELECT Email FROM TaiKhoan WHERE Email = '"+txt_email.Text+"'";
        if (IsPostBack)
        {
            try
            {
                string connectString = SqlDataSource1.ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectString))

                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    connection.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        // Check is the reader has any rows at all before starting to read.
                        if (reader.HasRows)
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Thông báo", "alert('Tài khoản đã tồn tại!')", true);
                        }
                        else
                        {
                            SqlDataSource1.Insert();
                            Object user = new Object();
                            
                            Session["LoggedIn"] = true;
                            Session["Email"] = txt_email.Text;
                            Session["Password"] = txt_password.Text;
                            Session["HoTen"] = txt_hoten.Text;
                            Session["SDT"] = txt_sdt.Text;

                            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Thông báo", "alert('Đăng ký thành công')", true);
                            Response.Redirect("~/WebBanXe/Home.aspx");
                        }
                    }
                }
            }
            catch (Exception ex)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Thông báo", "alert('Đăng ký không thành công!')", true);
            }
        }
    }
}