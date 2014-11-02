using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace LunchBoxDataStorageSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void authenticate(object sender, EventArgs e)
        {
            //Response.Write("This event fired...");
            //txtPswd
            //txtUserName
            String userName = txtUserName.Text.Trim();
            String password = txtPswd.Text;

            String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            //SqlCommand command = new SqlCommand("select * from users where username='testadmin' and pass_word='testadmin';");
            connection.Open();
            String query = "select * from users where username='" + userName +"' and pass_word='" + password + "';";
            SqlDataAdapter da = new SqlDataAdapter(query, connection);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["userId"]=ds.Tables[0].Rows[0][0];
                Session["userName"] = ds.Tables[0].Rows[0][1];
                Session["role"] = ds.Tables[0].Rows[0][3];
                Response.Redirect("Home.aspx");
            }
            connection.Close();
        }
    }
}