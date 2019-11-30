﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages
{
    public partial class page_sales_management : System.Web.UI.Page
    {
        String mail;
        int get_id;
        int va;
        protected void Page_Load(object sender, EventArgs e)
        {
            mail = Request.QueryString["Mail"];
        }
        protected void SelectedIndex_Changed(object sender, EventArgs e)
        {
            cls_country met = new cls_country();
            
            va = met.existe(DDL_country.SelectedValue);
            lbl_lada.Text= va.ToString();
          
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //Se manda a llamar la clase classpageRegistrationUserClient para mandar a los metodos
                //correspondientes para registar el usuario y almacenar en los Getters y Setters 
                //los datos obtenidos por el usuario.
                cls_singup_admin obj = new cls_singup_admin(0, "","","","","","","");
                get_id=obj.existe(mail);
                obj.ID_data = get_id;
                obj.First_name = txt_first_name.Text ;
                obj.Last_name =txt_last_name.Text;
                obj.Number_phone ="+"+lbl_lada.Text+" "+txt_cell_phone.Text;
                obj.Country=DDL_country.SelectedValue;
                obj.City =txt_city.Text;
                obj.Address = txt_address.Text;
                obj.Zip_code=txt_zipcode.Text;
                obj.Add_1();


                //Mostrara un mensaje en caso de ser exitoso la operación
                Response.Write("Successful");
                //Se redirecciona al login 
                Response.Redirect("~/Web_Pages/page_singup_admin_2.aspx?id=" + get_id);
            }
            catch(Exception exs)
            {
                // Mostrara un mensaje en caso de no completar la operación
                Response.Write("ERROR 4004  "+exs);
            }
        }

        
    }
}