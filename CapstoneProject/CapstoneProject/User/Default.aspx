<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CapstoneProject.User.Default" %>
<%@ Import Namespace="CapstoneProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- offer section -->

    <section class="offer_section layout_padding-bottom">
        <div class="offer_container">
            <div class="container ">
                <div class="row">
                    <asp:Repeater ID="rCategory" runat="server">
                        <ItemTemplate>
                            <div class="col-md-6">
                                <div class="box ">
                                    <div class="img-box">
                                        <a href="Menu.aspx?id=<%# Eval("CategoryId") %>">
                                            <img src="<%# Utils.GetImageUrl( Eval("ImageUrl")) %>" alt="">
                                        </a>
                                    </div>
                                    <div class="detail-box">
                                        <h5><%# Eval("Name") %>
                                        </h5>
                                        <h6>
                                            <span>20%</span> Off
                                        </h6>
                                        <a href="Menu.aspx?id=<%# Eval("CategoryId") %>">Order Now                  
                                            <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 456.029 456.029" style="enable-background: new 0 0 456.029 456.029;" xml:space="preserve">
                                                <g>
                                                    <g>
                                                        <path d="M345.6,338.862c-29.184,0-53.248,23.552-53.248,53.248c0,29.184,23.552,53.248,53.248,53.248
                     c29.184,0,53.248-23.552,53.248-53.248C398.336,362.926,374.784,338.862,345.6,338.862z" />
                                                    </g>
                                                </g>
                                                <g>
                                                    <g>
                                                        <path d="M439.296,84.91c-1.024,0-2.56-0.512-4.096-0.512H112.64l-5.12-34.304C104.448,27.566,84.992,10.67,61.952,10.67H20.48
                     C9.216,10.67,0,19.886,0,31.15c0,11.264,9.216,20.48,20.48,20.48h41.472c2.56,0,4.608,2.048,5.12,4.608l31.744,216.064
                     c4.096,27.136,27.648,47.616,55.296,47.616h212.992c26.624,0,49.664-18.944,55.296-45.056l33.28-166.4
                     C457.728,97.71,450.56,86.958,439.296,84.91z" />
                                                    </g>
                                                </g>
                                                <g>
                                                    <g>
                                                        <path d="M215.04,389.55c-1.024-28.16-24.576-50.688-52.736-50.688c-29.696,1.536-52.224,26.112-51.2,55.296
                     c1.024,28.16,24.064,50.688,52.224,50.688h1.024C193.536,443.31,216.576,418.734,215.04,389.55z" />
                                                    </g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                                <g>
                                                </g>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </section>

    <!-- end offer section -->

    <!-- about section -->

    <section class="about_section layout_padding-bottom">
        <div class="container">

            <div class="row">
                <div class="col-md-6 mt-5">
                    <div class="img-box">
                        <img src="../TemplateFiles/images/about-img.png" alt="">
                    </div>
                </div>
                <div class="col-md-6 mt-3">
                    <div class="detail-box">
                        <div class="heading_container">
                            <h2>We Are Foodie</h2>   
                        </div>
                        <p>
                            Welcome to Foodie, your go-to destination for delicious meals delivered straight to your door. 
                            We're passionate about food and believe that everyone should have access to restaurant-quality cuisine, no matter where they live.          
                        </p>
                        <a href="About.aspx">Read More</a
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end about section -->

    <!-- client section -->

    <section class="client_section layout_padding-bottom pt-5">
        <div class="container">
            <div class="heading_container heading_center psudo_white_primary mb_45">
                <h2>Hear From Our Celebrity Endorsers</h2>
            </div>
            <div class="carousel-wrap row ">
                <div class="owl-carousel client_owl-carousel">
                    <div class="item">
                        <div class="box">
                            <div class="detail-box">
                                <h6>Bill Gates</h6>
                                <h2>__________</h2>
                                <p>
                                    I've been blown away by the innovation and creativity behind Foodie. 
                                    It's the kind of innovation that reminds me of the early days of Xbox and Microsoft, when we were pushing the boundaries of what technology could do.              
                                </p>
                                <div style="display: inline-block;">
                                    <span style="display: inline-block; vertical-align: middle;">4.8</span>
                                    <img src="../TemplateFiles/images/star.png" alt="" style="width:20px; height:20px; display: inline-block; margin-left: 0px;">
                                </div>
                            </div>
                            <div class="img-box">
                                <img src="../TemplateFiles/images/client5.jpg" alt="" class="box-img">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="detail-box">
                                <h6>Bill Nye</h6>
                                <h2>__________</h2>
                                <p>
                                    Science rules, and so does Foodie! As a busy guy who's always exploring new ideas, I need a food delivery service that can keep up. 
                                    The website is like a laboratory of flavors and cuisines. So if you're hungry for something new, give Foodie a try. Trust me, it's a formula for success.
                                </p>
                                <div style="display: inline-block;">
                                    <span style="display: inline-block; vertical-align: middle;">4.6</span>
                                    <img src="../TemplateFiles/images/star.png" alt="" style="width:20px; height:20px; display: inline-block; margin-left: 0px;">
                                </div>
                            </div>
                            <div class="img-box">
                                <img src="../TemplateFiles/images/client6.jpg" alt="" class="box-img">
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="box">
                            <div class="detail-box">
                                <h6>Marshall Mathers</h6>
                                <h2>__________</h2>
                                <p>
                                    Foodie has been a game-changer for me and my daughter. As a busy professional, I don't always have time to cook or go out to eat, 
                                    but Foodie has made it easy to order meals from all of my favorite restaurants.             
                                </p>
                                <div style="display: inline-block;">
                                    <span style="display: inline-block; vertical-align: middle;">5.0</span>
                                    <img src="../TemplateFiles/images/star.png" alt="" style="width:20px; height:20px; display: inline-block; margin-left: 0px;">
                                </div>
                            </div>
                            <div class="img-box">
                                <img src="../TemplateFiles/images/client3.jpg" alt="" class="box-img">
                            </div>
                        </div>
                    </div>
                     <div class="item">
                        <div class="box">
                            <div class="detail-box">
                                <h6>Bill Burr</h6>
                                <h2>__________</h2>
                                <p>
                                    Foodie is the real deal. Who's got time to cook or go out to eat these days, am I right? 
                                    But with Foodie, I can order my favorite meals from my favorite local restaurants, and it's like having my own chef. The website easy to use, even for a guy like me who's not exactly a tech genius.
                                </p>
                                <div style="display: inline-block;">
                                    <span style="display: inline-block; vertical-align: middle;">5.0</span>
                                    <img src="../TemplateFiles/images/star.png" alt="" style="width:20px; height:20px; display: inline-block; margin-left: 0px;">
                                </div>
                            </div>
                            <div class="img-box">
                                <img src="../TemplateFiles/images/client4.jpg" alt="" class="box-img">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end client section -->


</asp:Content>
