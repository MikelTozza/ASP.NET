using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PageTourism
{
    public partial class Admin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies.Get("userInfo");

            if (cookie != null)
            {
                TextBox t = new TextBox();
                t.Text = cookie.Values.Get("nom");
                form1.Controls.Add(t);
            }
            else
            {
                Response.Redirect("Home.aspx");
            }

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}