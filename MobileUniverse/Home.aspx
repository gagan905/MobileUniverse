<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MobileUniverse.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="homeForm" runat="server">
          <div class="row">
        <div class="col-lg-12 col-md-12">
            <div id="banner"></div>    
              
            </div>

    </div>

          <asp:SqlDataSource runat="server" ID="MobilesList" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Mobiles]"></asp:SqlDataSource>


    <asp:ListView ID="ListView1" runat="server" DataSourceID="MobilesList" DataKeyNames="Id" GroupItemCount="3">
       
         
       
        <GroupTemplate>
            <tr runat="server" id="itemPlaceholderContainer">
                <td runat="server" id="itemPlaceholder"></td>
            </tr>
        </GroupTemplate>
       
        <ItemTemplate >
            <td runat="server" class="shadow">
                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" visible="false"/><br />
                 <asp:Image ID="Image12" runat="server" ImageUrl='<%# Eval("image") %>' CssClass="img"/><br />
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
                <asp:Button runat="server" Text="View" CssClass="btn btn-success form-control btnHome" CommandArgument='<%# Eval("Id") %>' onclick="MobileViewPage"/>
               
            </td>
        </ItemTemplate>
        
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server" >
                        <table runat="server" id="groupPlaceholderContainer" >
                            <tr runat="server" id="groupPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" ></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">Id:
                <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                <b>Mobile : </b>
                <asp:Label Text='<%# Eval("mobile_name") %>' runat="server" ID="mobile_nameLabel" /><br />
               <b>Brand : </b>
                <asp:Label Text='<%# Eval("brand") %>' runat="server" ID="brandLabel" /><br />
                <b>Features : </b>
                <asp:Label Text='<%# Eval("features") %>' runat="server" ID="featuresLabel" /><br />
               <b>Price : </b> price:
                <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" /><br />
                <b>Color : </b>
                <asp:Label Text='<%# Eval("color") %>' runat="server" ID="colorLabel" /><br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>


     </form>
   


   
</asp:Content>
