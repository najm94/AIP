using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AIP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None; 

        }

        protected void Button_login_Click(object sender, EventArgs e)
        {

        }

        protected void ImgBtn_login_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Admin_After_Login.aspx", false);
        }
    }
}
