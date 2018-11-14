using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebBanXe_SanPham_Gia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        title_gia.Text = "Xe ô tô "+ Request.Params["gia"];
    }

    private string convert_gia(int gia)
    {
        string str_gia = "";
        string[] num_gia = gia.ToString().Split(' ');
        string trieu = "";
        string ty = "";
        for(int i = 0 ; i < num_gia.Length - 1; i++)
        {
            if (i >= num_gia.Length-4)
            {
                ty += num_gia[i];
            }else
            {
                trieu += num_gia[i];
            }
        }
        str_gia = ty + " tỷ " + trieu + " triệu. ";
        return str_gia;
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}