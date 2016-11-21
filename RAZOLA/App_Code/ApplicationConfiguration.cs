using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

namespace RAZOLA.App_Code
{
    /// <summary>
    /// Repository for RAZOLA configuration settings
    /// </summary>
    public static class RazolaConfiguration
    {
        // Caches the connection string
        private static string dbConnectionString;
        // Caches the data provider name
        private static string dbProviderName;
        static RazolaConfiguration()
        {
            dbConnectionString =
            ConfigurationManager.ConnectionStrings["RazolaConnetion"].
            ConnectionString;
            dbProviderName =
            ConfigurationManager.ConnectionStrings["RazolaConnetion"].
            ProviderName;
        }
        // Returns the connection string for the Razola database
        public static string DbConnectionString
        {
            get
            {
                return dbConnectionString;
            }
        }
        // Returns the data provider name
        public static string DbProviderName
        {
            get
            {
                return dbProviderName;
            }
        }
    }
}
