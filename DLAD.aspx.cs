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
protected void btnguardaralumnoad_Click(object sender, EventArgs e)
{
    try
    {
        SqlConnection ConnectionList = null;
        string ConnectionString = null;


        ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString;
        ConnectionList = new SqlConnection(ConnectionString);

        ConnectionList.Open();

        SqlParameter[] arParmsInsert = new SqlParameter[2];

        arParmsInsert[0] = new SqlParameter("@ISBN", SqlDbType.Int);
        arParmsInsert[0].Value = txtdlisbn.Text;
        arParmsInsert[1] = new SqlParameter("@RUN", SqlDbType.VarChar, 250);
        arParmsInsert[1].Value = txtdlrun.Text;


        SqlHelper.ExecuteNonQuery(ConnectionList, CommandType.StoredProcedure, "spEliminarRegistro", arParmsInsert);



        lblmensajede.Text = "Sus datos fueron guardados correctamente";
        ConnectionList.Close();

    }

    catch (Exception)
    {

        lblmensajede.Text = "Error al guardar los datos";
    }
}
}

