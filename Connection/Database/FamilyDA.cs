using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Connection.Classes;
using System.Data.SqlClient;

namespace Connection.Database
{
    public class FamilyDA
    {
        public static int getFamilyIDbyHOH(string HFirst, string HLast)
        {

            if (HFirst == null || HLast == null) return 0;
            Family f = new Family();

            SqlConnection connection = FamilyDB.getConnection();
            if (connection != null)
            {
                connection.Open();
            }

            String query = "SELECT * FROM Family WHERE HOHFirst = @HOHFirst and HOHLast = @HOHLast";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@HOHFirst", HFirst);
            cmd.Parameters.AddWithValue("@HOHLast", HLast);

            try
            {
                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {
                    f.FamilyID = (int)read["familyID"];
                    f.SubscriptionStart = (DateTime)read["subscriptionStart"];
                    f.SubscriptionEnd = (DateTime)read["subscriptionEnd"];
                    f.HOHFirst = (string)read["HOHFirst"];
                    f.HOHLast = (string)read["HOHLast"];

                }
                else return 0;

            }
            catch (SqlException ex)
            {
                return 0;
                Console.WriteLine(ex);
            }
            catch (Exception ex)
            {
                return 0;
                Console.WriteLine(ex);
            }
            finally
            {
                connection.Close();
            }
            return f.FamilyID;
        }

        public static Family getFamilyByID(int familyID)
        {

            if (familyID == null) return null;
            Family f = new Family();

            SqlConnection connection = FamilyDB.getConnection();
            if (connection != null)
            {
                connection.Open();
            }

            String query = "SELECT * FROM Family WHERE familyID = @familyID";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@familyID", familyID);

            try
            {
                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {
                    f.FamilyID = (int)read["familyID"];
                    f.SubscriptionStart = (DateTime)read["subscriptionStart"];
                    f.SubscriptionEnd = (DateTime)read["subscriptionEnd"];
                    f.HOHFirst = (string)read["HOHFirst"];
                    f.HOHLast = (string)read["HOHLast"];

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
            return f;
        }

        public static void addFamily(Family f)
        {
            SqlConnection connection = FamilyDB.getConnection();
            

            String query = "Insert into Family(HOHFirst, HOHLast, subscriptionStart, subscriptionEnd) values (@HOHFirst, @HOHLast, @subscriptionStart, @subscriptionEnd)";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@HOHFirst", f.HOHFirst);
            cmd.Parameters.AddWithValue("@HOHLast", f.HOHLast);
            cmd.Parameters.AddWithValue("@subscriptionStart", f.SubscriptionStart);
            cmd.Parameters.AddWithValue("@subscriptionEnd", f.SubscriptionEnd);

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