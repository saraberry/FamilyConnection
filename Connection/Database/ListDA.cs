using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Connection.Classes;
using System.Data.SqlClient;


namespace Connection.Database
{
    public class ListDA
    {
        public static void addGroceryItem(Grocery g)
        {
            SqlConnection connection = FamilyDB.getConnection();

            String query = "Insert into ListItems (familyID, listItem, listType, storeName, salePrice, isComplete) values (@familyID, @listItem, @listType, @storeName, @salePrice, @isComplete)";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@familyID", g.FamilyID);
            cmd.Parameters.AddWithValue("@listItem", g.ListItem);
            cmd.Parameters.AddWithValue("@listType", g.ListType);
            cmd.Parameters.AddWithValue("@storeName", g.StoreName);
            cmd.Parameters.AddWithValue("@salePrice", g.StorePrice);
            cmd.Parameters.AddWithValue("@isComplete", g.IsComplete);

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
        public static void DeleteList(int familyID, int listItemID)
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
    }
}