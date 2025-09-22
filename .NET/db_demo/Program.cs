using System;
using System.Data.SqlClient;
namespace db_demo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello, World!");
            Console.WriteLine("Getting Connection ...");

            var datasource = @"LAPTOP-VR9HLP3P\SQLEXPRESS"; // your server
            var database = "db_demo_"; // your database name
            //var username = "DESKTOP-LCNNVH9\\kk"; // username of server to connect
            //var password = ""; // password

            // Create your connection string
            string connString = @"Data Source=" + datasource +
                ";Initial Catalog=" + database + "; Trusted_Connection=True;";


            Console.WriteLine(connString);

            SqlConnection conn = new SqlConnection(connString);

            try
            {
                Console.WriteLine("Opening Connection ...");
                // Open the connection
                conn.Open();
                Console.WriteLine("Connection successful!");
                InsertStaff(conn);
                displayStaff(conn);

            }
            catch (Exception e)
            {
                Console.WriteLine("Error: " + e.Message);
            }
            finally
            {
                // Close the connection
                conn.Close();
            }


        }
        static void InsertStaff(SqlConnection conn)
        {
            Console.Write("Enter the Staff Name...");

            int id = 1;
            string name = "aaa";
            string contactno = "1234";
            string querry = "insert into Table_1 (std_id,std_name,std_contactno) values(@id,@name,@contactno)";
            SqlCommand cm = new SqlCommand(querry, conn);
            cm.Parameters.AddWithValue("@id",id);
            cm.Parameters.AddWithValue("@name", name) ;
            cm.Parameters.AddWithValue("@contactno", contactno);
            int rows = cm.ExecuteNonQuery();
            if (rows > 0)
            {
                Console.WriteLine("Inseted recordsuccessfully");
            }
        }
        static void displayStaff(SqlConnection conn)
        {
            string query = "select * from Table_1";
            SqlCommand cm = new SqlCommand(query, conn);
            SqlDataReader reader = cm.ExecuteReader();
            Console.WriteLine("Staff :");
            while (reader.Read())
            {
                {
                    Console.WriteLine($"Name :{reader["Name"]}");

                }
            }
        }
    }
}