using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages.Admin
{
    public partial class page_insert_product_admin : System.Web.UI.Page
    {
        bool status;
        protected void Page_Load(object sender, EventArgs e)
        {
            //kip = Int32.Parse(Request.QueryString["idk"]);
        }

        protected void btn_come_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("page_management_admin.aspx");
        }

        protected void btn_add_Click(object sender, EventArgs e)
        {
            try
            {


                cls_operations_admin obj = new cls_operations_admin(0,0,0,"","",0,"","",0);

                obj.Fk_id_admin = Int32.Parse(Session["Ides"].ToString());
                obj.Fk_id_cat = Int32.Parse(DDL_category.SelectedValue);
                obj.Name = txt_name.Text;
                obj.Brand = txt_brand.Text;
                obj.Price = float.Parse(txt_price.Text);
                obj.Description = txt_description.Text;
                obj.Photo = img_upload(FileUpload);
                obj.Current_stock = Int32.Parse(txt_current_stock.Text);

                if (status == true)//check if the picture fulfill all the requirements in the algorithm
                {
                    
                    obj.Add();

                    lbl_success.Text = "Product successfully added";

                    txt_name.Text = "";
                    txt_brand.Text = "";
                    txt_price.Text = "";
                    txt_description.Text = "";
                    DDL_category.SelectedValue = "0";
                    txt_current_stock.Text = "";
                    status = false;
                }
                
            }
            catch(Exception ex)
            {
                // Mostrara un mensaje en caso de no completar la operación
                Response.Write("ERROR 4004  "+ex);
            }
        }
        public string img_upload(FileUpload FileUpload1)
        {
            string s = " ";
            if (FileUpload1.HasFile)
            {
                // Get the file extension
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".jpg")
                {

                    // Get the file size
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    // If file size is greater than 2 MB
                    if (fileSize > 2097152)
                    {
                        lbl_verification.Text = "File size cannot be greater than 2 MB";
                    }
                    else
                    {
                        Random r = new Random();
                        int x = r.Next(0, 100000);
                        s = "~/Styles/Upload_pictures/" + x.ToString() + FileUpload1.FileName;
                        // Upload the file
                        FileUpload1.SaveAs(Server.MapPath(s));
                        // lbl_verification.Text = "File uploaded successfully";
                        lbl_verification.Text = "";
                        status = true;
                    }
                }
                else
                {
                    lbl_verification.Text = "Only files with .png and .jpg extension are allowed";
                    status = false;
                }
            }
            else
            {
                //Label2.ForeColor = System.Drawing.Color.Red;
                lbl_verification.Text = "Please select a file";
            }

            return s;

        }
    }
}