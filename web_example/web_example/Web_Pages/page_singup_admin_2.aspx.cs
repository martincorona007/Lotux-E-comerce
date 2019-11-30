using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages
{
    public partial class page_singup_admin_2 : System.Web.UI.Page
    {
        int ids;
        protected void Page_Load(object sender, EventArgs e)
        {
            ids = Int32.Parse(Request.QueryString["id"]);
        }

        protected void SelectedIndex_Changed(object sender, EventArgs e)
        {

        }

        protected void SelectedIndex_Changed1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //Se manda a llamar la clase classpageRegistrationUserClient para mandar a los metodos
                //correspondientes para registar el usuario y almacenar en los Getters y Setters 
                //los datos obtenidos por el usuario.
                cls_singup_admin obj = new cls_singup_admin(0,"","","","");
                
                obj.ID_data =ids;
                obj.Number = txt_credit_card.Text;
                obj.Type= DDL_type.SelectedValue;
                obj.Date_end = DDL_1.SelectedValue+"/"+DDL2.SelectedValue;
                obj.Code_security= txt_code_security.Text;
                obj.Add_2();


                //Mostrara un mensaje en caso de ser exitoso la operación
                Response.Write("Successful");
                //Se redirecciona al login 
                Response.Redirect("~/Web_Pages/page_login_admin.aspx");
            }
            catch(Exception ex)
            {
                // Mostrara un mensaje en caso de no completar la operación
                Response.Write("ERROR 4004  "+ex);
            }
        }
    }
}