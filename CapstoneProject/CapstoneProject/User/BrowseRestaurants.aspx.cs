using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapstoneProject.User
{
    public partial class BrowseRestaurants : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getRestaurants();
            }
        }

        private void getRestaurants()
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("Restaurant_Crud", con);
            cmd.Parameters.AddWithValue("@Action", "SELECTRESTAURANTS");
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            rRestaurants.DataSource = dt;
            rRestaurants.DataBind();
        }

        protected void rRestaurants_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (Session["userId"] != null)
            {
                    //Adding restaurants to list
                    con = new SqlConnection(Connection.GetConnectionString());
                    cmd = new SqlCommand("Restaurant_Crud", con);
                    cmd.Parameters.AddWithValue("@Action", "SELECTRESTAURANTS");
                    cmd.Parameters.AddWithValue("@Name", "yaga");
                    cmd.Parameters.AddWithValue("@PhoneNumber", 9999999999);
                    cmd.Parameters.AddWithValue("@Email", "yaga");
                    cmd.Parameters.AddWithValue("@Address", "yaga");
                    cmd.Parameters.AddWithValue("@PostCode", 66666);
                    cmd.Parameters.AddWithValue("@ImageUrl", "yaga");
                    cmd.CommandType = CommandType.StoredProcedure;
                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Error - " + ex.Message + " ');</script>");
                    }
                    finally
                    {
                        con.Close();
                    }             
                Response.AddHeader("REFRESH", "1;URL=Menu.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void OrderNowButton_Click(object sender, EventArgs e)
        {
            // Handle button click event here
        }

    }
}