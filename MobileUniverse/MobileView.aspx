<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MobileView.aspx.cs" Inherits="MobileUniverse.MobileView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="homeForm" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Mobiles] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="id" Name="Id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id" GroupItemCount="3">
        
        <GroupTemplate>
            <tr runat="server" id="itemPlaceholderContainer">
                <td runat="server" id="itemPlaceholder"></td>
            </tr>
        </GroupTemplate>
       
        <ItemTemplate>
            <td runat="server" class="shadow"> 
                <div class="row">
                    <div class="col-lg-6 col-sm-6">
                         <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" visible="false"/><br />
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' CssClass="img"/><br />
                    </div>
                    <div class="col-lg-6 col-sm-6">
               <h3> <asp:Label Text='<%# Eval("mobile_name") %>' runat="server" ID="mobile_nameLabel" /><br /></h3>
                <b>Brand : </b>
                <asp:Label Text='<%# Eval("brand") %>' runat="server" ID="brandLabel" /><br />
                <b>Features : </b>
                <asp:Label Text='<%# Eval("features") %>' runat="server" ID="featuresLabel" /><br />
               
               <b>Price : </b>$
                <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                <b>Color : </b>
                <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
                <asp:Button runat="server" Text="Add To Cart" CssClass="btn btn-success form-control btnHome" CommandArgument='<%# Eval("Id") %>' onclick="btnAdd_Click" CommandName="addCart"/>
                </div>
                </div>
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="groupPlaceholderContainer" style="" border="0">
                            <tr runat="server" id="groupPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
       
    </asp:ListView>
    </form>
    

</asp:Content>
