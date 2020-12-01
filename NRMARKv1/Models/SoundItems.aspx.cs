using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace NRMARKv1.Models
{
    public partial class SoundItems : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            load();
        }
        void load()
        {
            Control container = FindControl("container_imp_items");
            using (SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString))
            {
                string SQL = "Select * from items_table";
                SqlCommand CMD = new SqlCommand(SQL, myConnection);
                myConnection.Open();
                using (SqlDataReader reader = CMD.ExecuteReader())
                {
                    if (!(container is null))
                        while (reader.Read())
                        {
                            int cat_id;
                            var x = this.Request.QueryString["clicked_id"];
                            Int32.TryParse(x, out cat_id);
                            int category_id = (int)reader["category_id"];
                            if (category_id == cat_id)
                            {
                                var z = reader["image"];
                                var id = (int)reader["id"];
                                string image = "../img/portfolio/02-full.jpg";
                                if (reader["image"].ToString().Length > 0)
                                    image = "../img/items/" + reader["image"].ToString();

                                var nameE = reader["nameE"].ToString();
                                var name = reader["name"].ToString();
                                var titleE = reader["titleE"].ToString();
                                var title = reader["title"].ToString();
                                var descriptionE = reader["descriptionE"].ToString();
                                var description = reader["description"].ToString();
                                HtmlGenericControl mainDiv = new HtmlGenericControl("DIV");
                                mainDiv.Attributes.Add("class", "col-md-4 col-sm-6 portfolio-item");
                                container.Controls.Add(mainDiv);
                                HtmlGenericControl a_childMainDiv = new HtmlGenericControl("a");
                                a_childMainDiv.Attributes.Add("class", "portfolio-link");
                                a_childMainDiv.Attributes.Add("data-toggle", "modal");
                                a_childMainDiv.Attributes.Add("href", "#portfolioModal" + id);
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
                                div_childMainDiv.Attributes.Add("dir", "rtl");
                                div_childMainDiv.Attributes.Add("class", "portfolio-caption");
                                mainDiv.Controls.Add(div_childMainDiv);
                                HtmlGenericControl h2_childDiv = new HtmlGenericControl("h2");
                                h2_childDiv.InnerHtml = name;
                                div_childMainDiv.Controls.Add(h2_childDiv);
                                HtmlGenericControl p_childDiv = new HtmlGenericControl("p");
                                p_childDiv.Attributes.Add("class", "text-muted");
                                p_childDiv.Attributes.Add("dir", "rtl");
                                p_childDiv.InnerHtml = title;
                                div_childMainDiv.Controls.Add(p_childDiv);

                                //view data
                                Control container2 = FindControl("form1");
                                HtmlGenericControl mainDiv_view = new HtmlGenericControl("DIV");
                                mainDiv_view.Attributes.Add("class", "portfolio-modal modal fade");
                                mainDiv_view.Attributes.Add("runat", "server");
                                mainDiv_view.Attributes.Add("id", "portfolioModal" + id);
                                mainDiv_view.Attributes.Add("tabindex", "-1");
                                mainDiv_view.Attributes.Add("role", "dialog");
                                mainDiv_view.Attributes.Add("aria-hidden", "true");
                                container2.Controls.Add(mainDiv_view);
                                HtmlGenericControl div_mainDiv_view = new HtmlGenericControl("DIV");
                                div_mainDiv_view.Attributes.Add("class", "modal-dialog");
                                mainDiv_view.Controls.Add(div_mainDiv_view);
                                HtmlGenericControl divModel_mainDiv_view = new HtmlGenericControl("DIV");
                                divModel_mainDiv_view.Attributes.Add("class", "modal-content");
                                div_mainDiv_view.Controls.Add(divModel_mainDiv_view);
                                HtmlGenericControl close_divModel_mainDiv_view = new HtmlGenericControl("DIV");
                                close_divModel_mainDiv_view.Attributes.Add("class", "close-modal");
                                close_divModel_mainDiv_view.Attributes.Add("data-dismiss", "modal");
                                divModel_mainDiv_view.Controls.Add(close_divModel_mainDiv_view);
                                HtmlGenericControl lr_close_divModel_mainDiv_view = new HtmlGenericControl("DIV");
                                lr_close_divModel_mainDiv_view.Attributes.Add("class", "lr");
                                close_divModel_mainDiv_view.Controls.Add(lr_close_divModel_mainDiv_view);
                                HtmlGenericControl rl_close_divModel_mainDiv_view = new HtmlGenericControl("DIV");
                                rl_close_divModel_mainDiv_view.Attributes.Add("class", "rl");
                                lr_close_divModel_mainDiv_view.Controls.Add(rl_close_divModel_mainDiv_view);
                                HtmlGenericControl container_divModel_mainDiv_view = new HtmlGenericControl("DIV");
                                container_divModel_mainDiv_view.Attributes.Add("class", "container");
                                divModel_mainDiv_view.Controls.Add(container_divModel_mainDiv_view);
                                HtmlGenericControl row_container_divModel_mainDiv_view = new HtmlGenericControl("DIV");
                                row_container_divModel_mainDiv_view.Attributes.Add("class", "row");
                                container_divModel_mainDiv_view.Controls.Add(row_container_divModel_mainDiv_view);
                                HtmlGenericControl col_row_container_divModel_mainDiv_view = new HtmlGenericControl("DIV");
                                col_row_container_divModel_mainDiv_view.Attributes.Add("class", "col-lg-8 mx-auto");
                                row_container_divModel_mainDiv_view.Controls.Add(col_row_container_divModel_mainDiv_view);
                                HtmlGenericControl model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("DIV");
                                model_col_row_container_divModel_mainDiv_view.Attributes.Add("class", "modal-body");
                                col_row_container_divModel_mainDiv_view.Controls.Add(model_col_row_container_divModel_mainDiv_view);
                                HtmlGenericControl h2_model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("h2");
                                h2_model_col_row_container_divModel_mainDiv_view.Attributes.Add("class", "text-uppercase");
                                h2_model_col_row_container_divModel_mainDiv_view.Attributes.Add("dir", "rtl");
                                h2_model_col_row_container_divModel_mainDiv_view.InnerHtml = name;
                                model_col_row_container_divModel_mainDiv_view.Controls.Add(h2_model_col_row_container_divModel_mainDiv_view);
                                HtmlGenericControl img_model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("img");
                                img_model_col_row_container_divModel_mainDiv_view.Attributes.Add("class", "img-fluid d-block mx-auto");
                                img_model_col_row_container_divModel_mainDiv_view.Attributes.Add("src", image);
                                model_col_row_container_divModel_mainDiv_view.Controls.Add(img_model_col_row_container_divModel_mainDiv_view);
                                HtmlGenericControl p_model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("p");
                                p_model_col_row_container_divModel_mainDiv_view.Attributes.Add("dir", "rtl");
                                p_model_col_row_container_divModel_mainDiv_view.InnerHtml = description;
                                model_col_row_container_divModel_mainDiv_view.Controls.Add(p_model_col_row_container_divModel_mainDiv_view);
                                HtmlGenericControl button_model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("button");
                                button_model_col_row_container_divModel_mainDiv_view.Attributes.Add("class", "btn btn-primary");
                                button_model_col_row_container_divModel_mainDiv_view.Attributes.Add("data-dismiss", "modal");
                                button_model_col_row_container_divModel_mainDiv_view.Attributes.Add("type", "button");
                                button_model_col_row_container_divModel_mainDiv_view.InnerHtml = "إغلاق";
                                model_col_row_container_divModel_mainDiv_view.Controls.Add(button_model_col_row_container_divModel_mainDiv_view);
                                HtmlGenericControl i_button_model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("i");
                                i_button_model_col_row_container_divModel_mainDiv_view.Attributes.Add("class", "fas fa-times");
                                button_model_col_row_container_divModel_mainDiv_view.Controls.Add(i_button_model_col_row_container_divModel_mainDiv_view);
                            }
                        }

                    myConnection.Close();
                }
            }
        }
    }
}