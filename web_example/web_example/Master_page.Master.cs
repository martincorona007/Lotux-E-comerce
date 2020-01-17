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

                    LinkButton3.Visible = true;//login admin
                    LinkButton4.Visible = true;//login user

                    LinkButton1.Visible = false;//profile user
                    LinkButton2.Visible = false;//management
                    LinkButton5.Visible = false;//profile admin
                    LinkButton7.Visible = false;//log out
                    LinkButton8.Visible = false;

                }else if (Session["role"].Equals("Admin"))
                {
                    
                    LinkButton3.Visible = false;//login admin
                    LinkButton4.Visible = false;//login user

                    LinkButton1.Visible = false;//profile user
                    LinkButton2.Visible = true;//management
                    LinkButton5.Visible = true;//profile admin
                    LinkButton7.Visible = true;//log out
                    LinkButton8.Visible = true;
                    LinkButton8.Text = "Welcome Admin";
                }
                else if (Session["role"].Equals("User"))
                {
                    
                    LinkButton3.Visible = false;//login admin
                    LinkButton4.Visible = false;//login user

                    LinkButton1.Visible = true;//profile user
                    LinkButton2.Visible = false;//management
                    LinkButton5.Visible = false;//profile admin
                    LinkButton7.Visible = true;//log out
                    LinkButton8.Visible = true;
                    LinkButton8.Text = "Welcome " + Session["email"].ToString();
                }
            }catch(Exception my_ex)
            {
                Response.Write("ERROR 4004"+my_ex);
            }

        }

           

       
        

        protected void LB_Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_Pages/page_home.aspx");
        }

        
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            //profile
            Response.Redirect("~/Web_Pages/User/page_profile_user.aspx");
        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            //management
            Response.Redirect("~/Web_Pages/Admin/page_management_admin.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            //login admin
            Response.Redirect("~/Web_Pages/Admin/page_login_admin.aspx");
        }

        protected void LinkButton4_Click1(object sender, EventArgs e)
        {
            //login user
            Response.Redirect("~/Web_Pages/User/page_login_user.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            //profile
            Response.Redirect("~/Web_Pages/Admin/page_profile_admin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            //log out

            Session["email"] = "";
            Session["role"] = "";
            Session["Ides"] = "";
            LinkButton3.Visible = true;//login admin
            LinkButton4.Visible = true;//login user

            LinkButton1.Visible = false;//profile user
            LinkButton2.Visible = false;//management
            LinkButton5.Visible = false;//profile admin
            LinkButton7.Visible = false;//log out
            LinkButton8.Visible = false;
            //LinkButton8.Text = "Welcome " + Session["email"].ToString();
            

            
            //Response.Redirect("~/Web_Pages/page_home.aspx");
            
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_Pages/Admin/page_singup_admin_2.aspx");

        }
    }
}