using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages
{
    public partial class page_login_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_singin_Click(object sender, EventArgs e)
        {

             int id;
            try
             {

                 cls_login_admin obj = new cls_login_admin("", "");

                 if (obj.login(txt_email.Text, txt_password.Text))
                 {

                     id = obj.ID_data;

                     Session["email"] =txt_email.Text;
                     Session["role"] = "Admin";
                     Session["Ides"] = id;

                     Response.Redirect("~/Web_Pages/page_home.aspx");
                     lbl_status.Text = "yes";
                 }
                 else
                 {

                     lbl_status.Text = " Access denied";
                 }
             }
             catch (Exception ex)
             {
                 lbl_status.Text = ex.ToString();
             }
            
        }

        protected void btn_singup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_Pages/Admin/page_singup_admin.aspx");
        }
    }
}