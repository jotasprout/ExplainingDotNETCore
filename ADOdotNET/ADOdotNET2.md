# ADO.NET

## Overview

ActiveX Data Objects, or ADO.NET, is a Data Access technology for communicating with different data sources by establishing a connection between a .NET Application and the data source.

Data sources can be Azure Databases, SQL Server, Oracle, MySQL, etc. ADO.NET is a set of classes for connecting to a Db then retrieve, insert, update and delete data (CRUD operations) from data sources. ADO.NET mainly uses System.Data.dll and System.Xml.dll.

https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/ado-net-overview
Provides an introduction to the design and components of ADO.NET.

## How ADO.NET works

The Database cannot directly execute C# code. It only understands SQL. So, if a .NET application needs to retrieve data or to do some insert, update, and delete operations from or to a database, then the .NET application needs to

1. Connect to the Database
2. Prepare an SQL Command
3. Execute the Command
4. Retrieve the results and display them in the application
And this is possible with the help of .NET Data Providers.

## Components of ADO.NET

The Components of ADO.NET are designed for data manipulation and fast data access.

### Connection

Establishes a connection to a specific data source. The base class for all Connection objects is the DbConnection class.

### Command

Executes a command against a data source. Exposes Parameters and can execute in the scope of a Transaction from a Connection. The base class for all Command objects is the DbCommand class.

### DataReader

Reads a forward-only, read-only stream of data from a data source. The base class for all DataReader objects is the DbDataReader class.

### DataAdapter

Populates a DataSet and resolves updates with the data source. The base class for all DataAdapter objects is the DbDataAdapter class.

Depending on the provider, the ADO.NET components (Connection, Command, DataReader, and DataAdapter) have a different prefix. 
	SQL Server	Oracle	OLE DB	ODBC
Connection	SQLConnection	OracleConnection	OleDbConnection	OdbcConnection
Command	SQLCommand	OracleCommand	OleDbCommand	OdbcCommand
DataReader	SQLDataReader	OracleDataReader	OleDbDataReader	OdbcDataReader
DataAdapter	SQLDataAdapter	OracleDataAdapter	OleDbDataAdapter	OdbcDataAdapter

## Entity Framework

https://learn.microsoft.com/en-us/ef/ef6/index
Describes how to create applications using the Entity Framework.

## What types of Applications use ADO.NET?

ADO.NET can be used to develop any type of .NET application. The following are some of the .NET applications where you can use ADO.NET Data Access Technology to interact with a data source.

• ASP.NET Web Form Applications
• Windows Applications
• ASP.NET MVC Application
• Console Applications
• ASP.NET Web API Applications

## Securing ADO.NET Applications

https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/securing-ado-net-applications
Describes secure coding practices when using ADO.NET.

## Data Type Mappings in ADO.NET

https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/data-type-mappings-in-ado-net
Describes data type mappings between .NET Framework data types and the .NET Framework data providers.

## DataSets, DataTables, and DataViews

https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/dataset-datatable-dataview/
Describes how to create and use DataSets, typed DataSets, DataTables, and DataViews.

## LINQ to DataSet

https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/linq-to-dataset
Provides information about LINQ to DataSet, including programming examples.

## Retrieving and Modifying Data in ADO.NET

https://learn.microsoft.com/en-us/dotnet/framework/data/adonet/retrieving-and-modifying-data
Describes how to connect to a data source and how to retrieve and modify data using Commands, DataReaders, and DataAdapters.
