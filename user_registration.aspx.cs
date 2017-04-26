using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;
using BussinessObject;
using Bussinesslogic;
using System.Data;

namespace AIP
{
    public partial class User_registration : System.Web.UI.Page
    {

        UserRegistrationBO userBO = new UserRegistrationBO();
        UserRegistrationBL userBl = new UserRegistrationBL();
        string gender;
        SqlConnection con;

        public void Bind_ddlCountry()
        {
            string constr = ConfigurationManager.ConnectionStrings["AIP"].ConnectionString;
            con = new SqlConnection(constr);

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select County,CountryId from Country", con);
                SqlDataReader dr = cmd.ExecuteReader();
                ddUserCountry.DataSource = dr;
                ddUserCountry.Items.Clear();
                ddUserCountry.Items.Add("--Please Select country--");
                ddUserCountry.DataTextField = "County";
                ddUserCountry.DataValueField = "CountryId";
                ddUserCountry.DataBind();
                //SqlCommand com = new SqlCommand("Select st_id,st_name from Aip_state1", con);
                //SqlDataReader dr = com.ExecuteReader();
                //ddUserState.DataSource = dr;
                //ddUserState.Items.Clear();
                //ddUserState.Items.Add("Please select item");
                //ddUserState.DataTextField = "st_name";
                //ddUserState.DataValueField = "st_id";
                //ddUserState.DataBind();
              
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

        public void Bind_ddlState()
        {
            string constr = ConfigurationManager.ConnectionStrings["AIP"].ConnectionString;
            con = new SqlConnection(constr);
            try
            {
                con.Open();
                //SqlCommand com = new SqlCommand("Select ct_id,ct_name from aip_city1 where st_id='" + ddUserState.SelectedValue + "'", con);
                //SqlDataReader dr = com.ExecuteReader();
                //ddUserCity.DataSource = dr;
                //ddUserCity.Items.Clear();
                //ddUserCity.Items.Add("Please select item");
                //ddUserCity.DataTextField = "ct_name";
                //ddUserCity.DataValueField = "ct_id";
                //ddUserCity.DataBind();
                SqlCommand cmd = new SqlCommand("select State,StateID from countryState where CountryId='" + ddUserCountry.SelectedValue + "'", con);
 
                SqlDataReader dr = cmd.ExecuteReader();
                ddUserState.DataSource = dr;
                ddUserState.Items.Clear();
                ddUserState.Items.Add("--Please Select state--");
                ddUserState.DataTextField = "State";
                ddUserState.DataValueField = "StateID";
                ddUserState.DataBind();
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
        //public void Bind_ddlZip()
        //{
        //    string constr = ConfigurationManager.ConnectionStrings["AIP_DataBase"].ConnectionString;
        //    con = new SqlConnection(constr);
        //    try
        //    {
        //        con.Open();
        //        SqlCommand com = new SqlCommand("Select zip_code from aip_zip1 where ct_id='" + ddUserCity.SelectedValue + "'", con);
        //        SqlDataReader dr = com.ExecuteReader();
        //        while(dr.Read())
        //        {
        //        //ddUserCity.DataSource = dr;
        //       // ddUserCity.Items.Clear();
        //       // ddUserCity.Items.Add("Please select item");
        //       //ddUserCity.DataTextField = "zip_code";
        //       //ddUserCity.DataValueField = "zip_id";
        //       // ddUserCity.DataBind();
                   
        //      txt_zip.Text= dr[0].ToString();
        //        }
        //        dr.Close();
            

        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //    }
        //    finally
        //    {
        //        con.Close();
        //    }

        //}
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;


            if (!IsPostBack)
            {
                Bind_ddlState();
            }

             gender = "";
            if (Rbluser.SelectedIndex == 0)
            {
                gender = " Male";
            }
            else
            {
                gender = "Female";
            }
        }

        

        protected void txtUserFname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ibUserReset_Click(object sender, ImageClickEventArgs e)
        {
          


        }

        protected void ibUserRegister_Click(object sender, ImageClickEventArgs e)
        {
           
            userBO.UFname = txtUserFname.Text;
            userBO.ULname = txtUserLname.Text;
            userBO.Uemail = txtUserEmail.Text;
            userBO.Uaddress = txtUserAdd.Text;
            userBO.Ugender = gender;
            userBO.Ustate = ddUserState.Text;
            userBO.Ucountry = ddUserCountry.Text;
            userBO.UAge = Convert.ToInt32(txtUserAge.Text);
            userBO.Ucontact = txtUserCon.Text;
            userBO.UPassword = txtUserPass.Text;
            //userBO.Uzip = Convert.ToInt32(txt_zip.Text);

            int status = userBl.SaveUserRegistrationBL(userBO);
            if (status > 0)
            {
                Response.Redirect("~/AIP_Home.aspx");
            }
            else
            {
                MessageBox.Show("Not Registered Please try again");
            }

        }

        protected void ddUserCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
                    Bind_ddlState();
        }  

        //protected void ddUserCity_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    Bind_ddlZip();
        //}
        protected void ddUserState_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }  
    }
}
