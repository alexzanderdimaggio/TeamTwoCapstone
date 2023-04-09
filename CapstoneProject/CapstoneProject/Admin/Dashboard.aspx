<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CapstoneProject.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pcoded-content" align-items="center">
        <div class="pcoded-inner-content">
            <div class="main-body">
                <div class="page-wrapper" style="margin-left: -20px;">

                    <div class="page-body">
                        <div class="row">
                            <!-- card1 start -->
                            <div class="col-md-6 col-xl-3">
                                <div class="card widget-card-1">
                                    <div class="card-block-small">
                                        <i class="icofont icofont-pie-chart bg-c-blue card1-icon"></i>
                                        <span class="text-c-blue f-w-600">Categories</span> 
                                        <div>
                                            <span class="f-left m-t-10 text-muted">
                                                <i class="text-c-blue f-16 icofont icofont-warning m-r-10"></i>
                                                <a href="Category.aspx" style="margin-top: 10px; display: inline-block;">View Details</a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- card1 end -->
                            <!-- card1 start -->
                            <div class="col-md-6 col-xl-3">
                                <div class="card widget-card-1">
                                    <div class="card-block-small">
                                        <i class="icofont icofont-ui-home bg-c-pink card1-icon"></i>
                                        <span class="text-c-pink f-w-600">Products</span>
                                        <div>
                                            <span class="f-left m-t-10 text-muted">
                                                <i class="text-c-pink f-16 icofont icofont-calendar m-r-10"></i>
                                                <a href="Product.aspx" style="margin-top: 10px; display: inline-block;">View Details</a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- card1 end -->
                            <!-- card1 start -->
                            <div class="col-md-6 col-xl-3">
                                <div class="card widget-card-1">
                                    <div class="card-block-small">
                                        <i class="icofont icofont-social-twitter bg-c-yellow card1-icon"></i>
                                        <span class="text-c-yellow f-w-600">Users</span>
                                        <div>
                                            <span class="f-left m-t-10 text-muted">
                                                <i class="text-c-yellow f-16 icofont icofont-refresh m-r-10"></i>
                                                <a href="Users.aspx" style="margin-top: 10px; display: inline-block;">View Details</a>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- card1 end -->
</asp:Content>
