using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages
{
    public partial class page_profile_admin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //I was trying to update the data but everytime I select the DropDowList refresh the page and remove the actual data
            cls_operations_admin obj1 = new cls_operations_admin(0, "", "", "", "", "", "", "");
            cls_operations_admin obj2 = new cls_operations_admin(0, "", "", "", "", "", "", "");
            obj2 = obj1.select_Profile(Session["Ides"].ToString());
            txt_first_name.Text = obj2.First_Name;
            txt_last_name.Text = obj2.Last_Name;
            txt_cell_phone.Text = obj2.Number_Phone;
            DDL_country.SelectedValue = obj2.Country;
            txt_city.Text = obj2.City;
            txt_address.Text = obj2.Address;
            txt_zipcode.Text = obj2.Zip_Code;

           
            /*
             
            bool status = true;

            if (status == true)
            {
                status = false;
                
                
            }
            else
            {
                //status = false;
            }*/
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {

                
            
            
        }

        protected void SelectedIndex_Changed(object sender, EventArgs e)
        {

        }

        protected void SelectedIndex_Changed1(object sender, EventArgs e)
        {

        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_Pages/Admin/page_management_admin.aspx");
            /*
            cls_operations_admin obj1 = new cls_operations_admin(0, "", "", "", "", "", "", "");
          
            bool strack;
            obj1.ID1 = int.Parse(Session["Ides"].ToString());
            obj1.First_Name = txt_first_name.Text;
            obj1.Last_Name = txt_last_name.Text;
            obj1.Number_Phone = txt_cell_phone.Text;
            obj1.Country = DDL_country.SelectedValue;
            obj1.City = txt_city.Text;
            obj1.Address = txt_address.Text;
            obj1.Zip_Code = txt_zipcode.Text;
            strack = obj1.update_Profile();
            if (strack)
            {
                lbl_success.Text = "Profile Updated Successfully";

            }
            else
            {
                lbl_success.Text = "NOPE";
                Response.Write("<script>alert('" + obj1.msg + "');</script>");
            }*/

        }
    }
}