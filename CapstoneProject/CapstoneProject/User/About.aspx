<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CapstoneProject.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <!-- about section -->
  <section class="about_section_alternate layout_padding">
    <div class="container">
      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="../TemplateFiles/images/about-img.png" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>We Are Foodie</h2>
                <br />
            </div>
            <div>
              Welcome to Foodie, your go-to destination for delicious meals delivered straight to your door. 
              We're passionate about food and believe that everyone should have access to restaurant-quality cuisine, no matter where they live.     
               <div>
                   <br />
                At Foodie, we partner with top local restaurants to bring you an ever-expanding menu of options to choose from. Whether you're in the mood for 
                Italian, Chinese, or something in between, we've got you covered. Plus, we offer a range of dietary options, including vegan, gluten-free, and more.
                   </div>           
              <div>
                   <br />
                We're proud to offer a seamless ordering experience through our user-friendly website and app. Simply enter your address and browse our restaurant partners' menus. 
                  Once you've made your selection, sit back and relax as we take care of the rest. We'll handle the delivery, so you can focus on enjoying your meal.
                   </div>
                </div>
              <br />
              <a href="BrowseRestaurants.aspx">
              Order Now
            </a>
            </div>
          </div>
        </div>
      </div>
  </section>

  <!-- end about section -->

</asp:Content>
