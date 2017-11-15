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

    }
}