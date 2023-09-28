using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;


namespace WebApplication1
{
    public partial class TraCuu : System.Web.UI.Page
    {
        HoaDAO hoadao = new HoaDAO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btTraCuu_Click(object sender, EventArgs e)
        {
            int tu = int.Parse (txtGiaTu.Text);
            int den = int.Parse(txtGiaDen.Text);
            rpthoa.DataSource = hoadao.TraCuuTheoGia(tu, den);
            rpthoa.DataBind();
        }
    }
}