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
    public partial class OrderForm : System.Web.UI.Page
    {
        String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                drpmedipsn.Items.Insert(0, new ListItem("---Select---"));
                drpPatname.Items.Insert(0, new ListItem("---Select---"));
                calDate.Visible = false;
                SqlConnection connection = new SqlConnection(connectionString);
                String query = "select FULL_NAME from PHYSICIAN";
                String query1 = "select NAME from PATENT";
                string qury2 = "select USER_ID  from AGENCY";
                SqlDataAdapter da = new SqlDataAdapter(query, connection);
                SqlDataAdapter da1 = new SqlDataAdapter(query1, connection);
                SqlDataAdapter da2 = new SqlDataAdapter(qury2, connection);
                DataSet physicianDatSet = new DataSet();
                DataSet Patient = new DataSet();
                DataSet agency = new DataSet();
                da1.Fill(Patient);
                //DataSet ds = new DataSet();
                da.Fill(physicianDatSet);
                drpPatname.DataSource = Patient;
                drpPatname.DataTextField = "NAME";
                
                drpmedipsn.DataSource = physicianDatSet;
                drpmedipsn.DataTextField = "FULL_NAME";
                drpPatname.DataBind();

                da2.Fill(agency);
                drpRefagency.DataSource = agency;
                drpmedipsn.DataTextField = "USER_ID ";
                drpRefagency.DataBind();


                //drpmedipsn.DataBind();
                ////drpmedipsn.DataTextField = physicianDatSet.Tables[0].Columns["FULL_NAME"].ToString();
            
            }
        }

        protected void btnsbmt_Click(object sender, EventArgs e)
        {
         
           
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Usp_ordrList", con);
            cmd.CommandType = CommandType.StoredProcedure;
            if(cbxPhytrpy.Checked)
            {
            cmd.Parameters.AddWithValue("@TherpyType",cbxPhytrpy.Text);
            }
            else if(cbxOcutrpy.Checked)
            {
            cmd.Parameters.AddWithValue("@TherpyType",cbxOcutrpy.Text);
            }
            else
            {
             cmd.Parameters.AddWithValue("@TherpyType",cbxSpeshtherpy.Text);
            }
           
            cmd.Parameters.AddWithValue("@Date",txtDate.Text);
            if(cbxMtS.Checked)
            {
            cmd.Parameters.AddWithValue("@medicareweek",cbxMtS.Text);
            }
            else if(cbxstf.Checked)
            {
             cmd.Parameters.AddWithValue("@medicareweek",cbxstf.Text);
            }
            else
            {
             cmd.Parameters.AddWithValue("@medicareweek",cbxsts.Text);
            }

            cmd.Parameters.AddWithValue("@Referingagency", drpRefagency.SelectedValue);
              cmd.Parameters.AddWithValue("@Contctperson",txtconctprsn.Text);
              cmd.Parameters.AddWithValue("@Nursename",txtNursename.Text);
              cmd.Parameters.AddWithValue("@phone",txtpne.Text);
              cmd.Parameters.AddWithValue("@Patrntname", drpPatname.SelectedValue);





              cmd.Parameters.AddWithValue("@Diagnosis", txxDiagnsis.Text);
              cmd.Parameters.AddWithValue("@Physisian", drpmedipsn.SelectedValue);
            //cmd.Parameters.AddWithValue("@Physician",txtmedipsn.Text);


              cmd.Parameters.AddWithValue("@paysnPhone", txtMedipne.Text);
           
              cmd.Parameters.AddWithValue("@AgDatevltncompltedby",txtdateevln.Text);
             cmd.Parameters.AddWithValue("@dfvisitcomby",txtDtfvstcmpby.Text);
             cmd.Parameters.AddWithValue("@noofvisits",txtMaxmnofsts.Text);
             cmd.Parameters.AddWithValue("@splOrders", txtsplorders.Text);
             cmd.Parameters.AddWithValue("@callagncynewordr",rbncalagncynwodr.SelectedValue);
       
            cmd.ExecuteNonQuery();
        




        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (calDate.Visible == false)
            {
                calDate.Visible = true;
            }
            else
                calDate.Visible = false;
        }

        protected void calDate_PreRender(object sender, EventArgs e)
        {

        }

        protected void calDate_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = calDate.SelectedDate.ToShortDateString();
            calDate.Visible = false;
        }
    }
}