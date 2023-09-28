using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class ThemHoa : System.Web.UI.Page
    {
        loaiDAO loaiDAO = new loaiDAO();
        HoaDAO HoaDAO = new HoaDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddloai.DataSource = loaiDAO.doctatca();
                ddloai.DataTextField = "tenloai";
                ddloai.DataValueField = "maloai";
                ddloai.DataBind();
            }
        }

        protected void btxuly_Click(object sender, EventArgs e)
        {
            string tenhoa = txtTenhoa.Text;
            int gia = int.Parse(txtGia.Text);
            string hinh = "";
            if(FHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads/hinh_san_pham") + "/" + FHinh.FileName;
                hinh = FHinh.FileName;
            }
            else
            {
                hinh = "Twitter-logo-png.png";
            }
            int maloai = int.Parse(ddloai.SelectedValue);
            DateTime ngaydang = clNgaycapnhat.SelectedDate;
            int ketqua = HoaDAO.them(tenhoa, gia, hinh, maloai, ngaydang, 0);
            if(ketqua>0)
            {
                lbthongbao.Text = "Đã thêm 1 sản phẩm";
            }
            else
            {
                lbthongbao.Text = "Thêm hoa thất bại";
            }
        }
    }
}