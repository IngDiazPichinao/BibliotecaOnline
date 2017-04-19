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

    protected void  btnvermultaad_Click(object sender, EventArgs e)
 {
        SqlConnection ConnectionList = null;
        string ConnectionString = null;
        SqlDataReader dr = null;//nuevo 
        try
        {
            ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString;//local es nombre de la conexion
            ConnectionList = new SqlConnection(ConnectionString);
            ConnectionList.Open();// se abre la conexion

            SqlParameter[] arParmsInsert = new SqlParameter[1];//parametros que almacenamos en la base de datos

            arParmsInsert[0] = new SqlParameter("@run", SqlDbType.Int);
            if (String.IsNullOrEmpty(txtvmrun.Text))
            {
                arParmsInsert[0].Value = DBNull.Value;
            }
            else
            {
                arParmsInsert[0].Value = txtvmrun.Text;
            }

            dr = SqlHelper.ExecuteReader(ConnectionList, CommandType.StoredProcedure, "spVerMulta", arParmsInsert);
            lblmensajevm.Text = "RUN encontrado";
            if (dr.HasRows)
            {
                fgvvmad.DataSource = dr;
                fgvvmad.DataBind();
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
  
            