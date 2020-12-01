using System;


namespace NRMARKv1
{
    public partial class We : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void back(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}