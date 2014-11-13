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
    public partial class NewPatent : System.Web.UI.Page
    {
        String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDropDownList();
                bindPhysician();
            }
        }

        public void savePatent(object sender, EventArgs e)
        {

            String selectedTherapist = "null";
            String selectedPhysician = "null";
            String selectedHealthAgency = "null";
            if (drpdwnTherapist.SelectedValue != null)
            {

                selectedTherapist = drpdwnTherapist.SelectedValue;
            }
            if (drpdwnPhysican.SelectedValue != null)
            {

                selectedPhysician = drpdwnPhysican.SelectedValue;
            }
            if (drpdwnHealthAgency.SelectedValue != null)
            {

                selectedHealthAgency = drpdwnHealthAgency.SelectedValue;
            }

            DateTime today = DateTime.Today;

            String dob = calDOB.SelectedDate.ToShortDateString();
            
            SqlConnection connection = new SqlConnection(connectionString);
          //  String query = "INSERT INTO PATENT VALUES('" + txtPatentName.Text.Trim() + "','" + txtPatentPhone.Text.Trim() + "','" + txtPtntAltPhne.Text.Trim() + "','" + dob + "','" + txtSSN.Text.Trim() + "','" + txtMedicareNo.Text.Trim() + "','" + txtMedicalId.Text.Trim() + "','" + txtInsurance.Text.Trim() + "','" + selectedTherapist + "','" + selectedPhysician + "','" + selectedHealthAgency + "','" + txtMedicalNecessity.Text.Trim() + "'," + Session["userId"].ToString() + ",'" + today + "',null,'')";
//            @Name ,@PatPhno,@Pataltphno ,
//@patDob,@ssn ,@Patmadicarno,@patmadicalid ,
//@patInsurenceno ,@selctheriplist ,@selectphysian ,
//@selecthealthagency ,@medicalnesacity,@curentdate
            //String query = "INSERT INTO PATENT VALUES('tam negun','23147890','','11/04/2014','7893458945','testme','789009','bharati',1,null,null,'comments',3,'11/04/2014',null,'')";
            SqlCommand cmd= new SqlCommand("Usp_patent",connection);
            connection.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name",txtPatentName.Text);
                 
             cmd.Parameters.AddWithValue("@PatPhno",txtPatentPhone.Text);
             cmd.Parameters.AddWithValue("@Pataltphno",txtPtntAltPhne.Text);
             cmd.Parameters.AddWithValue("@patDob",calDOB.SelectedDate.ToShortDateString());
             cmd.Parameters.AddWithValue("@ssn",txtSSN.Text);
             cmd.Parameters.AddWithValue("@Patmadicarno",txtMedicareNo.Text);
             cmd.Parameters.AddWithValue("@patmadicalid",txtMedicalId.Text);
             cmd.Parameters.AddWithValue("@patInsurenceno",txtInsurance.Text);
             cmd.Parameters.AddWithValue("@medicalnesacity",txtMedicalNecessity.Text);
             cmd.Parameters.AddWithValue("@curentdate",DateTime.Now);
            cmd.ExecuteNonQuery();

            


        }

       

        private void FillDropDownList()
        {
            //Session["groupid"]
            //Session["userId"]

            //String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            String query = "SELECT T.ID,T.FIRST_NAME+' '+T.LAST_NAME AS NAME,T.PHONE_NUMBER AS PHONE FROM THEREAPIST T WHERE T.AGENCY_ID=" + Session["groupid"];
            connection.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, connection);
            DataSet therapistDatSet = new DataSet();
            //DataSet ds = new DataSet();
            da.Fill(therapistDatSet);

            drpdwnTherapist.DataTextField = therapistDatSet.Tables[0].Columns["NAME"].ToString();
            drpdwnTherapist.DataValueField = therapistDatSet.Tables[0].Columns["id"].ToString();

            drpdwnTherapist.DataSource = therapistDatSet.Tables[0];
            drpdwnTherapist.DataBind();
            ListItem item = new ListItem("---Select---", "0", true);
            drpdwnTherapist.Items.Insert(0,item);
        }
        private void bindPhysician()
        {
            //String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
            SqlConnection connection = new SqlConnection(connectionString);
            String query = "SELECT T.ID,T.FIRST_NAME+' '+T.LAST_NAME AS NAME,T.PHONE_NUMBER AS PHONE FROM THEREAPIST T WHERE T.AGENCY_ID=" + Session["groupid"];
            connection.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, connection);
            DataSet physicianDatSet = new DataSet();
            //DataSet ds = new DataSet();
            da.Fill(physicianDatSet);

            drpdwnPhysican.DataTextField = physicianDatSet.Tables[0].Columns["NAME"].ToString();
            drpdwnPhysican.DataValueField = physicianDatSet.Tables[0].Columns["id"].ToString();

            drpdwnPhysican.DataSource = physicianDatSet.Tables[0];
            drpdwnPhysican.DataBind();
            ListItem item = new ListItem("---Select---", "0", true);
            drpdwnPhysican.Items.Insert(0, item);
        }
        public void getSelectedTherapist(object sender, EventArgs e)
        {
            /*int selectedIndex = drpdwnTherapist.SelectedIndex;
            String phone = therapistDatSet.Tables[0].Rows[selectedIndex][2].ToString();
            lblTherapistPhone.Text = phone;*/
        }
    }
}