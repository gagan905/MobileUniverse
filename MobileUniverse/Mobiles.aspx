<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Mobiles.aspx.cs" Inherits="MobileUniverse.Mobiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="mobileForm" runat="server"><br /><br />
        <h3>Samsung Mobiles</h3><br /><br />
        <asp:ListView ID="ddlMobiles" runat="server" DataSourceID="MobilesList" DataKeyNames="Id" GroupItemCount="4">
           
            
            <GroupTemplate>
                <tr runat="server" id="itemPlaceholderContainer">
                    <td runat="server" id="itemPlaceholder"></td>
                </tr>
            </GroupTemplate>
           
          <ItemTemplate >
            <td runat="server" class="shadow">
                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" visible="false"/><br />
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>' CssClass="img"/><br />
               <b>Mobile Name:</b> 
                <asp:Label Text='<%# Eval("mobile_name") %>' runat="server" ID="mobile_nameLabel" /><br />
                <b>Brand : </b>
                <asp:Label Text='<%# Eval("brand") %>' runat="server" ID="brandLabel" /><br />
               <b>Features : </b>
                <asp:Label Text='<%# Eval("features") %>' runat="server" ID="featuresLabel" /><br />
               <b>Price : $</b>
                <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                <b>Color : </b>
                <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
                 <asp:Button runat="server" Text="View" CssClass="btn btn-success form-control btnHome" CommandArgument='<%# Eval("Id") %>' onclick="ViewPage"/>
               
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
        <asp:SqlDataSource runat="server" ID="MobilesList" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Mobiles] WHERE [brand] = 'Samsung'"></asp:SqlDataSource>

        <br /><br />
        <h3>Iphones</h3><br /><br />
        <asp:ListView ID="ListView1" runat="server" DataSourceID="AppleMobiles" DataKeyNames="Id" GroupItemCount="4">
         <GroupTemplate>
                <tr runat="server" id="itemPlaceholderContainer">
                    <td runat="server" id="itemPlaceholder"></td>
                </tr>
            </GroupTemplate>
          
           <ItemTemplate >
            <td runat="server" class="shadow">
                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" visible="false"/><br />
                 <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("image") %>' CssClass="img"/><br />
               <b>Mobile Name:</b> 
                <asp:Label Text='<%# Eval("mobile_name") %>' runat="server" ID="mobile_nameLabel" /><br />
                <b>Brand : </b>
                <asp:Label Text='<%# Eval("brand") %>' runat="server" ID="brandLabel" /><br />
               <b>Features : </b>
                <asp:Label Text='<%# Eval("features") %>' runat="server" ID="featuresLabel" /><br />
               <b>Price : $</b>
                <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                <b>Color : </b>
                <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
                <asp:Button runat="server" Text="View" CssClass="btn btn-success form-control btnHome" CommandArgument='<%# Eval("Id") %>' onclick="ViewPage"/>
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

        <asp:SqlDataSource runat="server" ID="AppleMobiles" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Mobiles] WHERE [brand] = 'Apple'"></asp:SqlDataSource>

        <br /><br />
        <h3>Nokia</h3>
        <br /><br />
        <asp:ListView ID="ListView2" runat="server" DataSourceID="NokiaMobiles" DataKeyNames="Id" GroupItemCount="4">
            
            <GroupTemplate>
                <tr runat="server" id="itemPlaceholderContainer">
                    <td runat="server" id="itemPlaceholder"></td>
                </tr>
            </GroupTemplate>
     
           <ItemTemplate >
            <td runat="server" class="shadow">
                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" visible="false"/><br />
                 <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("image") %>' CssClass="img"/><br />
               <b>Mobile Name:</b> 
                <asp:Label Text='<%# Eval("mobile_name") %>' runat="server" ID="mobile_nameLabel" /><br />
                <b>Brand : </b>
                <asp:Label Text='<%# Eval("brand") %>' runat="server" ID="brandLabel" /><br />
               <b>Features : </b>
                <asp:Label Text='<%# Eval("features") %>' runat="server" ID="featuresLabel" /><br />
               <b>Price : $</b>
                <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                <b>Color : </b>
                <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
                 <asp:Button runat="server" Text="View" CssClass="btn btn-success form-control btnHome" CommandArgument='<%# Eval("Id") %>' onclick="ViewPage"/>
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


        <asp:SqlDataSource runat="server" ID="NokiaMobiles" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Mobiles] WHERE [brand]='Nokia'"></asp:SqlDataSource>
    </form>
</asp:Content>
