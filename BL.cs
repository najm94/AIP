using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;
using BussinessObject;
using DataAccess; // for acessing DataAccess class
using BussinessObject; // for acessing bussiness object class
 

namespace Bussinesslogic
{
    public class UsingBL
    {
        // user registration
        public int SaveUserRegistrationBL(UserRegistrationBO objUserReg)
        {
            try
            {
                UsingDA objDA = new UsingDA(); // Creating object of Dataccess
                return objDA.UserRegistration(objUserReg);
            }
            catch
            {
                return 0;
            }
        }
        //admin registration

        public int SaveAdminRegistrationBL(AdminRegistrationBO objAdminReg)
        {
            try
            {
                UsingDA objDA = new UsingDA(); // Creating object of Dataccess
                return objDA.AdminRegistration(objAdminReg);
            }
            catch
            {
                return 0;
            }
        }
        //user login
        public int UserLoginBL(userLoginBO objULog)
        {
            try
            {
                UsingDA objDA = new UsingDA(); // Creating object of Dataccess
                return objDA.UserLogin(objULog);

            }
            catch
            {
                return 0;
            }
        }
        //admin login
        public int AdminLoginBL(adminLoginBO objALog)
        {
            try
            {
                UsingDA objDA = new UsingDA(); // Creating object of Dataccess
                return objDA.AdminLogin(objALog);

            }
            catch
            {
                return 0;
            }

        }


    }
}


           

 
          
 
         
