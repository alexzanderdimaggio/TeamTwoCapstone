<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="AdminRegistration.aspx.cs" Inherits="CapstoneProject.User.AdminRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script>
        /*For disappearing alert message*/
        window.onload = function () {
            var seconds = 5;
            setTimeout(function () {
                document.getElementById("<%=lblAdminMsg.ClientID %>".style.display = "none";
            }, seconds * 1000);
        };
    </script>
    <script>
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgAdmin.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <div class="align-self-end">
                    <asp:Label ID="lblAdminMsg" runat="server" Visible="false"></asp:Label>
                </div>
                <asp:Label ID="lblAdminHeaderMsg" runat="server" Text="<h2>Restaurant Registration</h2>"></asp:Label>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form_container">

                        <div>                            
                            <asp:RequiredFieldValidator ID="rfvRestaurantName" runat="server" ErrorMessage="Name is required" ControlToValidate="txtRestaurantName"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revRestaurantName" runat="server" ErrorMessage="Name must be in characters only"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[a-zA-Z ]*$"
                                ControlToValidate="txtRestaurantName"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtRestaurantName" runat="server" CssClass="form-control" placeholder="Enter Full Restaurant Name"
                                ToolTip="Full Restaurant Name"></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvRestaurantUsername" runat="server" ErrorMessage="Username is required" 
                                ControlToValidate="txtRestaurantUsername" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtRestaurantUsername" runat="server" CssClass="form-control" placeholder="Enter Restaurant Username"
                                ToolTip="Restaurant Username"></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvRestaurantEmail" runat="server" ErrorMessage="Restaurant Email is required" 
                                ControlToValidate="txtRestaurantEmail" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtRestaurantEmail" runat="server" CssClass="form-control" placeholder="Enter Restaurant Email"
                                ToolTip="Restaurant Email" TextMode="Email"></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvRestaurantPhoneNumber" runat="server" ErrorMessage="Restaurant Phone Number is required" 
                                ControlToValidate="txtRestaurantPhoneNumber"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revRestaurantPhoneNumber" runat="server" ErrorMessage="Mobile No. must have 10 digits"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{10}$"
                                ControlToValidate="txtRestaurantPhoneNumber"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtRestaurantPhoneNumber" runat="server" CssClass="form-control" placeholder="Enter Restaurant Phone Number"
                                ToolTip="Restaurant Phone Number" TextMode="Number"></asp:TextBox>
                        </div>

                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form_container">

                        <div>
                            <asp:RequiredFieldValidator ID="rfvRestaurantAddress" runat="server" ErrorMessage="Restaurant Address is required" 
                                ControlToValidate="txtRestaurantAddress"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtRestaurantAddress" runat="server" CssClass="form-control" placeholder="Enter Restaurant Address"
                                ToolTip="Restaurant Address" TextMode="MultiLine"></asp:TextBox>
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvRestaurantPostCode" runat="server" ErrorMessage="Post/Zip Code is required" 
                                ControlToValidate="txtRestaurantPostCode" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revRestaurantPostCode" runat="server" ErrorMessage="Post/Zip Code must be of 5 digits"
                                ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="^[0-9]{5}$"
                                ControlToValidate="txtRestaurantPostCode"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtRestaurantPostCode" runat="server" CssClass="form-control" placeholder="Enter Restaurant Post/Zip Code"
                                ToolTip="Restaurant Post/Zip Code" TextMode="Number"></asp:TextBox>
                        </div>

                        <div>
                            <asp:FileUpload ID="fuAdminImage" runat="server" CssClass="form-control" ToolTip="Admin Image" 
                                onchange="ImagePreview(this);" />
                        </div>

                        <div>
                            <asp:RequiredFieldValidator ID="rfvRestaurantPassword" runat="server" ErrorMessage="Password is required" 
                                ControlToValidate="txtRestaurantPassword" ForeColor="Red" Display="Dynamic" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtRestaurantPassword" runat="server" CssClass="form-control" placeholder="Enter Password"
                                ToolTip="Restaurant Password" TextMode="Password"></asp:TextBox>
                        </div>

                    </div>
                </div>

                <div class="row pl-4">
                    <div class="btn_box">
                        <asp:Button ID="btnAdminRegister" runat="server" Text="Register" CssClass="btn btn-success rounded-pill pl-4 pr-4 text-white"
                            onClick="btnAdminRegister_Click"/>

                        <asp:Label ID="lblAlreadyAdmin" runat="server" CssClass="pl-3 text-black-100"
                            Text="Already registered? <a href='Login.aspx' class='badge badge-info'>Login here..</a>">
                        </asp:Label>
                    </div>
                </div>

                <div class="row p-5">
                    <div style="align-items:center">
                        <asp:Image ID="imgAdmin" runat="server" CssClass="img-thumbnail" />
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>

