# ADO.NET

 Introduction to ADO.NET 

What is ADO.NET?
ADO stands for Microsoft ActiveX Data Objects. ADO.NET is one of Microsoft’s Data Access technologies that we can use to communicate with different data sources. It is a part of the .Net Framework and is used to establish a connection between a .NET Application and the data source. 

Data sources can be Azure Databases, SQL Server, Oracle, MySQL, etc. ADO.NET consists of a set of classes that can be used to connect to a Db then retrieve, insert, update and delete data (CRUD operations) from data sources. ADO.NET mainly uses System.Data.dll and System.Xml.dll.

What types of Applications use ADO.NET?
ADO.NET can be used to develop any type of .NET application. The following are some of the .NET applications where you can use ADO.NET Data Access Technology to interact with a data source.
•	ASP.NET Web Form Applications
•	Windows Applications
•	ASP.NET MVC Application
•	Console Applications
•	ASP.NET Web API Applications

What is .NET Data Providers?
The Database cannot directly execute C# code. It only understands SQL. So, if a .NET application needs to retrieve data or to do some insert, update, and delete operations from or to a database, then the .NET application needs to
1.	Connect to the Database
2.	Prepare an SQL Command
3.	Execute the Command
4.	Retrieve the results and display them in the application
And this is possible with the help of .NET Data Providers.

A .NET Framework data provider is used for connecting to a database, executing commands, and retrieving results. Those results are either processed directly, placed in a DataSet in order to be exposed to the user as needed, combined with data from multiple sources, or remoted between tiers. .NET Framework data providers are lightweight, creating a minimal layer between the data source and code, increasing performance without sacrificing functionality.

ADO.NET Data Providers
Based on the data source being used, a different Data Provider must be used in your application to connect with it. The left, middle, and right sections of the below graph show:
•	Left - The .NET Application types, 
•	Middle - The .NET Data Providers available,
•	Right - The different data sources that ADO.NET can communicate with. 
 

Different .NET Data Providers for different Databases
 

Components of ADO.NET
•	The Components of ADO.NET are designed for data manipulation and fast data access. Connection:
o	Establishes a connection to a specific data source. The base class for all Connection objects is the DbConnection class.
•	Command
o	Executes a command against a data source. Exposes Parameters and can execute in the scope of a Transaction from a Connection. The base class for all Command objects is the DbCommand class.
•	DataReader
o	Reads a forward-only, read-only stream of data from a data source. The base class for all DataReader objects is the DbDataReader class.
•	DataAdapter
o	Populates a DataSet and resolves updates with the data source. The base class for all DataAdapter objects is the DbDataAdapter class.

Depending on the provider, the ADO.NET components (Connection, Command, DataReader, and DataAdapter) have a different prefix. 
	SQL Server	Oracle	OLE DB	ODBC
Connection	SQLConnection	OracleConnection	OleDbConnection	OdbcConnection
Command	SQLCommand	OracleCommand	OleDbCommand	OdbcCommand
DataReader	SQLDataReader	OracleDataReader	OleDbDataReader	OdbcDataReader
DataAdapter	SQLDataAdapter	OracleDataAdapter	OleDbDataAdapter	OdbcDataAdapter

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
