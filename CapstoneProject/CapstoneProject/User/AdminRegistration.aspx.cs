using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;
using System.EnterpriseServices.CompensatingResourceManager;
using CapstoneProject.Admin;

namespace CapstoneProject.User
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null) /* && Session["userId"] != null) */
                {
                    getUserDetails();
                }
                else if (Session["restaurantId"] != null)
                {
                    Response.Redirect("Dashboard.aspx");
                }
            }
        }

        protected void btnAdminRegister_Click(object sender, EventArgs e)
        {
            string actionName = string.Empty, imagePath = string.Empty, fileExtension = string.Empty;
            bool isValidToExecute = false;
            int restaurantId = Convert.ToInt32(Request.QueryString["restaurantid"]);
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Restaurant_Crud", con);
            cmd.Parameters.AddWithValue("@Action", restaurantId == 0 ? "INSERT" : "UPDATE");
            cmd.Parameters.AddWithValue("@RestaurantId", restaurantId);
            cmd.Parameters.AddWithValue("@Name", txtRestaurantName.Text.Trim());
            cmd.Parameters.AddWithValue("@Username", txtRestaurantUsername.Text.Trim());
            cmd.Parameters.AddWithValue("@PhoneNumber", txtRestaurantPhoneNumber.Text.Trim());
            cmd.Parameters.AddWithValue("@Email", txtRestaurantEmail.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", txtRestaurantAddress.Text.Trim());
            cmd.Parameters.AddWithValue("@PostCode", txtRestaurantPostCode.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", txtRestaurantPassword.Text.Trim());
            if (fuAdminImage.HasFile)
            {
                if (Utils.IsValidExtension(fuAdminImage.FileName))
                {
                    Guid obj = Guid.NewGuid();
                    fileExtension = Path.GetExtension(fuAdminImage.FileName);
                    imagePath = "Images/Admin/" + obj.ToString() + fileExtension;
                    fuAdminImage.PostedFile.SaveAs(Server.MapPath("~/Images/Admin/") + obj.ToString() + fileExtension);
                    cmd.Parameters.AddWithValue("@ImageUrl", imagePath);
                    isValidToExecute = true;
                }
                else
                {
                    lblAdminMsg.Visible = true;
                    lblAdminMsg.Text = "Please select .jpg, .jpeg or .png image";
                    lblAdminMsg.CssClass = "alert alert-danger";
                    isValidToExecute = false;
                }
            }
            else
            {
                isValidToExecute = true;
            }

            if (isValidToExecute)
            {
                cmd.CommandType = CommandType.StoredProcedure;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();

                    actionName = restaurantId == 0 ?
                        "registration is successful! <b><a href='Login.aspx'>Click here</a></b> to login" :
                        "details updated successful! <b><a href='Profile.aspx'>Can check here</a></b>";
                    lblAdminMsg.Visible = true;
                    lblAdminMsg.Text = "<b>" + txtRestaurantUsername.Text.Trim() + "</b> " + actionName;
                    lblAdminMsg.CssClass = "alert alert-success";
                    if (restaurantId != 0)
                    {
                        Response.AddHeader("REFRESH", "1;URL=Profile.aspx");
                    }
                    clear();
                }
                catch (SqlException ex)
                {
                    if (ex.Message.Contains("Violation of UNIQUE KEY constraint"))
                    {
                        lblAdminMsg.Visible = true;
                        lblAdminMsg.Text = "<b>" + txtRestaurantUsername.Text.Trim() + "</b> username already exists, try new one..!";
                        lblAdminMsg.CssClass = "alert alert-danger";
                    }
                }
                catch (Exception ex)
                {
                    lblAdminMsg.Visible = true;
                    lblAdminMsg.Text = "Error-" + ex.Message;
                    lblAdminMsg.CssClass = "alert alert-danger";
                }
                finally
                {
                    con.Close();
                }
            }
        }

        void getUserDetails()
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("User_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "SELECT4PROFILE");
            cmd.Parameters.AddWithValue("@RestaurantId", Request.QueryString["id"]);
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 1)
            {
                txtRestaurantName.Text = dt.Rows[0]["Name"].ToString();
                txtRestaurantUsername.Text = dt.Rows[0]["Username"].ToString();
                txtRestaurantPhoneNumber.Text = dt.Rows[0]["PhoneNumber"].ToString();
                txtRestaurantEmail.Text = dt.Rows[0]["Email"].ToString();
                txtRestaurantAddress.Text = dt.Rows[0]["Address"].ToString();
                txtRestaurantPostCode.Text = dt.Rows[0]["PostCode"].ToString();
                imgAdmin.ImageUrl = string.IsNullOrEmpty(dt.Rows[0]["ImageUrl"].ToString())
                    ? "../Images/No_image.png" : "../" + dt.Rows[0]["ImageUrl"].ToString();
                imgAdmin.Height = 200;
                imgAdmin.Width = 200;
                txtRestaurantPassword.TextMode = TextBoxMode.SingleLine;
                txtRestaurantPassword.ReadOnly = true;
                txtRestaurantPassword.Text = dt.Rows[0]["Password"].ToString();
            }
            lblAdminHeaderMsg.Text = "<h2>Edit Profile</h2>";
            btnAdminRegister.Text = "Update";
            lblAlreadyAdmin.Text = "";
        }

        private void clear()
        {
            txtRestaurantName.Text = string.Empty;
            txtRestaurantUsername.Text = string.Empty;
            txtRestaurantPhoneNumber.Text = string.Empty;
            txtRestaurantEmail.Text = string.Empty;
            txtRestaurantAddress.Text = string.Empty;
            txtRestaurantPostCode.Text = string.Empty;
            txtRestaurantPassword.Text = string.Empty;
        }
    }
}