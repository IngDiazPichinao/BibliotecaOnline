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
protected void btnestenderad_Click1(object sender, EventArgs e)
{
    try
    {
        SqlConnection ConnectionList = null;
        string ConnectionString = null;


        ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString;
        ConnectionList = new SqlConnection(ConnectionString);

        ConnectionList.Open();

        SqlParameter[] arParmsInsert = new SqlParameter[3];

        arParmsInsert[0] = new SqlParameter("@isbn_libro", SqlDbType.Int);
        arParmsInsert[0].Value = txtepeisbn.Text;
        arParmsInsert[1] = new SqlParameter("@rut_usuario", SqlDbType.VarChar, 250);
        arParmsInsert[1].Value = txteperun.Text;
        arParmsInsert[2] = new SqlParameter("@Fecha", SqlDbType.VarChar, 250);
        arParmsInsert[2].Value = txtepefhoy.Text;


        SqlHelper.ExecuteNonQuery(ConnectionList, CommandType.StoredProcedure, "spExtenderPlazo", arParmsInsert);



        lblmensajeex.Text = "Sus datos fueron modificados correctamente";
        ConnectionList.Close();

    }

    catch (Exception)
    {

        lblmensajeex.Text = "Los datos modificados no fueron guardados con exito";
    }
}

}
  
            