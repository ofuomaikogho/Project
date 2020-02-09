using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace ProfitPlusWeb.Account
{
    public class Dashboard
    {
        public class UserDetailsInfo // Method to expose data
        {
            int userId { get; set;}
            string firstName { get; set; }
            string lastName { get; set; }
            string email { get; set; }
            string phone1 { get; set; }
            string phone2 { get; set; }
            string bankName { get; set; }
            string accNo { get; set; }
            string package { get; set; }
            string myPassword { get; set; }
        }

        public class UserDetailsDataService
        {
            private readonly string _connectionString;
            public UserDetailsDataService(string connectionString)
            {
                _connectionString = connectionString;
            }

            public UserDetailsInfo GetByUserId(string email)
            {
                using (var connection = new SqlConnection(_connectionString))
                {
                    var sql = "SELECT * FROM DETAILS WHERE ";
                    connection.Open();
                    using (var command = new SqlCommand(sql, connection))
                    {
                        command.Parameters.AddWithValue();
                        using (var reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                return new UserDetailsInfo
                                {
                                userId = 
                                userId  = reader[0].ToString(),
                                firstName 
                                lastName 
                                email
                                phone1 
                                phone2 
                                bankName
                                accNo 
                                package 
                                myPassword 
                                };
                            }
                        }
                    }
                }
                return null;
            }

        }
        
    }
}