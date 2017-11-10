using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Connection.Database
{
    public class FamilyDB
    {
        public static SqlConnection getConnection()
        {
            try
            {
                string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Connection\Connection\App_Data\FamilyDB.mdf;Integrated Security=True";
                SqlConnection connection = new SqlConnection(connectionString);
                return connection;
            }
            catch
            {
                return null;
            }

        }
    }
}