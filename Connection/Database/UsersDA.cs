using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Connection.Classes;
using System.Data.SqlClient;

namespace Connection.Database
{
    public class UsersDA
    {
        public static bool validateLogin(string login, string password)
        {
            Users u = new Users();
            bool validate = false;
            if(login == null || password == null) { validate = false; }

            SqlConnection connection = FamilyDB.getConnection();
            try
            {
                    connection.Open();
                
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
            }
            
            

            String query = "SELECT * FROM Users WHERE userLogin = @login";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@login", login);

            try
            {
                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {

                    string pass = (string)read["userPassword"];
                    if (BCrypt.Net.BCrypt.Verify(password, pass)) { validate = true; }
                    else { validate = false; }

                }
                else validate = false;

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                connection.Close();
            }
            return validate;

        }
        public static Users getUserFamilyID(int famID)
        {
            if (famID == null) { return null; }

            Users u = new Users();

            SqlConnection connection = FamilyDB.getConnection();
            if (connection != null)
            {
                connection.Open();
            }

            String query = "SELECT * FROM Users WHERE familyID = @famID";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@famID", famID);


            try
            {
                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {
                    u.UserID = (int)read["userID"];
                    u.FamilyID = (int)read["familyID"];
                    u.UserFirst = (string)read["userFirst"];
                    u.UserLast = (string)read["userLast"];
                    u.UserLogin = (string)read["userLogin"];
                    u.UserPassword = (string)read["userPassword"];
                    u.UserEmail = (string)read["userEmail"];
                    u.Permissions = (string)read["permissions"];

                }
                else return null;

            }
            catch (SqlException ex)
            {
                return null;
            }
            catch (Exception ex)
            {
                return null;
            }
            finally
            {
                connection.Close();
            }
            return u;
        }
        public static void addUser(Users u)
        {
            


            SqlConnection connection = FamilyDB.getConnection();

            String query = "Insert into Users(familyID, userFirst, userLast, userLogin, userPassword, userEmail, permissions) values (@familyID, @userFirst, @userLast, @userLogin, @userPassword, @userEmail, @permissions)";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@familyID", u.FamilyID);
            cmd.Parameters.AddWithValue("@userFirst", u.UserFirst);
            cmd.Parameters.AddWithValue("@userLast", u.UserLast);
            cmd.Parameters.AddWithValue("@userLogin", u.UserLogin);
            cmd.Parameters.AddWithValue("@userPassword", u.UserPassword);
            cmd.Parameters.AddWithValue("@userEmail", u.UserEmail);
            cmd.Parameters.AddWithValue("@permissions", u.Permissions);



            try
            {
                if (connection != null)
                {
                    connection.Open();
                }
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                connection.Close();
            }
        }
        public static Users getUserByLogin(string login)
        {
            if (login == null) { return null; }

            Users u = new Users();

            SqlConnection connection = FamilyDB.getConnection();
            if (connection != null)
            {
                connection.Open();
            }

            String query = "SELECT * FROM Users WHERE userLogin = @login";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@login", login);


            try
            {
                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {
                    u.UserID = (int)read["userID"];
                    u.FamilyID = (int)read["familyID"];
                    u.UserFirst = (string)read["userFirst"];
                    u.UserLast = (string)read["userLast"];
                    u.UserLogin = (string)read["userLogin"];
                    u.UserPassword = (string)read["userPassword"];
                    u.UserEmail = (string)read["userEmail"];
                    u.Permissions = (string)read["permissions"];

                }
                else return null;

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                connection.Close();
            }
            return u;
        }
        public static bool userExists(string login)
        {
            Users u = new Users();
            bool validate = false;
            if ( login == null) { validate = false; }

            SqlConnection connection = FamilyDB.getConnection();
            try
            {
                connection.Open();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }

            
            String query = "SELECT * FROM Users WHERE userLogin = @login";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@login", login);

            try
            {
                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {

                    string userLogin = (string)read["userLogin"];
                    if (login == userLogin) { validate = true; }
                    else { validate = false; }

                }
                else validate = false;

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                connection.Close();
            }
            return validate;

        }
    }
}