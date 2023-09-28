<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="TraCuu.aspx.cs" Inherits="WebApplication1.TraCuu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <div class="form-inline">
        Giá từ<asp:TextBox ID="txtGiaTu" runat="server" CssClass="form-control"></asp:TextBox>
        Giá từ<asp:TextBox ID="txtGiaDen" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:Button ID="btTraCuu" runat="server" Text="Tra Cứu" CssClass="btn btn-info" OnClick="btTraCuu_Click" />
    </div>
    <div class="row">
            <asp:Repeater ID="rpthoa" runat="server">
                <ItemTemplate>
                    <div class="col-md-3 item">
                        <div class="i">
                            <a>
                                <img src='<%# Eval("Hinh","Uploads/hinh_san_pham/{0}") %>' />
                            </a>
                        </div>
                        <div class="t">
                            <asp:Label ID="lbHoa" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                             Giá Bán: <asp:Label ID="lbGia" runat="server" Text='<%# Eval("Gia", "{0: #,##0} Đồng") %>'></asp:Label>
                            <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" CssClass="btn btn-success" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
</asp:Content>

