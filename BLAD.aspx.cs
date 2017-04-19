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

protected void btnbuscarlad_Click(object sender, EventArgs e)
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

        arParmsInsert[0] = new SqlParameter("@NOMBRE", SqlDbType.VarChar, 250);
        if (String.IsNullOrEmpty(txtblbuscar.Text))
        {
            arParmsInsert[0].Value = DBNull.Value;
        }
        else
        {
            arParmsInsert[0].Value = txtblbuscar.Text;
        }

        dr = SqlHelper.ExecuteReader(ConnectionList, CommandType.StoredProcedure, "spbuscarlibro", arParmsInsert);
        lblmensaje1.Text = "ENCONTRADO";

        if (dr.HasRows)
        {
            gbblad.DataSource = dr;
            gbblad.DataBind();
        }
        else
        {
            lblmensaje1.Text = "NO ENCONTRADO";
        }
    }
    catch (Exception ex)
    {

        throw ex;
    }
}
  
}


  
            