using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace NRMARKv1.Models
{
    public partial class AdminChangeData : System.Web.UI.Page
    {
        bool button1Clicked = false;
        bool button2Clicked = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("../Models/Admin.aspx");
            }
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            //selectedData();
        }
        void Page_LoadComplete(object sender, EventArgs e)
        {
            if (Page.IsPostBack && button1Clicked)
            {
                button1Clicked = false;
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('fox1');", true);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
            if (Page.IsPostBack && button2Clicked)
            {
                button2Clicked = false;
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('fox1');", true);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal2();", true);
                add_data_drop();
                selectedData();
            }
            if(!Page.IsPostBack)
                selectedData();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            button2Clicked = true;
            if (RadioButtonList2.SelectedItem.Value == "add")
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('fox2');", true);
                string type = DropDownListCat.Items[DropDownListCat.SelectedIndex].Value.Trim();
                string name = namecat.Value.Trim();
                string title = titleCat.Value.Trim();
                int length = imgCat.PostedFile.ContentLength;
                String Filename = imgCat.FileName;
                if (imgCat.HasFile && length > 0 && type.Length > 0 && name.Length > 0 && title.Length > 0)
                {
                    addCat.Enabled = false;
                    Label12.Text = "جاري رفع البيانات";
                    imgCat.SaveAs(Server.MapPath("~/img/cats/" + Filename));
                    //Data Source=WIN-KQB5L8TETS3\\SQLEXPRESS;Initial Catalog=NRMARKDB;Integrated Security=True
                    SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);
                    string query = "INSERT INTO categories (type, name, image, size, title)";
                    query += " VALUES (@type, @name, @image, @size, @title)";
                    SqlCommand myCommand = new SqlCommand(query, myConnection);
                    myCommand.Parameters.AddWithValue("@type", Int32.Parse(type));
                    myCommand.Parameters.AddWithValue("@name", name);
                    myCommand.Parameters.AddWithValue("@image", Filename);
                    myCommand.Parameters.AddWithValue("@size", length);
                    myCommand.Parameters.AddWithValue("@title", title);
                    myConnection.Open();
                    myCommand.ExecuteNonQuery();
                    myConnection.Close();
                    addCat.Enabled = true;
                    Label12.Text = "تم رفع البيانات";
                    namecat.Value = "";
                    titleCat.Value = "";
                }
                else
                {
                    Label12.Text = "أدخل جميع الحقول";
                }
                //selectedData();
            }
            else if (RadioButtonList2.SelectedItem.Value == "edit")
            {
                string nameCat = DropDownList2.Items[DropDownList2.SelectedIndex].Text;
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('fox2');", true);
                string type = DropDownListCat.Items[DropDownListCat.SelectedIndex].Value.Trim();
                string name = namecat.Value.Trim();
                string title = titleCat.Value.Trim();
                int length = imgCat.PostedFile.ContentLength;
                String Filename = imgCat.FileName;
                addCat.Enabled = false;
                Label12.Text = "جاري تعديل البيانات";
                if (Filename.Length > 0)
                {
                    imgCat.SaveAs(Server.MapPath("/img/cats/" + Filename));
                    SqlConnection myConnection1 = new SqlConnection(ConnectionString.connectionString);
                    
                    string query1 = "UPDATE categories SET image = @image, size = @size Where name = @nameCat";
                    SqlCommand myCommand1 = new SqlCommand(query1, myConnection1);
                    myCommand1.Parameters.AddWithValue("@nameCat", nameCat);
                    myCommand1.Parameters.AddWithValue("@image", Filename);
                    myCommand1.Parameters.AddWithValue("@size", length);
                    myConnection1.Open();
                    myCommand1.ExecuteNonQuery();
                    myConnection1.Close();
                }
                SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);

                string query = "UPDATE categories SET type = @type, name = @name, title = @title Where name = @nameCat";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myCommand.Parameters.AddWithValue("@nameCat", nameCat);
                myCommand.Parameters.AddWithValue("@type", Int32.Parse(type));
                myCommand.Parameters.AddWithValue("@name", name);
                myCommand.Parameters.AddWithValue("@title", title);
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                myConnection.Close();
                addCat.Enabled = true;
                Label12.Text = "تم تعديل البيانات";
                add_data_toEdit();
                //selectedData();
            }
            else if (RadioButtonList2.SelectedItem.Value == "delete")
            {
                Label12.Text = "جاري حذف البيانات";
                SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);
                string query = "delete from categories where name  = ";
                query += " @name";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myCommand.Parameters.AddWithValue("@name", DropDownList2.Items[DropDownList2.SelectedIndex].Text);
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                myConnection.Close();
                Label12.Text = "تم حذف البيانات";
            }

        }

        protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList2.SelectedItem.Value == "add")
            {
                Image2.Visible = false;
                Label1.Visible = false;
                namecat.Visible = true;
                Label2.Visible = true;
                imgCat.Visible = true;
                Label3.Visible = true;
                titleCat.Visible = true;
                DropDownList2.Visible = false;
                Label13.Visible = true;
                addCat.Text = "إضافة";
                namecat.Value = "";
                titleCat.Value = "";
                Label12.Text = "";

            }
            else if (RadioButtonList2.SelectedItem.Value == "edit")
            {
                Image2.Visible = true;
                Label12.Text = "";
                Label1.Visible = true;
                namecat.Visible = true;
                Label2.Visible = true;
                imgCat.Visible = true;
                Label3.Visible = true;
                titleCat.Visible = true;
                DropDownList2.Visible = true;
                Label13.Visible = true;
                addCat.Text = "تعديل";
                add_data_drop();
                add_data_toEdit();
            }
            else if (RadioButtonList2.SelectedItem.Value == "delete")
            {
                Image2.Visible = false;
                Label12.Text = "";
                Label1.Visible = true;
                namecat.Visible = false;
                Label2.Visible = false;
                imgCat.Visible = false;
                Label3.Visible = false;
                titleCat.Visible = false;
                Label13.Visible = false;
                DropDownList2.Visible = true;
                addCat.Text = "حذف";
                add_data_drop();
                namecat.Value = "";
                titleCat.Value = "";
            }
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal2();", true);
        }

        private void add_data_toEdit()
        {
            

            using (SqlConnection myConnection1 = new SqlConnection(ConnectionString.connectionString))
            {
                string type = DropDownList2.SelectedValue;
                int id = -1;
                Int32.TryParse(type, out id);
                string SQL = "Select * from categories where id = " + id;
                SqlCommand CMD = new SqlCommand(SQL, myConnection1);
                myConnection1.Open();
                using (SqlDataReader reader = CMD.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        string idCat = reader["id"].ToString();
                        string nameCat = reader["name"].ToString();
                        string title = reader["title"].ToString();
                        Image2.ImageUrl = "~/img/cats/" + reader["image"].ToString();
                        namecat.Value = nameCat;
                        titleCat.Value = title;
                    }
                }
                myConnection1.Close();
            }
        }

        void add_data_drop()
        {
            DropDownList2.Items.Clear();
            int type_int = DropDownListCat.SelectedIndex;
            using (SqlConnection myConnection1 = new SqlConnection(ConnectionString.connectionString))
            {
                DropDownList2.Items.Clear();
                string SQL = "Select * from categories where type = " + type_int;
                SqlCommand CMD = new SqlCommand(SQL, myConnection1);
                myConnection1.Open();
                using (SqlDataReader reader = CMD.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string idCat = reader["id"].ToString();
                        string nameCat = reader["name"].ToString();
                        DropDownList2.Items.Add(new ListItem(nameCat, idCat));
                    }
                }
                myConnection1.Close();
            }
        }

        protected void DropDownListCat_SelectedIndexChanged(object sender, EventArgs e)
        {
            add_data_drop();
            if (RadioButtonList2.SelectedItem.Value == "edit")
            {
                namecat.Value = "";
                titleCat.Value = "";
                add_data_toEdit();
            }

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal2();", true);
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            add_data_toEdit();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal2();", true);

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('fox1');", true);
            button1Clicked = true;
            if (RadioButtonList1.SelectedItem.Value == "add")
            {
                string cat = "";
                if (selectCatItem.SelectedIndex > -1)
                {
                    cat = selectCatItem.Items[selectCatItem.SelectedIndex].Value;
                }
                string name = nameItem.Value.Trim();
                string title = titleItem.Value.Trim();
                string description = descriptionItem.Value.Trim();
                bool showInMain = CheckBox1.Checked;
                int length = imgItem.PostedFile.ContentLength;
                String Filename = imgItem.FileName;
                if (imgItem.HasFile && length > 0 && name.Length > 0 && cat.Length > 0)// && title.Length > 0 && description.Length > 0
                {
                    Button1.Enabled = false;
                    Label11.Text = "جاري رفع البيانات...";
                    imgItem.SaveAs(Server.MapPath("/img/items/" + Filename));

                    SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);
                    string query = "INSERT INTO items_table (category_id, image, size, name, title, description, showInMain)";
                    query += " VALUES (@category_id, @image, @size, @name, @title, @description, @showInMain)";
                    SqlCommand myCommand = new SqlCommand(query, myConnection);
                    myCommand.Parameters.AddWithValue("@category_id", Int32.Parse(cat));
                    myCommand.Parameters.AddWithValue("@image", Filename);
                    myCommand.Parameters.AddWithValue("@size", length);
                    myCommand.Parameters.AddWithValue("@name", name);
                    myCommand.Parameters.AddWithValue("@title", title);
                    myCommand.Parameters.AddWithValue("@description", description);
                    myCommand.Parameters.AddWithValue("@showInMain", showInMain);
                    myConnection.Open();
                    myCommand.ExecuteNonQuery();
                    myConnection.Close();
                    Label11.Text = "تم رفع البيانات";
                    Button1.Enabled = true;
                     nameItem.Value = "";
                     titleItem.Value = "";
                      descriptionItem.Value = "";
                    CheckBox1.Checked = false;
                }
                else
                {
                    Label11.Text = "أدخل جميع الحقول";
                }
                //selectedData();
            }
            else if (RadioButtonList1.SelectedItem.Value == "edit")
            {
                string nameitem = DropDownList3.Items[DropDownList3.SelectedIndex].Text;
                string name = nameItem.Value.Trim();
                string title = titleItem.Value.Trim();
                string description = descriptionItem.Value.ToString().Trim();
                bool showInMain = CheckBox1.Checked;
                int length = imgItem.PostedFile.ContentLength;
                String Filename = imgItem.FileName;
                string category_id_str = selectCatItem.SelectedValue;
                int category_id; 
                int.TryParse(category_id_str, out category_id);
                addCat.Enabled = false;
                Label12.Text = "جاري تعديل البيانات";
                if (Filename.Length > 0)
                {
                    imgItem.SaveAs(Server.MapPath("/img/items/" + Filename));
                    SqlConnection myConnection1 = new SqlConnection(ConnectionString.connectionString);
                    string query1 = "UPDATE items_table SET  size = @size, image = @image Where name = @nameitem AND category_id = @category_id";
                    SqlCommand myCommand1 = new SqlCommand(query1, myConnection1);
                    myCommand1.Parameters.AddWithValue("@category_id", category_id);
                    myCommand1.Parameters.AddWithValue("@nameitem", nameitem);
                    myCommand1.Parameters.AddWithValue("@image", Filename);
                    myCommand1.Parameters.AddWithValue("@size", length);
                    myConnection1.Open();
                    myCommand1.ExecuteNonQuery();
                    myConnection1.Close();
                }
                SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);
                string query = "UPDATE items_table SET name = @name, title = @title, description = @description, showInMain = @showInMain Where name = @nameitem";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                myCommand.Parameters.AddWithValue("@nameitem", nameitem);
                myCommand.Parameters.AddWithValue("@name", name);
                myCommand.Parameters.AddWithValue("@title", title);
                myCommand.Parameters.AddWithValue("@description", description);
                myCommand.Parameters.AddWithValue("@showInMain", showInMain);
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                myConnection.Close();
                addCat.Enabled = true;
                Label12.Text = "تم تعديل البيانات";
                selectedData();
                selecteditems();
                gettoEdit();
            }
            else if (RadioButtonList1.SelectedItem.Value == "delete")
            {
                Label12.Text = "جاري حذف البيانات";
                SqlConnection myConnection = new SqlConnection(ConnectionString.connectionString);
                string query = "delete from items_table where name  = ";
                query += " @name";
                SqlCommand myCommand = new SqlCommand(query, myConnection);
                string name = "";
                if (DropDownList3.SelectedIndex > -1)
                    name = DropDownList3.Items[DropDownList3.SelectedIndex].Text;
                myCommand.Parameters.AddWithValue("@name", name);
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                myConnection.Close();
                Label12.Text = "تم حذف البيانات";
                selecteditems();
            }
        }
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem.Value == "add")
            {
                //CheckBox1.Visible = false;
                Image1.Visible = false;
                Label6.Visible = false;
                Label14.Visible = true;
                DropDownList3.Visible = false;
                nameItem.Visible = true;
                Label7.Visible = true;
                imgItem.Visible = true;
                Label8.Visible = true;
                titleItem.Visible = true;
                Label10.Visible = true;
                descriptionItem.Visible = true;
                //CheckBox1.Visible = true;
                selectedData();
                Button1.Text = "إضافة";
                nameItem.Value = "";
                titleItem.Value = "";
                descriptionItem.Value = "";
                CheckBox1.Checked = false;
                Label11.Text = "";
            }
            else if (RadioButtonList1.SelectedItem.Value == "edit")
            {
                Image1.Visible = true;
                selectedData();
                selecteditems();
                Label6.Visible = true;
                Label14.Visible = true;
                DropDownList3.Visible = true;
                nameItem.Visible = true;
                Label7.Visible = true;
                imgItem.Visible = true;
                Label8.Visible = true;
                titleItem.Visible = true;
                Label10.Visible = true;
                descriptionItem.Visible = true;
                CheckBox1.Visible = false;
                gettoEdit();
                Button1.Text = "تعديل";
                CheckBox1.Checked = false;
                Label11.Text = "";
            }
            else if (RadioButtonList1.SelectedItem.Value == "delete")
            {
                Image1.Visible = false;
                Label6.Visible = true;
                Label14.Visible = false;
                DropDownList3.Visible = true;
                nameItem.Visible = false;
                Label7.Visible = false;
                imgItem.Visible = false;
                Label8.Visible = false;
                titleItem.Visible = false;
                Label10.Visible = false;
                descriptionItem.Visible = false;
                CheckBox1.Visible = false;
                selectedData();
                selecteditems();
                Button1.Text = "حذف";
                Label11.Text = "";
            }
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            button1Clicked = true;
            selectedData();
            selecteditems();
            gettoEdit();
        }

        void selectedData()
        {
            selectCatItem.Items.Clear();
            string type = DropDownList1.SelectedValue;
            int type_int = Int32.Parse(type);
            using (SqlConnection myConnection1 = new SqlConnection(ConnectionString.connectionString))
            {
                selectCatItem.Items.Clear();
                string SQL = "Select * from categories where type = " + type_int;
                SqlCommand CMD = new SqlCommand(SQL, myConnection1);
                myConnection1.Open();
                using (SqlDataReader reader = CMD.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string idCat = reader["id"].ToString();
                        string nameCat = reader["name"].ToString();
                        selectCatItem.Items.Add(new ListItem(nameCat, idCat));
                    }
                }
                myConnection1.Close();
            }
        }
        void selecteditems()
        {
            DropDownList3.Items.Clear();
            string cat = "-1";
            if (selectCatItem.SelectedIndex > -1)
                cat = selectCatItem.Items[selectCatItem.SelectedIndex].Value;
            int cat_int = Int32.Parse(cat);
            using (SqlConnection myConnection1 = new SqlConnection(ConnectionString.connectionString))
            {
                string SQL = "Select * from items_table where category_id = " + cat_int;
                SqlCommand CMD = new SqlCommand(SQL, myConnection1);
                myConnection1.Open();
                using (SqlDataReader reader = CMD.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string idCat = reader["id"].ToString();
                        string nameCat = reader["name"].ToString();
                        DropDownList3.Items.Add(new ListItem(nameCat, idCat));
                    }
                }
                myConnection1.Close();
            }
        }
        private void gettoEdit()
        {
            string nameitem = "";
            if (DropDownList3.SelectedIndex > -1 && RadioButtonList1.SelectedValue == "edit")
            {
                nameitem = DropDownList3.Items[DropDownList3.SelectedIndex].Text;
                using (SqlConnection myConnection1 = new SqlConnection(ConnectionString.connectionString))
                {
                    string query = "select * from items_table where name  = ";
                    query += " @name";
                    SqlCommand myCommand = new SqlCommand(query, myConnection1);
                    myCommand.Parameters.AddWithValue("@name", nameitem);
                    myConnection1.Open();
                    using (SqlDataReader reader = myCommand.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            string name = reader["name"].ToString();
                            string image = reader["image"].ToString();
                            string title = reader["title"].ToString();
                            string description = reader["description"].ToString();
                            bool showInMain = Boolean.Parse(reader["showInMain"].ToString());
                            Image1.ImageUrl = "~/img/items/" + reader["image"].ToString();
                            nameItem.Value = nameitem;
                            titleItem.Value = title;
                            descriptionItem.Value = description;
                            CheckBox1.Checked = showInMain;
                        }
                    }
                    myConnection1.Close();
                }
            }
            else
            {
                nameItem.Value = "";
                titleItem.Value = "";
                descriptionItem.Value = "";
            }
        }
        protected void selectCatItem_SelectedIndexChanged(object sender, EventArgs e)
        {
            selecteditems();
            gettoEdit();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            gettoEdit();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
        }


    }
}