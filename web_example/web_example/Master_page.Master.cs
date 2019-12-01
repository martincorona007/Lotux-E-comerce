using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_example
{
    public partial class Master_page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    LB_login_admin.Visible = true;
                    LB_login_user.Visible = true;

                    LB_logout.Visible = false;
                    LB_profile_admin.Visible = false;
                    LB_hello_user.Visible = false;
                }else if (Session["role"].Equals("Admin"))
                {
                    LB_login_admin.Visible = false;
                    LB_login_user.Visible = false;

                    LB_logout.Visible = true;
                    LB_profile_admin.Visible = true;
                    LB_hello_user.Visible = true;
                    LB_hello_user.Text = "Welcome Admin";
                }
                else if (Session["role"].Equals("User"))
                {
                    LB_login_admin.Visible = false;
                    LB_login_user.Visible = false;

                    LB_logout.Visible = true;
                    LB_profile_admin.Visible = false;
                    LB_hello_user.Visible = true;
                    LB_hello_user.Text = "Welcome " + Session["email"].ToString();
                }
            }catch(Exception my_ex)
            {

            }

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            //profile
            Response.Redirect("page_profile_admin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //loginuser
            Response.Redirect("page_profile_user.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            //login admin
            Response.Redirect("page_login_admin.aspx");
        }

        protected void LB_hello_user_Click(object sender, EventArgs e)
        {
            
        }

        protected void LB_logout_Click(object sender, EventArgs e)
        {
            Session["email"] = "";
            Session["role"] = "";
            LB_login_admin.Visible = true;
            LB_login_user.Visible = true;

            LB_logout.Visible = false;
            LB_profile_admin.Visible = false;
            LB_hello_user.Visible = false;
            LB_hello_user.Text = "";
        }
    }
}