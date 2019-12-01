using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages
{
    public partial class page_singup_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //Se manda a llamar la clase classpageRegistrationUserClient para mandar a los metodos
                //correspondientes para registar el usuario y almacenar en los Getters y Setters 
                //los datos obtenidos por el usuario.
                cls_singup_admin obj = new cls_singup_admin("", "","");
                if (obj.Verification_Email(txt_email.Text))
                {
                    lbl_verification.Text = "That username is taken. Try another.";
                }
                else
                {
                    obj.Email = txt_email.Text;
                    obj.Kave = txt_password1.Text;
                    obj.Access = "Admin";
                    obj.Add();
                    Session["email"] = txt_email.Text;


                    //Mostrara un mensaje en caso de ser exitoso la operación
                    Response.Write("Successful");
                    //Se redirecciona al login 
                    Response.Redirect("~/Web_Pages/Admin/page_singup_admin_1.aspx?");

                }

            }
            catch
            {
                // Mostrara un mensaje en caso de no completar la operación
                Response.Write("ERROR 4004  ");
            }
        }
    }
}