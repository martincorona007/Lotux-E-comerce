using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages.Admin
{
    public partial class page_update_product_admin : System.Web.UI.Page
    {
        string global_filepath;
        bool status = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LINK_BUTTUN_ID_Click(object sender, EventArgs e)
        {
            cls_operations_admin obj2 = new cls_operations_admin(0,0,0,"","",0,"","",0);
            cls_operations_admin obj1 = new cls_operations_admin();
            if (obj2.find_ID(txt_ID.Text))
            {
                obj2 = obj1.Select(txt_ID.Text);
                txt_name.Text = obj2.Name;
                txt_brand.Text = obj2.Brand;
                txt_price.Text = obj2.Price.ToString();
                txt_description.Text = obj2.Description;
                DDL_category.SelectedValue = obj2.Fk_id_cat.ToString();
                Image2.ImageUrl = obj2.Photo;
                txt_current_stock.Text = obj2.Current_stock.ToString();
                global_filepath = obj2.Photo;
                lblstatus.Text = "";
              //  lbl_success.Text = "Product Updated Successfully " + global_filepath + "< ";

            }
            else
            {
                lblstatus.Text = "ID not found";
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            try
            {
                cls_operations_admin obj1 = new cls_operations_admin();
                cls_operations_admin obj2 = new cls_operations_admin(0, 0, 0, "", "", 0, "", "", 0);
                obj1 = obj2.Select(txt_ID.Text);
                global_filepath = obj1.Photo;


                  obj2.ID = Int32.Parse(txt_ID.Text);

                 obj2.Name = txt_name.Text.Trim();
                obj2.Brand = txt_brand.Text.Trim();
                obj2.Price= float.Parse(txt_price.Text);
                obj2.Description = txt_description.Text.Trim();
                obj2.Photo = img_upload(FileUpload1);
                obj2.Current_stock = Int32.Parse(txt_current_stock.Text);
                /*if (String.IsNullOrEmpty(obj2.Name)) //this was to verify i the var was empty of not
                {
                    Response.Write("<script>alert('fil');</script>");
                }
                else
                {
                    Response.Write("<script>alert('nope');</script>");
                }*/
                //lbl_success.Text = "Product Updated Successfully " + global_filepath+"< ";

                if (status == true)//check if the picture fulfill all the requirements in the algorithm
                {
                    
                    if (obj2.Updatek())
                    {

                        lbl_success.Text = "Product Updated Successfully ";
                       // Response.Write("<script>alert('success');</script>");
                        txt_ID.Text = "";
                        txt_name.Text = "";
                        txt_brand.Text = "";
                        txt_price.Text = "";
                        txt_description.Text = "";
                        DDL_category.SelectedValue = "0";
                        txt_current_stock.Text = "";
                       // DeleteFileFromFolder(global_filepath);
                        status = false;
                        DeleteFileFromFolder(global_filepath);
                    }
                    else
                    {
                        lbl_verification.Text = obj2.msg;
                    }
                }

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
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
                        /*ADD*/
                        Random r = new Random();
                        int x = r.Next(0, 100000);
                        s = "~/Styles/Upload_pictures/" + x.ToString() + FileUpload1.FileName;
                        // Upload the file
                        FileUpload1.SaveAs(Server.MapPath(s));
                        // lbl_verification.Text = "File uploaded successfully";
                        //
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
               
                lbl_verification.Text = "Please select a file";
            }

            return s;

        }
        public void DeleteFileFromFolder(string filepath)
        {
                string path = Server.MapPath(filepath);
                FileInfo file = new FileInfo(path);
                file.Delete();
            
            

        }
    }
}