using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages.Admin
{
    public partial class page_delete_product_admin : System.Web.UI.Page
    {
        string global_filepath;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_come_back_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Web_Pages/Admin/page_management_admin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            
                /*string sql = "Delete From [User] Where UserName=" + UserName;

            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            conn.Dispose();*/
        }



        

        protected void btn_delete_Click(object sender, EventArgs e)
        {
           


            /*difference between find_ID and Select is that find_ID is bool and Select return a class*/
            try
            {
                cls_operations_admin obj1 = new cls_operations_admin();
                cls_operations_admin obj2 = new cls_operations_admin();

                if (obj2.find_ID(txt_ID.Text))
                {
                    obj1=obj2.Select(txt_ID.Text);
                    global_filepath = obj1.Photo;

                    //lbl_success.Text = obj1.Photo;
                  //  lbl_success.Text = "Product Deleted Successfully";

                    // obj2.ID = Int32.Parse(txt_ID.Text);
                    //global_filepath = obj2.Photo;

                    
                    if (obj2.Delete(txt_ID.Text))
                    {
                        lbl_success.Text = "Product Deleted  Successfully ";
                        txt_ID.Text = "";
                        DeleteFileFromFolder(global_filepath);

                        //   DeleteFileFromFolder(global_filepath);
                    }
                    else
                    {
                        lblstatus.Text = obj2.msg;
                    }
                    lblstatus.Text = "";
                }
                else
                {
                    lblstatus.Text = "ID not found";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
            
        }
        public void DeleteFileFromFolder(string StrFilename)
        {
            string path = Server.MapPath(StrFilename);
            FileInfo file = new FileInfo(path);
            file.Delete();
            
        }
    }
}