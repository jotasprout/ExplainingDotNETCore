# ADO.NET

## ADO.NET Data Providers

A .NET Framework data provider is used for connecting to a database, executing commands, and retrieving results. Those results are either processed directly, placed in a DataSet in order to be exposed to the user as needed, combined with data from multiple sources, or remoted between tiers. .NET Framework data providers are lightweight, creating a minimal layer between the data source and code, increasing performance without sacrificing functionality.

Based on the data source being used, a different Data Provider must be used in your application to connect with it. The left, middle, and right sections of the below graph show:
• Left - The .NET Application types, 
• Middle - The .NET Data Providers available,
• Right - The different data sources that ADO.NET can communicate with.

Different .NET Data Providers for different Databases.

The data provider we will use is System.Data.SqlClient. System. Data.SqlClient is recommended for middle-tier applications that use Microsoft SQL Server. It’s also recommended for single-tier applications that use Microsoft Database Engine (MSDE) or SQL Server.

ADO.NET code to connect to SQL Server Database
The following image shows sample ADO.NET code that connects to SQL Server Database and retrieves data. We use System.Data.SqlClient classes SQLConnection, SQLCommand, and SQLDataReader.

SQL Server and ADO.NET:
https://docs.microsoft.com/en-us/dotnet/framework/data/adonet/sql/

These classes are called ‘Provider classes’ and are used to interact with the database and perform CRUD operations. 

 **Notice all the classes used above are prefixed with the word SQL. This means these classes all interact with a SQL Server database.

.ExecuteReader(); - Sends the CommandText to the Connection and builds a SqlDataReader.

.ExecuteNonQuery() - Executes a Transact-SQL statement against the connection and returns the number of rows affected.

.AddWithValue(paramstring, value); - Adds a value to the end of the SqlParameterCollection.
        // These are valid ways of adding values to the parameters in the connection string.
        command.Parameters.Add("@ID", SqlDbType.Int);
        command.Parameters["@ID"].Value = customerID;
 
        // Use AddWithValue() to assign a value to the demographics parameter.
        // SQL Server will implicitly convert strings into XML.
        command.Parameters.AddWithValue("@demographics", demoXml);

DataSet:
The DataSet object in ADO.NET is not provider specific. Once you connect to a database and execute the command, a SqlDataReader is returned. Use the .Read() method of the SqlDataReader Class Object to retrieve the row data returned from the query. The data can then be stored in a DataSet and interacted with independent from the database. The DataSet contains a collection of one or more DataTable objects that you queried.
