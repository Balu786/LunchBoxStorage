using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace LunchBoxDataStorageSystem
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("select * from users where username='testadmin' and pass_word='testadmin';");
            connection.Open();
            String query = "select * from users where username='testadmin' and pass_word='testadmin';";
            SqlDataAdapter da = new SqlDataAdapter(query, connection);
            DataSet ds = new DataSet();
            da.Fill(ds);
            connection.Close();


        }
    }
}
