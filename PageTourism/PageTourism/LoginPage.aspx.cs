using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PageTourism
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            userGatewayDataContext db = new userGatewayDataContext();

            HttpCookie cookie = new HttpCookie("userInfo");



            Admin temps = (from u in db.Admin
                                 where u.login == txtUserName.Text.Trim() && u.password == txtPassWord.Text.Trim()
                                 select u).SingleOrDefault<Admin>();

            if (temps != null)
            {
                cookie.Values.Add("nom", temps.nom);
                cookie.Expires = DateTime.Now.AddDays(3);
                Response.Cookies.Add(cookie);
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Response.Write("<script>alert('bad login informations');</script>");
            }

        }
    }
}