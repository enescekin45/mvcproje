using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for sql
/// </summary>
public class sql
{
    public SqlConnection baglan;

    public sql()
    {
        baglan = new SqlConnection(@"Data Source=DESKTOP-JOGUIE2\MSSQLSERVERR;Initial Catalog=Dbo_mvc;Integrated Security=True");
        baglan.Open();
    }
}
