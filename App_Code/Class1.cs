using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection connection;
    SqlCommand sqlCmd;
    SqlDataAdapter sqlDa;
    string cnnStr;
    public Class1()
    {
        cnnStr = "Data Source=.;Initial Catalog=SanalDoktorum;Integrated Security=true;";
    }
    public DataTable SelectTable(string cmdStr)
    {
        connection = new SqlConnection(cnnStr);
        sqlCmd = new SqlCommand(cmdStr, connection);
        sqlDa = new SqlDataAdapter(sqlCmd);
        DataTable dt = new DataTable();
        try
        {
            sqlDa.Fill(dt);
        }
        catch
        {

        }
        return dt;

    }
    public int runCommand(string cmdStr)
    {
        int numberOfRows = 0;
        connection = new SqlConnection(cnnStr);
        sqlCmd = new SqlCommand(cmdStr, connection);

        try
        {
            connection.Open();
            numberOfRows = sqlCmd.ExecuteNonQuery();
            connection.Close();
        }
        catch
        {
            numberOfRows = -1;
            connection.Close();
        }


        return numberOfRows;
    }
}
