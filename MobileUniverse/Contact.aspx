<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MobileUniverse.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="row">
          
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 contact">
                <h2>Contact US</h2>
               
                
                    <div class="form-group">
                    <asp:Label ID="lblName" runat="server" Text="Name" AssociatedControlID="RequiredFieldValidator1"></asp:Label>
                    <asp:TextBox ID="Name" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ControlToValidate="Name" CssClass="danger"></asp:RequiredFieldValidator>
                    </div>
                   
                    <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="Email" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter email" ControlToValidate="Email" CssClass="danger"></asp:RequiredFieldValidator>
                        
                    </div>

                    <div class="form-group">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                    <asp:TextBox ID="Phone" runat="server" CssClass="form-control"></asp:TextBox>
                    
                    </div>

                    <div class="form-group">
                    <asp:Label ID="lblSubject" runat="server" Text="Subject"></asp:Label>
                    <asp:TextBox ID="Subject" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                    <asp:Label ID="lblMessage" runat="server" Text="Message"></asp:Label>
                    <asp:TextBox ID="Message" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnContact" runat="server" Text="Contact" CssClass="btn btn-success"/><br/><br />
                    
            </div>
                    
            </div>

        </form>
</asp:Content>
