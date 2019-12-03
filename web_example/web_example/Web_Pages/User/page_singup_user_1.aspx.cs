using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages.User
{
    public partial class page_singup_user_1 : System.Web.UI.Page
    {
        String mail;
        int get_id;
        int va;
        protected void Page_Load(object sender, EventArgs e)
        {
            //mail = Request.QueryString["eemail"];
        }

        protected void SelectedIndex_Changed(object sender, EventArgs e)
        {
            cls_country met = new cls_country();

            va = met.existe(DDL_country.SelectedValue);
            lbl_lada.Text = va.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                cls_singup_user obj = new cls_singup_user( "", "", "");
                get_id = obj.existe(Session["Email"].ToString());
                obj.ID_data = get_id;
                obj.First_name = txt_first_name.Text;
                obj.Last_name = txt_last_name.Text;
                obj.Number_phone = "+" + lbl_lada.Text + " " + txt_cell_phone.Text;
                obj.Country = DDL_country.SelectedValue;
                obj.City = txt_city.Text;
                obj.Address = txt_address.Text;
                obj.Zip_code = txt_zipcode.Text;
                obj.Add_1();
                Session["Idp"] = get_id;

                Response.Write("Successful");
                //Se redirecciona al login 
                Response.Redirect("~/Web_Pages/User/page_singup_user_2.aspx");
            }
            catch (Exception exs)
            {
                // Mostrara un mensaje en caso de no completar la operación
                Response.Write("ERROR 4004  " + exs);
            }
        }
    }
}