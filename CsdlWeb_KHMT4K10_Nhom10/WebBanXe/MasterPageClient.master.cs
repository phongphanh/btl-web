using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageClient : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoggedIn"] == null || (bool)Session["LoggedIn"] == false)
        {

            loggedIn.Visible = false;
            notLogin.Visible = true;
        }
        else
        {
            loggedIn.Visible = true;
            notLogin.Visible = false;

            name_user.Text = (string)(Session["HoTen"]);
            sdt_user.Text = (string)(Session["SDT"]);

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Thông báo", "alert('Đăng nhập thành công!')", true);
        }
    }

}
