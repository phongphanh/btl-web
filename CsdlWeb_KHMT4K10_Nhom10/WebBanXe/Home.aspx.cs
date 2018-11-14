using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebBanXe_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddl_Gia.Items.Add(new ListItem("-- Tìm kiếm theo giá --", "-1"));
            ddl_Gia.Items.Add(new ListItem("Dưới 500 triệu", "0,500"));
            ddl_Gia.Items.Add(new ListItem("500 triệu - 1 tỷ", "500,1000"));
            ddl_Gia.Items.Add(new ListItem("1 tỷ - 3 tỷ", "1000,3000"));
            ddl_Gia.Items.Add(new ListItem("3 tỷ - 5 tỷ", "3000,5000"));
            ddl_Gia.Items.Add(new ListItem("Trên 5 tỷ", "5000,9999999999999999999"));
        }
        if(Session["current_page"] == null)
        {
            Session["current_page"] = 0;
        }
        items();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string compare = ddl_Gia.SelectedValue;
        string[] price = compare.Split(',');

        if(price[0] != "-1")
        {
            Response.Redirect("~/WebBanXe/SanPham_Gia.aspx?from_gia="+price[0]+"&to_gia="+price[1]+"&gia="+ ddl_Gia.SelectedItem.Text);
        }
    }

    protected void ddl_Gia_SelectedIndexChanged(object sender, EventArgs e)
    {
 
    }

    protected void cmdPrev_Click(object sender, EventArgs e)
    {
        try
        {
            Session["current_page"]  =  (int)Session["current_page"] - 1;
            items();
        }
        catch (Exception ex)
        {
            
        }
    }

    protected void cmdNext_Click(object sender, EventArgs e)
    {
        try
        {
            Session["current_page"] = (int)Session["current_page"] + 1;
            items();
        }
        catch (Exception ex)
        {
            
        }
    }

    protected void items()
    {
        SqlDataSource1.DataBind();
        PagedDataSource objDs = new PagedDataSource();

        DataView dv = (DataView)SqlDataSource1.Select( new DataSourceSelectArguments());
        objDs.DataSource = dv;
        objDs.PageSize = 20;
        objDs.AllowPaging = true;
        objDs.CurrentPageIndex = (int)Session["current_page"];
        
        index_page.Text = (objDs.CurrentPageIndex + 1).ToString() + "/" + objDs.PageCount; 

        cmdPrev.Enabled = !objDs.IsFirstPage;
        cmdNext.Enabled = !objDs.IsLastPage;
        DataList1.DataSource = objDs;
        DataList1.DataBind();

    }


    protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
    {

    }
}