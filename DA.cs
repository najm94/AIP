using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data; // Required for using Dataset , Datatable and Sql
using System.Data.SqlClient; // Required for Using Sql
using System.Configuration; // for Using Connection From Web.config 
using BussinessObject;
using System.Windows.Forms;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace DataAccess
{
    public class UsingDA
    {
        SqlConnection con;
        SqlCommand com;
        SqlDataAdapter da;

        DataSet ds;


        // function that returns Connection String


        public string GetConnection()
        {
            return ConfigurationManager.ConnectionStrings["AIP_DataBase"].ConnectionString;
        }

        // User registration
        public int UserRegistration(UserRegistrationBO ObjUregBO)
        {
            try
            {

                string log = null;
                Random r = new Random();
                log = ObjUregBO.UFname + (Convert.ToString(r.Next(1, 2000)));

                con = new SqlConnection(GetConnection());
                con.Open();

                com = new SqlCommand("sp_User_AIPRegistration", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@login", log);
                com.Parameters.AddWithValue("@fname", ObjUregBO.UFname);
                com.Parameters.AddWithValue("@lname", ObjUregBO.ULname);
                com.Parameters.AddWithValue("@password", ObjUregBO.UPassword);
                com.Parameters.AddWithValue("@age", ObjUregBO.UAge);
                com.Parameters.AddWithValue("@gender", ObjUregBO.Ugender);
                com.Parameters.AddWithValue("@contact_no", ObjUregBO.Ucontact);
                com.Parameters.AddWithValue("@e_mail", ObjUregBO.Uemail);
                com.Parameters.AddWithValue("@_address", ObjUregBO.Uaddress);
                com.Parameters.AddWithValue("@_state ", ObjUregBO.Ustate);
                com.Parameters.AddWithValue("@city", ObjUregBO.Ucity);
                com.Parameters.AddWithValue("@zip", ObjUregBO.Uzip);
                com.ExecuteNonQuery();
                MessageBox.Show("Your Login ID is:" + log);
                con.Close();
                return 1;

            }
            catch
            {
                return -1;
            }

        }
        //admin registration
        public int AdminRegistration(AdminRegistrationBO ObjAregBO)
        {
            try
            {

                string log = null;
                Random r = new Random();
                log = ObjAregBO.AFname + (Convert.ToString(r.Next(1, 2000)));

                con = new SqlConnection(GetConnection());
                con.Open();

                com = new SqlCommand("sp_Admin_AIPRegistration", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@login", log);
                com.Parameters.AddWithValue("@fname", ObjAregBO.AFname);
                com.Parameters.AddWithValue("@lname", ObjAregBO.ALname);
                com.Parameters.AddWithValue("@password", ObjAregBO.APassword);
                com.Parameters.AddWithValue("@age", ObjAregBO.AAge);
                com.Parameters.AddWithValue("@gender", ObjAregBO.Agender);
                com.Parameters.AddWithValue("@contact_no", ObjAregBO.Acontact);
                com.Parameters.AddWithValue("@e_mail", ObjAregBO.Aemail);
                com.Parameters.AddWithValue("@_address", ObjAregBO.Aaddress);
                com.Parameters.AddWithValue("@_state ", ObjAregBO.Astate);
                com.Parameters.AddWithValue("@city", ObjAregBO.Acity);
                com.Parameters.AddWithValue("@zip", ObjAregBO.Azip);
                com.ExecuteNonQuery();
                MessageBox.Show("Your Login ID is:" + log);
                con.Close();
                return 1;

            }
            catch
            {
                return -1;
            }
        }

        // User login
        public int UserLogin(userLoginBO objULog)
        {
            con = new SqlConnection(GetConnection());
            try
            {
                con.Open();
                //Session["User_Id"] = objULog.UName;

                com = new SqlCommand("sp_login", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@uname", objULog.UName);
                com.Parameters.AddWithValue("@pass", objULog.UlogPass);
                com.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    //Session["MySession"] = txt_userlogin_id.Text;
                    return 1;
                }
                else
                {
                    return -1;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return -1;
            }
            finally
            {
                con.Close();
            }
        }

        //admin login

        public int AdminLogin(adminLoginBO objALog)
        {
            con = new SqlConnection(GetConnection());
            try
            {
                con.Open();
                //Session["User_Id"] = objULog.UName;

                com = new SqlCommand("sp_login_Admin", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@uname", objALog.AName);
                com.Parameters.AddWithValue("@pass", objALog.AlogPass);
                com.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    //Session["MySession"] = txt_userlogin_id.Text;
                    return 1;
                }
                else
                {
                    return -1;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return -1;
            }
            finally
            {
                con.Close();
            }
        }


    }
}
