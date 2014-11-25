using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;
namespace LunchBoxDataStorageSystem
{
    public partial class PatientList : System.Web.UI.Page
    {
        String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                String connectionString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                string sqry1 = "Select * from  PATENT";
                SqlCommand cmd1 = new SqlCommand(sqry1, con);
                SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                sda1.Fill(ds1);

                grdPatnlist.DataSource = ds1;
                grdPatnlist.DataBind();
            }

        }

        //    protected void loadStores()
        //    {
        //        SqlConnection con = new SqlConnection(connectionString);
        //        SqlCommand cmd = new SqlCommand("Select * from ordersForm", con);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        DataSet ds = new DataSet();
        //        da.Fill(ds);
        //        int count = ds.Tables[0].Rows.Count;
        //        con.Close();
        //        if (ds.Tables[0].Rows.Count > 0)
        //        {
        //            grdOrder.DataSource = ds;
        //            grdOrder.DataBind();
        //        }
        //        else
        //        {
        //            ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
        //            grdOrder.DataSource = ds;
        //            grdOrder.DataBind();
        //            int columncount = grdOrder.Rows[0].Cells.Count;
        //            lblMsg.Text = " No data found !!!";
        //        }
        //    }

        //    protected void grdOrder_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //    {
        //        string stor_id = grdOrder.DataKeys[e.RowIndex].Values["stor_id"].ToString();
        //        TextBox stor_name = (TextBox)grdOrder.Rows[e.RowIndex].FindControl("txtname");
        //        TextBox stor_address = (TextBox)grdOrder.Rows[e.RowIndex].FindControl("txtaddress");
        //        TextBox city = (TextBox)grdOrder.Rows[e.RowIndex].FindControl("txtcity");
        //        TextBox state = (TextBox)grdOrder.Rows[e.RowIndex].FindControl("txtstate");
        //        TextBox zip = (TextBox)grdOrder.Rows[e.RowIndex].FindControl("txtzip");
        //        SqlConnection con = new SqlConnection(connectionString);
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("update stores set stor_name='" + stor_name.Text + "', stor_address='" + stor_address.Text + "', city='" + city.Text + "', state='" + state.Text + "', zip='" + zip.Text + "' where stor_id=" + stor_id, con);
        //        cmd.ExecuteNonQuery();
        //        con.Close();
        //        lblMsg.BackColor = Color.Blue;
        //        lblMsg.ForeColor = Color.White;
        //        lblMsg.Text = stor_id + "        Updated successfully........    ";
        //        grdOrder.EditIndex = -1;
        //        loadStores();
        //    }


        //    protected void grdOrder_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //    {
        //        string stor_id = grdOrder.DataKeys[e.RowIndex].Values["stor_id"].ToString();
        //        SqlConnection con = new SqlConnection(connectionString);
        //        con.Open();
        //        SqlCommand cmd = new SqlCommand("delete from stores where stor_id=" + stor_id, con);
        //        int result = cmd.ExecuteNonQuery();
        //        con.Close();
        //        if (result == 1)
        //        {
        //            loadStores();
        //            lblMsg.BackColor = Color.Red;
        //            lblMsg.ForeColor = Color.White;
        //            lblMsg.Text = stor_id + "      Deleted successfully.......    ";
        //        }
        //    }

        //    protected void grdOrder_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        //    {
        //        grdOrder.EditIndex = -1;
        //        loadStores();
        //    }

        //    protected void grdOrder_RowDataBound(object sender, GridViewRowEventArgs e)
        //    {
        //        if (e.Row.RowType == DataControlRowType.DataRow)
        //        {
        //            string stor_id = Convert.ToString(DataBinder.Eval(e.Row.DataItem, "stor_id"));
        //            Button lnkbtnresult = (Button)e.Row.FindControl("ButtonDelete");
        //            if (lnkbtnresult != null)
        //            {
        //                lnkbtnresult.Attributes.Add("onclick", "javascript:return deleteConfirm('" + stor_id + "')");
        //            }
        //        }
        //    }





        //}
    }





}
