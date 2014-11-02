using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LunchBoxDataStorageSystem
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        public String roleId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Keys.Count <= 0)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                //menuPatent
                //menuOrders
                //menuTherapist
                //menuAgents
                //menuMySetup
                //menuAdministration
                lblUserName.Text = "Welcome  " + Session["userName"].ToString();
                roleId = Session["role"].ToString();
                int role = Convert.ToInt32(Session["role"].ToString());
                
            }
        }
        public void logoutAction(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        public void menuItemClicked()
        {
           //Response.Write(sender.ToString());

           // Response.Write("ID values is"+id);
            Response.Redirect("Orders.aspx");
        }
    }
}
