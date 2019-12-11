<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="MobileUniverse.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="productForm" runat="server">
        <div class="form-group">
            <br />
                <div class="col-sm-12"><asp:ListBox ID="lstCart" runat="server" CssClass="form-control"></asp:ListBox></div><br />
             <asp:HyperLink ID="HomeId" runat="server" href="Home.aspx" CssClass="btn btn-success">Continue Shopping</asp:HyperLink>
            <asp:Button ID="btnRemove" runat="server" OnClick="Remove_Click" Text="Remove Item" CssClass="btn btn-success" />
            <asp:Button ID="btnEmpty" runat="server" OnClick="Empty_Click" Text="Empty List" CssClass="btn btn-success" />
            </div>
    </form>
</asp:Content>
