<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="ThemHoa.aspx.cs" Inherits="WebApplication1.ThemHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <div class="form-group">
        Danh mục <asp:DropDownList ID="ddloai" runat="server" CssClass="form-control" DataTextField="TenLoai" DataValueField="TenLoai"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlData" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT [TenLoai] FROM [Loai]"></asp:SqlDataSource>
    </div>
    <div class="form-group">
        Tên hoa <asp:TextBox ID="txtTenhoa" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        Giá <asp:TextBox ID="txtGia" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        Ngày cập nhật <asp:Calendar ID="clNgaycapnhat" runat="server"></asp:Calendar>
    </div>
    <div class="form-group">
        Hình <asp:FileUpload ID="FHinh" runat="server" CssClass="form-control" />
    </div>
    <div class="form-group">
        Xử lý <asp:Button ID="btxuly" runat="server" Text="Thêm mới" CssClass="btn btn-info" OnClick="btxuly_Click" />
    </div>
    <div class="form-group">
        Thông báo<asp:Label ID="lbthongbao" runat="server" CssClass="form-control" Text="Label"></asp:Label>
    </div>
</asp:Content>
