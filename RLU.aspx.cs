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
protected void btnreservarlus_Click(object sender, EventArgs e)
{
    try
    {
        SqlConnection ConnectionList = null;
        string ConnectionString = null;


        ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString;
        ConnectionList = new SqlConnection(ConnectionString);

        ConnectionList.Open();

        SqlParameter[] arParmsInsert = new SqlParameter[3];

        arParmsInsert[0] = new SqlParameter("@ISBN_libro", SqlDbType.Int);
        arParmsInsert[0].Value = txtingreserunusu.Text;
        arParmsInsert[1] = new SqlParameter("@run", SqlDbType.VarChar, 250);
        arParmsInsert[1].Value = txtingreseus.Text;
        arParmsInsert[2] = new SqlParameter("@fecha_reserva", SqlDbType.VarChar, 250);
        arParmsInsert[2].Value = txtrlfechahoy.Text;


        SqlHelper.ExecuteNonQuery(ConnectionList, CommandType.StoredProcedure, "spReservarLibro", arParmsInsert);



        lblmensaje.Text = "Sus datos fueron guardados correctamente";
        ConnectionList.Close();

    }

    catch (Exception)
    {

        lblmensaje.Text = "Los datos no fueron guardados correctamente";
    }
}

}     
            