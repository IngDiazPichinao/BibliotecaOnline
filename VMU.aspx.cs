using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data.Sql;
using Microsoft.ApplicationBlocks.Data;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
protected void btnvermultaus_Click(object sender, EventArgs e)
{
    SqlConnection ConnectionList = null;
    string ConnectionString = null;
    SqlDataReader dr = null; 
    try
    {
        ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString;
        ConnectionList = new SqlConnection(ConnectionString);
        ConnectionList.Open();

        SqlParameter[] arParmsInsert = new SqlParameter[1];

        arParmsInsert[0] = new SqlParameter("@run", SqlDbType.Int);
        arParmsInsert[0].Value = txtvermulus.Text;
        dr = SqlHelper.ExecuteReader(ConnectionList, CommandType.StoredProcedure, "spVerMulta", arParmsInsert);

        if (dr.HasRows)
        {
            gvvmus.DataSource = dr;
            gvvmus.DataBind();
        }
        dr.Close();
        ConnectionList.Close();
    }
    catch (Exception)
    {

        throw;
    }
}
}     
            