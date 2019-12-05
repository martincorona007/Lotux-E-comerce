using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web_example.Classes;

namespace web_example.Web_Pages.Admin
{
    public partial class page_update_product_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LINK_BUTTUN_ID_Click(object sender, EventArgs e)
        {
            cls_operations_admin obj2 = new cls_operations_admin();

            cls_conection obj1 = new cls_conection();
            obj2=obj1.Select(txt_ID.Text);
            txt_name.Text = obj2.Name;
            txt_brand.Text = obj2.Brand;
            txt_price.Text = obj2.Price.ToString();
            txt_description.Text = obj2.Description;
            DDL_category.SelectedValue = obj2.Fk_id_cat.ToString();
            Image2.ImageUrl = obj2.Photo;
            txt_current_stock.Text = obj2.Current_stock.ToString();
        }
    }
}