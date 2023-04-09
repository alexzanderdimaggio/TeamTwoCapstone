<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="BrowseRestaurants.aspx.cs" Inherits="CapstoneProject.User.BrowseRestaurants" %>

<%@ Import Namespace="CapstoneProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- food section -->

    <section class="food_section layout_padding">
        <div class="container">
            <div class="heading_container heading_center">
                <div class="align-self-end">
                    <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <h2>Our Partners
                </h2>
            </div>
            <div class="filters-content">
                <div class="row grid">
                    <asp:Repeater ID="rRestaurants" runat="server" OnItemCommand="rRestaurants_ItemCommand">
                        <ItemTemplate>
                            <div class="col-sm-6 col-lg-4 all">
                                <div class="box">
                                    <div>
                                        <div class="img-box">
                                            <img src="../TemplateFiles/Images/<%# Utils.GetImageUrlAdmin( Eval("ImageUrl")) %>" alt="">
                                        </div>
                                        <div class="detail-box">
                                            <h5><%# Eval("Name") %></h5>
                                            <p><%# Eval("Address") %> <%# Eval("PostCode")%></p>
                                            <p>Tel: <%# Eval("PhoneNumber") %></p>
                                            <p>Email: <%# Eval("Email") %></p>
                                            <div class="options" style="background-color: #222831 ; padding: 10px; text-align: center;">
                                                <asp:Button runat="server" Text="Order Now" OnClick="OrderNowButton_Click" Style="background-color: #d9534f; color: #fff; border: none; padding: 10px 20px; font-size: 16px; cursor: pointer; margin: 0 auto;" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <%--<div class="btn-box">
                <a href="">View More
        </a>
            </div>--%>
        </div>
    </section>

    <!-- end food section -->

</asp:Content>
