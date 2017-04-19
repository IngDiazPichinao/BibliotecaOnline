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
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void btnguardar_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection ConnectionList = null;
            string ConnectionString = null;


            ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString;
            ConnectionList = new SqlConnection(ConnectionString);

            ConnectionList.Open();

            SqlParameter[] arParmsInsert = new SqlParameter[6];

            arParmsInsert[0] = new SqlParameter("@ISBN", SqlDbType.Int);
            arParmsInsert[0].Value = txtisbningreso.Text;
            arParmsInsert[1] = new SqlParameter("@AUTOR", SqlDbType.VarChar, 250);
            arParmsInsert[1].Value = txtautor.Text;
            arParmsInsert[2] = new SqlParameter("@NAME", SqlDbType.VarChar, 250);
            arParmsInsert[2].Value = txtnombre.Text;
            arParmsInsert[3] = new SqlParameter("@CATEGORIA", SqlDbType.VarChar, 250);
            arParmsInsert[3].Value = txtcategoria.Text;
            arParmsInsert[4] = new SqlParameter("@CANTIDAD", SqlDbType.Int);
            arParmsInsert[4].Value = txtcantidad.Text;
            arParmsInsert[5] = new SqlParameter("@PRECIO", SqlDbType.Int);
            arParmsInsert[5].Value = txtprecio.Text;

            SqlHelper.ExecuteNonQuery(ConnectionList, CommandType.StoredProcedure, "spRegistrarLibro", arParmsInsert);



            lblmensaje.Text = "Sus datos fueron guardados correctamente";
            ConnectionList.Close();

        }

        catch (Exception)
        {

            lblmensaje.Text = "Los datos no fueron guardados correctamente";
        }
    }
}

    
            