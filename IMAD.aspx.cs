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
protected void  btnmultar_Click(object sender, EventArgs e)
 {
        try
        {
            SqlConnection ConnectionList = null;
            string ConnectionString = null;


            ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString;
            ConnectionList = new SqlConnection(ConnectionString);

            ConnectionList.Open();

            SqlParameter[] arParmsInsert = new SqlParameter[5];

            arParmsInsert[0] = new SqlParameter("@run", SqlDbType.Int);
            arParmsInsert[0].Value = txtimrun.Text;
            arParmsInsert[1] = new SqlParameter("@tiempo", SqlDbType.VarChar, 250);
            arParmsInsert[1].Value = txtimtmulta.Text;
            arParmsInsert[2] = new SqlParameter("@isbn", SqlDbType.Int);
            arParmsInsert[2].Value = txtimisbn.Text;
            arParmsInsert[3] = new SqlParameter("@descripcino", SqlDbType.VarChar, 250);
            arParmsInsert[3].Value = txtimdescripcion.Text;
            arParmsInsert[4] = new SqlParameter("@precio", SqlDbType.Decimal);
            arParmsInsert[4].Value = txtprecio.Text;

            SqlHelper.ExecuteNonQuery(ConnectionList, CommandType.StoredProcedure, "spIngresarMulta", arParmsInsert);



            lblmensajemu.Text = "Sus datos fueron guardados correctamente";
            ConnectionList.Close();

        }

        catch (Exception)
        {

            lblmensajemu.Text = "Los datos no fueron guardados correctamente";
        }
    }
}
  
            