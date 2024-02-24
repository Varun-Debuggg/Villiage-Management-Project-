using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public static string str = System.Configuration.ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString;
    public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}