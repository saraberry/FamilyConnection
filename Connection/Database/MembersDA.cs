using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Connection.Classes;
using System.Data.SqlClient;

namespace Connection.Database
{
    public class MembersDA
    {
        public static void addMember(Members m)
        {
            SqlConnection connection = FamilyDB.getConnection();

            String query = "Insert into FamilyMembers(familyID, memberFirst, memberLast, memberRole, memberBirthdate) values (@familyID, @memberFirst, @memberLast, @memberRole, @memberBirthdate)";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@familyID", m.FamilyID);
            cmd.Parameters.AddWithValue("@memberFirst", m.MemberFirst);
            cmd.Parameters.AddWithValue("@memberLast", m.MemberLast);
            cmd.Parameters.AddWithValue("@memberRole", m.MemberRole);
            cmd.Parameters.AddWithValue("@memberBirthdate", m.MemberBirthdate);

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
        public static void DeleteMember(int familyID, string fname, DateTime bday)
        {
            SqlConnection connection = FamilyDB.getConnection();

            String query = "Delete from FamilyMembers where familyID = @familyID and memberFirst = @memberFirst and memberBirthdate = @memberBirthdate";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@familyID", familyID);
            cmd.Parameters.AddWithValue("@memberFirst", fname);
            cmd.Parameters.AddWithValue("@memberBirthdate", bday);

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
        public static List<Members> getMembersFamilyID(int famID)
        {
            if (famID == null) { return null; }

            List<Members> allMembers = new List<Members>();
            

            SqlConnection connection = FamilyDB.getConnection();
            if (connection != null)
            {
                connection.Open();
            }

            String query = "SELECT * FROM FamilyMembers WHERE familyID = @famID";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@famID", famID);


            try
            {
                SqlDataReader read = cmd.ExecuteReader();

                while (read.Read())
                {
                    Members m = new Members();
                    m.MemberID = (int)read["memberID"];
                    m.FamilyID = (int)read["familyID"];
                    m.MemberFirst = (string)read["memberFirst"];
                    m.MemberLast = (string)read["memberLast"];
                    m.MemberRole = (string)read["memberRole"];
                    m.MemberBirthdate = (DateTime)read["memberBirthdate"];

                    allMembers.Add(m);
                }

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
            return allMembers;
        }
        public static bool memberExists (Members m)
        {
            if (m == null) { return false; }

            SqlConnection connection = FamilyDB.getConnection();
            if (connection != null)
            {
                connection.Open();
            }

            String query = "SELECT * FROM FamilyMembers WHERE familyID = @famID and memberFirst = @memberFirst and memberBirthdate = @memberBirthdate";
            SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@famID", m.FamilyID);
                cmd.Parameters.AddWithValue("@memberFirst", m.MemberFirst);
                cmd.Parameters.AddWithValue("@memberBirthdate", m.MemberBirthdate);


                try
            {
                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {
                    m.MemberID = (int)read["memberID"];
                    m.FamilyID = (int)read["familyID"];
                    m.MemberFirst = (string)read["memberFirst"];
                    m.MemberLast = (string)read["memberLast"];
                    m.MemberRole = (string)read["memberRole"];
                    m.MemberBirthdate = (DateTime)read["memberBirthdate"];
                    return true;
                }
                else return false;

            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex);
                return false;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return false;
                }
            finally
            {
                connection.Close();
            }
        }
    }
}