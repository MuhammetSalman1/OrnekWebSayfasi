using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Tasarım
{
    public partial class Aramayap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cumle = Request.QueryString["cumle"].ToString();
            string connectionString = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            SqlConnection baglanti = new SqlConnection(connectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select * from Urunler where urunAdi like '%" + cumle + "'", baglanti);
            DataTable dt = new DataTable();
            da.Fill(dt);

            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
    }
}