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
        if (Session["LoggedIn"] == null)
        {

            loggedIn.Visible = false;
            notLogin.Visible = true;
            //Response.Redirect("~/WebBanXe/DangNhap.aspx");
        }
        else
        {
            loggedIn.Visible = true;
            notLogin.Visible = false;

            loggedIn.Text = (string)(Session["HoTen"]);
        }
    }
}
