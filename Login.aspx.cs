using System;
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


public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn1_Click(object sender, EventArgs e)
    {
        SqlConnection ConnectionList = null;
        string ConnectionString = null;
        SqlDataReader dr = null;

        try
        {
            ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["LOCAL"].ConnectionString;
            ConnectionList = new SqlConnection(ConnectionString);
            ConnectionList.Open();

            SqlParameter[] arParmsInsert = new SqlParameter[3];

            arParmsInsert[0] = new SqlParameter("@usuario", SqlDbType.VarChar, 255);
            arParmsInsert[0].Value = txtuser.Text;

            arParmsInsert[1] = new SqlParameter("@Pasword", SqlDbType.VarChar, 255);
            arParmsInsert[1].Value = txtpas.Text;

            dr = SqlHelper.ExecuteReader(ConnectionList, CommandType.StoredProcedure, "spLogin", arParmsInsert);


            if (dr.HasRows)
            {
                dr.Read();
                string tipo_nivel = dr["US_TIPO"].ToString();
                Session["tipo"] = tipo_nivel;

                switch (tipo_nivel)
                {
                    case "1":
                        Response.Redirect("BLAD.aspx");
                        break;
                    case "2":
                        Response.Redirect("usuario.aspx");
                        break;
                   
                    default:
                        Response.Redirect("Login.aspx?estado=" + "¡Usted NO se encuentra registrado!");
                        break;
                }
            }
            else
            {
                Label1.Text = "no esta";
            }
        }

        catch (Exception ex)
        {

            throw ex;
        }

    }
    protected void txtpas_TextChanged(object sender, EventArgs e)
    {

    }
}

     
        
           