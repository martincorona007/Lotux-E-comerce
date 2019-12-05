using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_example.Web_Pages.Admin
{
    public partial class page_delete_product_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_come_back_Click(object sender, EventArgs e)
        {
            Response.Redirect("page_management_admin.aspx");
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



        public void DeleteFileFromFolder(string StrFilename)
        {

            string strPhysicalFolder = Server.MapPath("..\\");

            string strFileFullPath = strPhysicalFolder + StrFilename;

            if (System.IO.File.Exists(strFileFullPath))
            {
                System.IO.File.Delete(strFileFullPath);
            }

        }


    }
}