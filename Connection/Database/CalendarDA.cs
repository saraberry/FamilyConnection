using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Connection.Classes;
using System.Data.SqlClient;

namespace Connection.Database
{
    public class CalendarDA
    {
        public static void addActivity(Activity a)
        {
            SqlConnection connection = FamilyDB.getConnection();

            String query = "Insert into Activity (familyID, activityName, startDate, endDate, time) values (@familyID, @activityName, @startDate, @endDate, @time)";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@familyID", a.FamilyID);
            cmd.Parameters.AddWithValue("@activityName", a.ActivityName);
            cmd.Parameters.AddWithValue("@startDate", a.StartDate);
            cmd.Parameters.AddWithValue("@endDate", a.EndDate);
            cmd.Parameters.AddWithValue("@time", a.Time);

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
        public static void DeleteActivity(int familyID, string activityName, DateTime startDate)
        {
            SqlConnection connection = FamilyDB.getConnection();
            String query = "Delete from Activity where familyID = @familyID and activityName = @activityName and startDate = @startDate";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@familyID", familyID);
            cmd.Parameters.AddWithValue("@activityName", activityName);
            cmd.Parameters.AddWithValue("@startDate", startDate);

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
        public static List<Activity> getActivityByDate(int famID, DateTime startDate)
        {
            if (famID == 0 || startDate == null) { return null; }

            List<Activity> allActivities = new List<Activity>();


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
                    Activity a = new Activity();
                    a.ActivityID = (int)read["activityID"];
                    a.FamilyID = (int)read["familyID"];
                    a.ActivityName = (string)read["activityName"];
                    a.StartDate = (DateTime)read["startDate"];
                    a.EndDate = (DateTime)read["endDate"];
                    a.Time = (DateTime)read["time"];

                    allActivities.Add(a);
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
            return allActivities ;
        }
    }
}