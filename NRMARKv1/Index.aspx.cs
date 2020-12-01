using System;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;


namespace NRMARKv1
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            //using (SqlConnection myConnection = new SqlConnection("Data Source=DESKTOP-OCN8N4O\\SQL2008;Initial Catalog=NRMARKDB;Integrated Security=True"))
            //{
            //    string oString = "Select * from Employees where FirstName=@fName";
            //    SqlCommand oCmd = new SqlCommand(oString, myConnection);
            //    oCmd.Parameters.AddWithValue("@Fname", "mahmoud");
            //    myConnection.Open();
            //    using (SqlDataReader oReader = oCmd.ExecuteReader())
            //    {
            //        while (oReader.Read())
            //        {
            //            var firstName = oReader["FirstName"].ToString();
            //            var lastName = oReader["LastName"].ToString();
            //        }

            //        myConnection.Close();
            //    }
            //}
            //Control container = FindControl("container_imp_items");
            //using (SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString))
            //{
            //    string SQL = "Select * from items_table";
            //    SqlCommand CMD = new SqlCommand(SQL, myConnection);
            //    myConnection.Open();
            //    using (SqlDataReader reader = CMD.ExecuteReader())
            //    {
            //        if (!(container is null))
            //            while (reader.Read())
            //            {
            //                bool showInMain = (bool)reader["showInMain"];
            //                if (showInMain)
            //                {
            //                    var id = (int)reader["id"];
            //                    var category_id = (int)reader["category_id"];
            //                    string image = "../img/portfolio/02-full.jpg";
            //                    if (reader["image"].ToString().Length > 0)
            //                        image = "../img/items/" + reader["image"].ToString();
            //                    var nameE = reader["nameE"].ToString();
            //                    var name = reader["name"].ToString();
            //                    var titleE = reader["titleE"].ToString();
            //                    var title = reader["title"].ToString();
            //                    var descriptionE = reader["descriptionE"].ToString();
            //                    var description = reader["description"].ToString();
            //                    HtmlGenericControl mainDiv = new HtmlGenericControl("DIV");
            //                    mainDiv.Attributes.Add("class", "col-md-4 col-sm-6 portfolio-item");
            //                    container.Controls.Add(mainDiv);
            //                    HtmlGenericControl a_childMainDiv = new HtmlGenericControl("a");
            //                    a_childMainDiv.Attributes.Add("class", "portfolio-link");
            //                    a_childMainDiv.Attributes.Add("data-toggle", "modal");
            //                    a_childMainDiv.Attributes.Add("runat", "server");
            //                    a_childMainDiv.Attributes.Add("href", "#portfolioModal" + id);
            //                    mainDiv.Controls.Add(a_childMainDiv);
            //                    HtmlGenericControl div_childA = new HtmlGenericControl("DIV");
            //                    div_childA.Attributes.Add("class", "portfolio-hover");
            //                    a_childMainDiv.Controls.Add(div_childA);
            //                    HtmlGenericControl div_childDiv = new HtmlGenericControl("DIV");
            //                    div_childDiv.Attributes.Add("class", "portfolio-hover-content");
            //                    div_childA.Controls.Add(div_childDiv);
            //                    HtmlGenericControl i_childDiv = new HtmlGenericControl("i");
            //                    i_childDiv.Attributes.Add("class", "fas fa-plus fa-3x");
            //                    div_childDiv.Controls.Add(i_childDiv);
            //                    HtmlGenericControl img_childA = new HtmlGenericControl("img");
            //                    img_childA.Attributes.Add("class", "img-fluid");
            //                    img_childA.Attributes.Add("src", image);
            //                    img_childA.Attributes.Add("alt", "");
            //                    a_childMainDiv.Controls.Add(img_childA);

            //                    HtmlGenericControl div_childMainDiv = new HtmlGenericControl("DIV");
            //                    div_childMainDiv.Attributes.Add("class", "portfolio-caption");
            //                    mainDiv.Controls.Add(div_childMainDiv);
            //                    HtmlGenericControl h2_childDiv = new HtmlGenericControl("h2");
            //                    h2_childDiv.InnerHtml = name;
            //                    div_childMainDiv.Controls.Add(h2_childDiv);
            //                    HtmlGenericControl p_childDiv = new HtmlGenericControl("p");
            //                    p_childDiv.Attributes.Add("class", "text-muted");
            //                    p_childDiv.InnerHtml = title;
            //                    div_childMainDiv.Controls.Add(p_childDiv);

            //                    //view data
            //                    Control container2 = FindControl("form1");
            //                    HtmlGenericControl mainDiv_view = new HtmlGenericControl("DIV");
            //                    mainDiv_view.Attributes.Add("class", "portfolio-modal modal fade");
            //                    mainDiv_view.Attributes.Add("runat", "server");
            //                    mainDiv_view.Attributes.Add("id", "portfolioModal" + id);
            //                    mainDiv_view.Attributes.Add("tabindex", "-1");
            //                    mainDiv_view.Attributes.Add("role", "dialog");
            //                    mainDiv_view.Attributes.Add("aria-hidden", "true");
            //                    container2.Controls.Add(mainDiv_view);
            //                    HtmlGenericControl div_mainDiv_view = new HtmlGenericControl("DIV");
            //                    div_mainDiv_view.Attributes.Add("class", "modal-dialog");
            //                    mainDiv_view.Controls.Add(div_mainDiv_view);
            //                    HtmlGenericControl divModel_mainDiv_view = new HtmlGenericControl("DIV");
            //                    divModel_mainDiv_view.Attributes.Add("class", "modal-content");
            //                    div_mainDiv_view.Controls.Add(divModel_mainDiv_view);
            //                    HtmlGenericControl close_divModel_mainDiv_view = new HtmlGenericControl("DIV");
            //                    close_divModel_mainDiv_view.Attributes.Add("class", "close-modal");
            //                    close_divModel_mainDiv_view.Attributes.Add("data-dismiss", "modal");
            //                    divModel_mainDiv_view.Controls.Add(close_divModel_mainDiv_view);
            //                    HtmlGenericControl lr_close_divModel_mainDiv_view = new HtmlGenericControl("DIV");
            //                    lr_close_divModel_mainDiv_view.Attributes.Add("class", "lr");
            //                    close_divModel_mainDiv_view.Controls.Add(lr_close_divModel_mainDiv_view);
            //                    HtmlGenericControl rl_close_divModel_mainDiv_view = new HtmlGenericControl("DIV");
            //                    rl_close_divModel_mainDiv_view.Attributes.Add("class", "rl");
            //                    lr_close_divModel_mainDiv_view.Controls.Add(rl_close_divModel_mainDiv_view);
            //                    HtmlGenericControl container_divModel_mainDiv_view = new HtmlGenericControl("DIV");
            //                    container_divModel_mainDiv_view.Attributes.Add("class", "container");
            //                    divModel_mainDiv_view.Controls.Add(container_divModel_mainDiv_view);
            //                    HtmlGenericControl row_container_divModel_mainDiv_view = new HtmlGenericControl("DIV");
            //                    row_container_divModel_mainDiv_view.Attributes.Add("class", "row");
            //                    container_divModel_mainDiv_view.Controls.Add(row_container_divModel_mainDiv_view);
            //                    HtmlGenericControl col_row_container_divModel_mainDiv_view = new HtmlGenericControl("DIV");
            //                    col_row_container_divModel_mainDiv_view.Attributes.Add("class", "col-lg-8 mx-auto");
            //                    row_container_divModel_mainDiv_view.Controls.Add(col_row_container_divModel_mainDiv_view);
            //                    HtmlGenericControl model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("DIV");
            //                    model_col_row_container_divModel_mainDiv_view.Attributes.Add("class", "modal-body");
            //                    col_row_container_divModel_mainDiv_view.Controls.Add(model_col_row_container_divModel_mainDiv_view);
            //                    HtmlGenericControl h2_model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("h2");
            //                    h2_model_col_row_container_divModel_mainDiv_view.Attributes.Add("class", "text-uppercase");
            //                    h2_model_col_row_container_divModel_mainDiv_view.InnerHtml = name;
            //                    model_col_row_container_divModel_mainDiv_view.Controls.Add(h2_model_col_row_container_divModel_mainDiv_view);
            //                    HtmlGenericControl img_model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("img");
            //                    img_model_col_row_container_divModel_mainDiv_view.Attributes.Add("class", "img-fluid d-block mx-auto");
            //                    img_model_col_row_container_divModel_mainDiv_view.Attributes.Add("src", image);
            //                    model_col_row_container_divModel_mainDiv_view.Controls.Add(img_model_col_row_container_divModel_mainDiv_view);
            //                    HtmlGenericControl p_model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("p");
            //                    p_model_col_row_container_divModel_mainDiv_view.InnerHtml = description;
            //                    model_col_row_container_divModel_mainDiv_view.Controls.Add(p_model_col_row_container_divModel_mainDiv_view);
            //                    HtmlGenericControl button_model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("button");
            //                    button_model_col_row_container_divModel_mainDiv_view.Attributes.Add("class", "btn btn-primary");
            //                    button_model_col_row_container_divModel_mainDiv_view.Attributes.Add("data-dismiss", "modal");
            //                    button_model_col_row_container_divModel_mainDiv_view.Attributes.Add("type", "button");
            //                    button_model_col_row_container_divModel_mainDiv_view.InnerHtml = "إغلاق";
            //                    model_col_row_container_divModel_mainDiv_view.Controls.Add(button_model_col_row_container_divModel_mainDiv_view);
            //                    HtmlGenericControl i_button_model_col_row_container_divModel_mainDiv_view = new HtmlGenericControl("i");
            //                    i_button_model_col_row_container_divModel_mainDiv_view.Attributes.Add("class", "fas fa-times");
            //                    button_model_col_row_container_divModel_mainDiv_view.Controls.Add(i_button_model_col_row_container_divModel_mainDiv_view);

            //                }
            //            }

            //        myConnection.Close();
            //    }
            //}

            //System.Web.UI.HtmlControls.HtmlGenericControl createDiv =
            //     new System.Web.UI.HtmlControls.HtmlGenericControl("DIV");
            //createDiv.Attributes.Add("class", "col-lg-12 text-center");
            //System.Web.UI.HtmlControls.HtmlGenericControl createH2 =
            //    new System.Web.UI.HtmlControls.HtmlGenericControl("h2");
            //createH2.Attributes.Add("class", "section-heading text-uppercase");
            //createH2.InnerHtml = "الأكثر مبيعا";
            //createDiv.Controls.Add(createH2);
            //System.Web.UI.HtmlControls.HtmlGenericControl createH3 =
            //     new System.Web.UI.HtmlControls.HtmlGenericControl("h3");
            //createH3.Attributes.Add("class", "section-subheading text-muted");
            //createH3.InnerHtml = "أهم المنتجات والأكثر مبيعا لدينا";
            //createDiv.Controls.Add(createH3);
            //Control myControl1 = FindControl("container_imp_items");
            //myControl1.Controls.Add(createDiv);
        }

        protected void sendMessage(object sender, EventArgs e)
        {
            MailMessage();
            //sendAsync();
            //Email.SendEmail(email.Value, "", "");
        }
        async System.Threading.Tasks.Task sendAsync()
        {
            var message = new MailMessage();
            message.To.Add(new MailAddress("nrmark@nrmark.com"));
            message.From = new MailAddress(email.Value);
            message.Subject = "subject";
            message.Body = string.Format("message-body");
            message.IsBodyHtml = true;
            using (var smtp = new SmtpClient())
            {
                smtp.Host = "relay-hosting.secureserver.net";
                smtp.EnableSsl = false;
                smtp.Credentials = CredentialCache.DefaultNetworkCredentials;
                await smtp.SendMailAsync(message);
            }
        }
        void MailMessage()
        {
            //MailMessage mail = new MailMessage("nrmark@nrmark.com", email.Value);
            //SmtpClient client = new SmtpClient();
            //client.Host = "relay-hosting.secureserver.net";
            //client.Port = 25;
            //client.DeliveryMethod = SmtpDeliveryMethod.Network;
            //mail.Subject = "this is a test email.";
            //mail.Body = "this is my test email body";
            //client.Send(mail);

            //MailMessage mail = new MailMessage("mahmoudsalah37@gmail.com", "mahmoudsalah37@gmail.com");
            //SmtpClient client = new SmtpClient();
            //client.Port = 25;
            //client.DeliveryMethod = SmtpDeliveryMethod.Network;
            //client.UseDefaultCredentials = false;
            //client.Host = "smtp.gmail.com";
            //mail.Subject = "this is a test email.";
            //mail.Body = "this is my test email body";
            //client.Send(mail);
            // Command line argument must the the SMTP host.

            SmtpClient client = new SmtpClient();
            client.Port = 587;
            client.Host = "smtp.gmail.com";
            client.EnableSsl = true;
            client.Timeout = 10000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            // Email: nrmark37@gmail.com & pass: Nrmark2019
            client.Credentials = new System.Net.NetworkCredential("nrmark37@gmail.com", "Nrmark2019");

            MailMessage mm = new MailMessage("nrmark37@gmail.com", "nrmark@nrmark.com", "customers service", "name: "+name.Value.ToString()+"\n"+
                "Email: "+email.Value.ToString()+"\n"
                + "phone: "+ phone.Value.ToString() + "\n"
                +"message: "+ message.Value.ToString() + "\n");
            mm.BodyEncoding = UTF8Encoding.UTF8;
            mm.DeliveryNotificationOptions = DeliveryNotificationOptions.OnFailure;
            client.Send(mm);
        }

    }

}