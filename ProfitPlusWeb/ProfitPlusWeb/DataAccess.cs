using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

using System.Security.Cryptography;
using System.Collections;

namespace ProfitPlusWeb
{
    public class DataAccess
    {
        private SqlConnection datcon;

        public DataAccess(string ConnectionKey)
        {
            DataConnection(ConnectionKey);
        }

        private void DataConnection(string ConnectionString)
        {
            datcon = new SqlConnection(ConnectionString);
            datcon.Open();
        }

    }
}