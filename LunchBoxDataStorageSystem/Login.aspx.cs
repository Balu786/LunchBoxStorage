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
            connection.Open();
            SqlDataAdapter adapter = new SqlDataAdapter("userAuthentication", connection);
            adapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            adapter.SelectCommand.Parameters.Add(new SqlParameter("@userName", SqlDbType.VarChar, 40));
            adapter.SelectCommand.Parameters["@userName"].Value = userName;
            adapter.SelectCommand.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar, 40));
            adapter.SelectCommand.Parameters["@password"].Value = password;

            //SqlCommand command = new SqlCommand("select * from users where username='testadmin' and pass_word='testadmin';");
            
            String query = "select * from users where username='" + userName +"' and pass_word='" + password + "';";
            //SqlDataAdapter da = new SqlDataAdapter(query, connection);
            DataSet ds = new DataSet();
           // da.Fill(ds);
            adapter.Fill(ds);
            if (ds.Tables.Count > 0)
            {

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["userId"] = ds.Tables[0].Rows[0][0];
                    Session["role"] = ds.Tables[0].Rows[0][1];
                    Session["userName"] = ds.Tables[0].Rows[0][2];
                    Session["groupid"] = ds.Tables[0].Rows[0][3];
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {

            }
            connection.Close();
        }

       /* private void btnGetAuthors_Click(object sender, System.EventArgs e)
        {
            SqlConnection MyConnection = new SqlConnection("server=(local);database=pubs;UID=myUser;PWD=myPassword;");

            SqlDataAdapter MyDataAdapter = new SqlDataAdapter("GetAuthorsByLastName", MyConnection);

            MyDataAdapter.SelectCommand.CommandType = CommandType.StoredProcedure;

            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@au_lname", SqlDbType.VarChar, 40));


            MyDataAdapter.SelectCommand.Parameters["@au_lname"].Value = (txtLastName.Text).Trim();

            MyDataAdapter.SelectCommand.Parameters.Add(new SqlParameter("@RowCount", SqlDbType.Int, 4));


            MyDataAdapter.SelectCommand.Parameters["@RowCount"].Direction = ParameterDirection.Output;

           
            DataSet DS = new DataSet();

            MyDataAdapter.Fill(DS, "AuthorsByLastName");

    
            lblRowCount.Text = MyDataAdapter.SelectCommand.Parameters[1].Value + " Rows Found!";


            GrdAuthors.DataSource = DS.Tables["AuthorsByLastName"].DefaultView;

        
            GrdAuthors.DataBind();

            MyDataAdapter.Dispose(); //Dispose the DataAdapter.
            MyConnection.Close(); //Close the connection.
        }*/
    }
}