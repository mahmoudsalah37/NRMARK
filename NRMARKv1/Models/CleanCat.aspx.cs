using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

namespace NRMARKv1.Models
{
    public partial class CleanCat : Page
    {
        // SqlConnection conn = new SqlConnection("Data Source=DESKTOP-OCN8N4O\\SQL2008;Initial Catalog=NRMARKDB;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Control container = FindControl("container_imp_items");
            using (SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString))
            {
                string SQL = "Select * from categories";
                SqlCommand CMD = new SqlCommand(SQL, myConnection);
                myConnection.Open();
                using (SqlDataReader reader = CMD.ExecuteReader())
                {
                    if (!(container is null))
                        while (reader.Read())
                        {
                            var type = (int)reader["type"];
                            if (type == 1)
                            {
                                var id = (int)reader["id"];
                                string image = "../img/portfolio/02-full.jpg";
                                if (reader["image"].ToString().Length > 0)
                                    image = "../img/cats/" + reader["image"].ToString();
                                var nameE = reader["nameE"].ToString();
                                var name = reader["name"].ToString();
                                var titleE = reader["titleE"].ToString();
                                var title = reader["title"].ToString();
                                HtmlGenericControl mainDiv = new HtmlGenericControl("DIV");
                                mainDiv.Attributes.Add("class", "col-md-4 col-sm-6 portfolio-item");
                                mainDiv.Attributes.Add("runat", "server");
                                mainDiv.Attributes.Add("OnClick", "cleanItem(this.id)");
                                mainDiv.Attributes.Add("id", id.ToString());
                                container.Controls.Add(mainDiv);
                                HtmlGenericControl a_childMainDiv = new HtmlGenericControl("a");
                                a_childMainDiv.Attributes.Add("class", "portfolio-link");
                                a_childMainDiv.Attributes.Add("data-toggle", "modal");
                               // a_childMainDiv.Attributes.Add("onclick", "CleanItems");
                                mainDiv.Controls.Add(a_childMainDiv);
                                HtmlGenericControl div_childA = new HtmlGenericControl("DIV");
                                div_childA.Attributes.Add("class", "portfolio-hover");
                                a_childMainDiv.Controls.Add(div_childA);
                                HtmlGenericControl div_childDiv = new HtmlGenericControl("DIV");
                                div_childDiv.Attributes.Add("class", "portfolio-hover-content");
                                div_childA.Controls.Add(div_childDiv);
                                HtmlGenericControl i_childDiv = new HtmlGenericControl("i");
                                i_childDiv.Attributes.Add("class", "fas fa-plus fa-3x");
                                div_childDiv.Controls.Add(i_childDiv);
                                HtmlGenericControl img_childA = new HtmlGenericControl("img");
                                img_childA.Attributes.Add("class", "img-fluid");
                                img_childA.Attributes.Add("src", image);
                                img_childA.Attributes.Add("alt", "");
                                a_childMainDiv.Controls.Add(img_childA);

                                HtmlGenericControl div_childMainDiv = new HtmlGenericControl("DIV");
                                div_childMainDiv.Attributes.Add("class", "portfolio-caption");
                                mainDiv.Controls.Add(div_childMainDiv);
                                HtmlGenericControl h2_childDiv = new HtmlGenericControl("h2");
                                h2_childDiv.Attributes.Add("dir", "rtl");
                                h2_childDiv.InnerHtml = name;
                                div_childMainDiv.Controls.Add(h2_childDiv);
                                //HtmlGenericControl p_childDiv = new HtmlGenericControl("p");
                                //p_childDiv.Attributes.Add("class", "text-muted");
                                //p_childDiv.InnerHtml = title;
                                //div_childMainDiv.Controls.Add(p_childDiv);
                            }
                        }

                    myConnection.Close();
                }
            }
        }
    }
}