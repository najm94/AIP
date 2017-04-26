using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace AIP
{
    public partial class AutoDefaultsPage : System.Web.UI.Page
    {
        SqlConnection con;
        string status = "Auto_Default";
        public void Bind_loginid()
        {
          
            try
            {
                con.Open();
                SqlCommand com = new SqlCommand("SELECT * FROM Borrowerdetails WHERE Default_Status = '" + status + "'", con);
                SqlDataReader dr = com.ExecuteReader();
                ddcustid.DataSource = dr;
                ddcustid.Items.Clear();
                ddcustid.Items.Add("Please select item");
                //ddcustid.DataTextField = "country_name";
                ddcustid.DataValueField = "Login_Id";
                ddcustid.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                con.Close();
            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {

            string constr = ConfigurationManager.ConnectionStrings["AIP_DataBase"].ConnectionString;
            con = new SqlConnection(constr);
            BindData();
            Bind_loginid();
        }

        protected void BindData()
        {
           // string login_id = Session["User_Id"].ToString();
           
            DataSet ds = new DataSet();
            DataTable FromTable = new DataTable();
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("SELECT * FROM Borrowerdetails WHERE Default_Status = '" + status + "'", con);
            adp.Fill(ds);
            FromTable = ds.Tables[0];
            if (FromTable.Rows.Count > 0)
            {
                Auto_GridView.DataSource = FromTable;
                Auto_GridView.DataBind();
            }
            else
            {
                FromTable.Rows.Add(FromTable.NewRow());
                Auto_GridView.DataSource = FromTable;
                Auto_GridView.DataBind();
                int TotalColumns = Auto_GridView.Rows[0].Cells.Count;
                Auto_GridView.Rows[0].Cells.Clear();
                Auto_GridView.Rows[0].Cells.Add(new TableCell());
                Auto_GridView.Rows[0].Cells[0].ColumnSpan = TotalColumns;
                Auto_GridView.Rows[0].Cells[0].Text = "No records Found";
            } 
            ds.Dispose();
            con.Close();
        }

        protected void bindstatus()
        {

        }

      

       
        }

       

        

      

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}
    }
