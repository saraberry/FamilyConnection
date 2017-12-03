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
        public static void addGroceryItem(GroceryItems g)
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
        public static void DeleteList(int familyID, string listType, string listName)
        {
            SqlConnection connection = FamilyDB.getConnection();
            String query = "Delete from ListItems where familyID = @familyID and listType = @listType and listItem = @listName";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@familyID", familyID);
            cmd.Parameters.AddWithValue("@listType", listType);
            cmd.Parameters.AddWithValue("@listName", listName);


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
        public static void addToDoItem(ToDoItems t)
        {
            SqlConnection connection = FamilyDB.getConnection();

            String query = "Insert into ListItems (familyID, listItem, listType, dueDate, isComplete) values (@familyID, @listItem, @listType, @dueDate, @isComplete)";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@familyID", t.FamilyID);
            cmd.Parameters.AddWithValue("@listItem", t.ListItem);
            cmd.Parameters.AddWithValue("@listType", t.ListType);
            cmd.Parameters.AddWithValue("@dueDate", t.DueDate);
            cmd.Parameters.AddWithValue("@isComplete", t.IsComplete);

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
        public static List<GroceryItems> getGroceryList(int famID)
        {
            if (famID == null) { return null; }

            List<GroceryItems> allGrocery = new List<GroceryItems>();

            SqlConnection connection = FamilyDB.getConnection();
            if (connection != null)
            {
                connection.Open();
            }
            string listType = "grocery";

            String query = "SELECT listItem, storeName, salePrice FROM ListItems WHERE familyID = @famID and listType = @listType";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@famID", famID);
            cmd.Parameters.AddWithValue("@listType", listType);


            try
            {
                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {
                    GroceryItems g = new GroceryItems();
                    g.ListItem = (string)read["listItem"];
                    g.StoreName = (string)read["storeName"];
                    g.StorePrice = (double)read["storePrice"];

                    allGrocery.Add(g);
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
            return allGrocery;
        }
        public static List<ToDoItems> getToDoList(int famID)
        {
            if (famID == null) { return null; }

            List<ToDoItems> allToDo = new List<ToDoItems>();

            SqlConnection connection = FamilyDB.getConnection();
            if (connection != null)
            {
                connection.Open();
            }
            string listType = "todo";
            String query = "SELECT listItem, dueDate FROM ListItems WHERE familyID = @famID and listType = @listType";
            SqlCommand cmd = new SqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@famID", famID);
            cmd.Parameters.AddWithValue("@listType", listType);
            try
            {
                SqlDataReader read = cmd.ExecuteReader();

                if (read.Read())
                {
                    ToDoItems t = new ToDoItems();
                    t.ListItem = (string)read["listItem"];
                    t.DueDate = (DateTime)read["dueDate"];

                    allToDo.Add(t);
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
            return allToDo;
        }
    }
}
