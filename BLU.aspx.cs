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
protected void btnbuscarlus_Click(object sender, EventArgs e)
{

    SqlConnection ConnectionList = null;
    string ConnectionString = null;
    SqlDataReader dr = null;
    try
    {



        ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString;//local es nombre de la conexion
        ConnectionList = new SqlConnection(ConnectionString);
        ConnectionList.Open();

        SqlParameter[] arParmsInsert = new SqlParameter[1];


        arParmsInsert[0] = new SqlParameter("@NOMBRE ", SqlDbType.VarChar, 200);
        if (String.IsNullOrEmpty(txtingreselus.Text))
        {
            arParmsInsert[0].Value = DBNull.Value;
        }
        else
        {
            arParmsInsert[0].Value = txtingreselus.Text;
        }

        dr = SqlHelper.ExecuteReader(ConnectionList, CommandType.StoredProcedure, "spbuscarlibro ", arParmsInsert);
        lblmensaje.Text = "ENCONTRADO";

        if (dr.HasRows)
        {
            gvblus.DataSource = dr;
            gvblus.DataBind();
        }
        else
        {
            lblmensaje.Text = "NO ENCONTRADO";
        }
    }
    catch (Exception ex)
    {

        throw ex;
    }
}
}     
            