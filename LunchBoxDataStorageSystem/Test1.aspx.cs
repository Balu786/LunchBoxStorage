using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace LunchBoxDataStorageSystem
{
    public partial class Test1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                string sqry = "Select * from  ordersForm1";
                SqlCommand cmd = new SqlCommand(sqry, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                grdVw.DataSource = ds;
                grdVw.DataBind();

            }
        }

        //protected void grdVw_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    grdVw.EditIndex = e.NewEditIndex;
        //}

        //protected void grdVw_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    string phn = grdVw.DataKeys[e.RowIndex].Values["phone"].ToString();
        //    TextBox txtTherpyType1 = (TextBox)grdVw.Rows[e.RowIndex].FindControl("txtTherpyType1");
        //    TextBox txtDate1 = (TextBox)grdVw.Rows[e.RowIndex].FindControl("txtDate1");
        //    TextBox txtmedicareweek = (TextBox)grdVw.Rows[e.RowIndex].FindControl("txtmedicareweek");
        //    TextBox txtReferingagency1 = (TextBox)grdVw.Rows[e.RowIndex].FindControl("txtReferingagency1");
        //    TextBox txtContctperson1 = (TextBox)grdVw.Rows[e.RowIndex].FindControl("txtContctperson1");
        //    TextBox txtNursename1 = (TextBox)grdVw.Rows[e.RowIndex].FindControl("txtNursename1");
        //  //  TextBox txtphone1 = (TextBox)grdVw.Rows[e.RowIndex].FindControl("phone");
           
        //    String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connectionString);
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("update ordersForm1 set TherpyType='" + txtTherpyType1.Text + "', Date='" + txtDate1.Text + "', medicareweek='" + txtmedicareweek.Text + "', Referingagency='" + txtReferingagency1.Text + "', Contctperson='" + txtContctperson1.Text + "',Nursename='" + txtNursename1.Text + "' where phone=" + phn, con);

        //   // update ordersForm1 set TherpyType='b', Date='1/12/1234', medicareweek='c', Referingagency='x', Contctperson='y',Nursename='x' where phone='9989659111'

        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    //lblMsg.BackColor = Color.Blue;
        //    //lblmsg.ForeColor = Color.White;
        //    //lblmsg.Text = stor_id + "        Updated successfully........    ";
        //    grdVw.EditIndex = -1;
        //}

        //protected void grdVw_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    TextBox txtTherpyType2 = (TextBox)grdVw.FooterRow.FindControl("txtTherpyType2");
        //    TextBox txtDate2 = (TextBox)grdVw.FooterRow.FindControl("txtDate2");
        //    TextBox txtmedicareweek1 = (TextBox)grdVw.FooterRow.FindControl("txtmedicareweek1");
        //    TextBox txtReferingagency2 = (TextBox)grdVw.FooterRow.FindControl("txtReferingagency2");
        //    TextBox txtContctperson2 = (TextBox)grdVw.FooterRow.FindControl("txtContctperson2");
        //    TextBox txtNursename2 = (TextBox)grdVw.FooterRow.FindControl("txtNursename2");
        //    TextBox txtphone2 = (TextBox)grdVw.FooterRow.FindControl("txtphone2");
        //    //  TextBox txtphone1 = (TextBox)grdVw.Rows[e.RowIndex].FindControl("phone");

        //    String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        //    SqlConnection con = new SqlConnection(connectionString);
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("insert into ordersForm1(TherpyType,Date,medicareweek,Referingagency,Contctperson,Nursename,phone) values('" + txtTherpyType2.Text + "','" +
        //            txtDate2.Text + "','" + txtmedicareweek1.Text + "','" + txtReferingagency2.Text + "','" + txtContctperson2.Text + "','" + txtNursename2.Text + "','" + txtphone2.Text + "') ", con);
        //    // update ordersForm1 set TherpyType='b', Date='1/12/1234', medicareweek='c', Referingagency='x', Contctperson='y',Nursename='x' where phone='9989659111'

        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    //lblMsg.BackColor = Color.Blue;
        //    //lblmsg.ForeColor = Color.White;
        //    //lblmsg.Text = stor_id + "        Updated successfully........    ";
           
        //}

      
    }
}