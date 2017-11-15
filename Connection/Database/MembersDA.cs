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

            String query = "Insert into Members(familyID, memberFirst, memberLast, memberRole, memberBirthdate) values (@familyID, @memberFirst, @memberLast, @memberRole, @memberBirthdate)";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@familyID", m.FamilyID);
            cmd.Parameters.AddWithValue("@memberFirst", m.MemberFirst);
            cmd.Parameters.AddWithValue("@memberLast", m.MemberLast);
            cmd.Parameters.AddWithValue("@memberRole", m.MemberRole);
            cmd.Parameters.AddWithValue("@memberBirthdare", m.MemberBirthdate);

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
        public static Members getMemberFamilyID(int famID)
        {
            if (famID == null) { return null; }

            Members m = new Members();

            SqlConnection connection = FamilyDB.getConnection();
            if (connection != null)
            {
                connection.Open();
            }

            String query = "SELECT * FROM Members WHERE familyID = @famID";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@famID", famID);


            try
            {
                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {
                    m.MemberID = (int)read["mamberID"];
                    m.FamilyID = (int)read["familyID"];
                    m.MemberFirst = (string)read["memberFirst"];
                    m.MemberLast = (string)read["memberLast"];
                    m.MemberRole = (string)read["memberRole"];
                    m.MemberBirthdate = (DateTime)read["memberBirthdate"];
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
            return m;
        }
    }
}