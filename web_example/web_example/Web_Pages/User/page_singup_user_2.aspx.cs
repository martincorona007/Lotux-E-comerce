using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages.User
{
    public partial class page_singup_user_2 : System.Web.UI.Page
    {
        int ids;
        protected void Page_Load(object sender, EventArgs e)
        {
          //  ids = Int32.Parse(Request.QueryString["idep"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                
                cls_singup_user obj = new cls_singup_user(0, "", "", "", "");

                obj.ID_data = Int32.Parse(Session["Idp"].ToString());
                obj.Number = txt_credit_card.Text;
                obj.Type = DDL_type.SelectedValue;
                obj.Date_end = DDL_1.SelectedValue + "/" + DDL2.SelectedValue;
                obj.Code_security = txt_code_security.Text;
                obj.Add_2();


                //Mostrara un mensaje en caso de ser exitoso la operación
                Response.Write("Successful");
                //Se redirecciona al login 
                Session["Email"] = "";
                Session["Idp"] = "";
                Response.Redirect("~/Web_Pages/User/page_login_user.aspx");
                
            }
            catch (Exception ex)
            {
                // Mostrara un mensaje en caso de no completar la operación
                Response.Write("ERROR 4004  " + ex);
            }
        }

        protected void SelectedIndex_Changed(object sender, EventArgs e)
        {

        }

        protected void SelectedIndex_Changed1(object sender, EventArgs e)
        {

        }
    }
}