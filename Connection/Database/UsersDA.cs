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
            if (connection != null)
            {
                connection.Open();
            }

            String query = "SELECT * FROM Users WHERE userLogin = @login and userPasswrod = @password";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@login", login);
            cmd.Parameters.AddWithValue("@password", password);


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
                else return false;

            }
            catch (SqlException ex)
            {
                return false;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                connection.Close();
            }
            if(u.UserLogin == login && u.UserPassword == password)
            {
                validate = true; 
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
        public static Users getUserByLogin(string login, string password)
        {
            if (login == null || password == null) { return null; }

            Users u = new Users();

            SqlConnection connection = FamilyDB.getConnection();
            if (connection != null)
            {
                connection.Open();
            }

            String query = "SELECT * FROM Users WHERE userLogin = @login and userPasswrod = @password";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@login", login);
            cmd.Parameters.AddWithValue("@password", password);


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
    }
}