using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages.User
{
    public partial class page_profile_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cls_operations_user obj1 = new cls_operations_user(0, "", "", "", "", "", "", "");
            cls_operations_user obj2 = new cls_operations_user(0, "", "", "", "", "", "", "");
            obj2 = obj1.select_Profile(Session["Idee"].ToString());
            txt_first_name.Text = obj2.First_name;
            txt_last_name.Text = obj2.Last_name;
            txt_cell_phone.Text = obj2.Number_phone;
            DDL_country.SelectedValue = obj2.Country;
            txt_city.Text = obj2.City;
            txt_address.Text = obj2.Address;
            txt_zipcode.Text = obj2.Zip_code;

            cls_operations_user obj3 = new cls_operations_user(0, "", "", "", "");
            cls_operations_user obj4 = new cls_operations_user(0, "", "", "", "");
            obj4 = obj3.select_Profile1(Session["Idee"].ToString());
            txt_credit_card.Text = obj4.Number;
            DDL_type.SelectedValue = obj4.Type;
            txt_code_security.Text = obj4.Code_security;
            
        }

        protected void SelectedIndex_Changed(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_Pages/page_home.aspx");
        }

        protected void SelectedIndex_Changed1(object sender, EventArgs e)
        {

        }

        protected void SelectedIndex_Changed4(object sender, EventArgs e)
        {

        }

        protected void SelectedIndex_Changed2(object sender, EventArgs e)
        {

        }
    }
}