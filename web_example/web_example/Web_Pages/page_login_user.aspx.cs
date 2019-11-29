using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_singin_Click(object sender, EventArgs e)
        {
            string namee;//Variable string para poder almacenar el nombre del cliente.
            int id;
            //Se utilizara un try catch para poder saber exactamente cual es el error correspondiente.
            try
            {
                //Instancia de clase Login donde se obtendran los metodos necesarios para realizar
                //la operacion del login.
                cls_login_user obj = new cls_login_user("", "");
                //Dentro de esta condicional se utiliza el nombre de la instacia
                //y se manda a llamar al metodo login que realizara
                //si el usuario esta dentro de la base de datos.
                if (obj.login(txt_email.Text, txt_password.Text))
                {

                        id= obj.ID_data; //Se obtiene El ID del usuario del Setter y Getter.
                        namee = obj.Name;
                    Session["Value"] =namee.ToString();
                    txt_email.Text = Session["Value"].ToString();
                    //En esta linea de codigo realiza la operación de enviar al Web Form pageMenucabanias 
                    //el ID y el nombre del usuario.
                    Response.Redirect("~/Web_Pages/page_home.aspx?Id=" + id + "&Name=" + namee);
                    lbl_status.Text = "yes";
                }
                else
                {
                    //Etiqueta en el cual mostrara en caso de ser lo contrario a la condición.
                    lbl_status.Text = " Access denied";
                }
            }
            catch(Exception ex)
            {
                lbl_status.Text = ex.ToString();
            }
        }

        protected void btn_singup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_Pages/page_singup.aspx");
        }
    }
}