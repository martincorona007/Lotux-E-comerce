using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_example.Web_Pages
{
    public partial class page_management_admin : System.Web.UI.Page
    {
        int idsk;
        protected void Page_Load(object sender, EventArgs e)
        {
            idsk = Int32.Parse(Request.QueryString["Ides"]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("page_insert_product_admin.aspx?idk="+idsk);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("page_update_product_admin.aspx");
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("page_delete_product_admin.aspx");
        }
    }
}