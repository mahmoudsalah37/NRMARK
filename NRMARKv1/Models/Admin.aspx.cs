using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NRMARKv1.Models
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = userName.Value.ToString();
            string password = Password1.Value.ToString();
            signin(username, password);
        }

        private void signin(string username, string password)
        {
            using (SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString))
            {
                string SQL = "Select * from admin";
                SqlCommand CMD = new SqlCommand(SQL, myConnection);
                myConnection.Open();
                using (SqlDataReader reader = CMD.ExecuteReader())
                {
                    if (reader.Read())
                        if (username == reader["name"].ToString() && password == reader["password"].ToString())
                        {
                            Session["user"] = username;
                            Response.Redirect("../Models/AdminChangeData.aspx");
                        }
                }
            }
        }
    }
}