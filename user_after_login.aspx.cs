using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AIP
{
    public partial class User_after_login : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand com,com1,com2;
     /*------User Home Page Load----*/
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            string constr = ConfigurationManager.ConnectionStrings["AIP_DataBase"].ConnectionString;
            conn = new SqlConnection(constr);
            lbllogin_id.Text = Session["User_Id"].ToString();
            BindData();

        }
        //  and Date_Of_Transaction >= GETDATE()`date` >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
        /*------User Home Session Method----*/
        protected void BindData()
        {
            string login_id = Session["User_Id"].ToString();
            DataSet ds = new DataSet();
            DataTable FromTable = new DataTable();
            conn.Open();
            com1 = new SqlCommand("select First_Name,Last_Name from User_Registration where Login_Id = '" + login_id + "'", conn);
            SqlDataReader sdr;
            sdr = com1.ExecuteReader();
            while (sdr.Read())
            {
                lbllogin_id.Text = sdr[0].ToString();
                lbllast_name.Text = sdr[1].ToString();
            }
            sdr.Close();

            com2 = new SqlCommand("select Default_Status from Borrowerdetails where Login_Id = '"+ login_id+"'",conn);
            SqlDataReader sdr1;
            sdr1 = com2.ExecuteReader();
            while (sdr1.Read())
            {
                lbl_status.Text = sdr1[0].ToString();
            }
            sdr1.Close();


            com = new SqlCommand("sp_User_Transaction", conn);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@loginid",login_id );
            com.ExecuteNonQuery();
            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = com;
            adp.Fill(ds);
            FromTable = ds.Tables[0];
            if (FromTable.Rows.Count > 0)
            {
                gvProject.DataSource = FromTable;
                gvProject.DataBind();
            }
            else
            {
                FromTable.Rows.Add(FromTable.NewRow());
                gvProject.DataSource = FromTable;
                gvProject.DataBind();
                int TotalColumns = gvProject.Rows[0].Cells.Count;
                gvProject.Rows[0].Cells.Clear();
                gvProject.Rows[0].Cells.Add(new TableCell());
                gvProject.Rows[0].Cells[0].ColumnSpan = TotalColumns;
                gvProject.Rows[0].Cells[0].Text = "No records Found";
            }
            ds.Dispose();
            conn.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/AIP_Home.aspx");
        }
        }

    }
