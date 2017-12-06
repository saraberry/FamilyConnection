using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace Connection.Classes
{
    public class Users
    {
        int userID, familyID;
        string userFirst, userLast, userLogin, userPassword, userEmail, permissions;

        public Users() { }
        public Users(int userID, int familyID, string userFirst, string userLast, string userLogin, string userPassword, string userEmail, string permissions)
        {
            this.UserID = userID;
            this.FamilyID = familyID;
            this.UserFirst = userFirst;
            this.UserLast = userLast;
            this.UserLogin = userLogin;
            this.UserPassword = userPassword;
            this.UserEmail = userEmail;
            this.Permissions = permissions;

        }
        public int UserID { get; set; }
        public int FamilyID { get; set; }
        public string UserFirst { get; set; }
        public string UserLast { get; set; }
        public string UserLogin { get; set; }
        public string UserPassword { get; set; }
        public string UserEmail { get; set; }
        public string Permissions { get; set; }
    }

}