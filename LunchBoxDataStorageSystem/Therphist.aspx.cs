using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace LunchBoxDataStorageSystem
{
    public partial class Therphist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Usp_Theraphist", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Typecode",txtTypecode.Text);
            cmd.Parameters.AddWithValue("@FirstName", txtFirstNme.Text);
            cmd.Parameters.AddWithValue("@lastName", txtLastname.Text);
             cmd.Parameters.AddWithValue("@Inrenalemail", txtIemail.Text);
             cmd.Parameters.AddWithValue("@Phone", txtPhoneNumber.Text);
             cmd.Parameters.AddWithValue("@Zipcode", txtZipCode.Text);
            cmd.ExecuteNonQuery();
        }
    }
}