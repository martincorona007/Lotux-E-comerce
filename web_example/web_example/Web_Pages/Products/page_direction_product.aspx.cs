using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_example.Web_Pages.Products
{
    public partial class page_direction_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SelectedIndex_Changed(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Web_Pages/Products/page_pay_products.aspx");
        }

        protected void btn_1_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Now;
            txt_time1.Text = today.ToString("MM-dd-yyyy");//get The actual date.
            txt_time2.Text = today.AddDays(15).ToString();
        }

        protected void btn_2_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Now;
            txt_time1.Text = today.ToString("MM-dd-yyyy");//get The actual date.
           txt_time2.Text = today.AddDays(5).ToString();
        }
    }
}