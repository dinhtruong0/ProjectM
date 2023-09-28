<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="XemHoa.aspx.cs" Inherits="WebApplication1.XemHoa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <div class="form-inline">
        Danh Mục Loại:<asp:DropDownList ID="ddloai" runat="server" CssClass="form-control" AutoPostBack="true" DataSourceID="dsLoai" DataTextField="TenLoai" DataValueField="MaLoai"></asp:DropDownList>
        <div class="row">
            <asp:Repeater ID="rpthoa" runat="server" DataSourceID="dsHoa">
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
                            <asp:Button ID="btBanhang" runat="server" Text="Bán Hàng" CssClass="btn btn-success" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>   
        <div>
            <asp:SqlDataSource ID="dsLoai" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Loai]"></asp:SqlDataSource>        
            <asp:SqlDataSource ID="dsHoa" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" 
                SelectCommand="SELECT * FROM [Hoa] WHERE ([MaLoai] = @MaLoai)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddloai" Name="MaLoai" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
    </asp:Content>
