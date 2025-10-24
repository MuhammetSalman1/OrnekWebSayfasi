using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tasarım
{
    public partial class duyuru : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            SqlConnection bağlantı = new SqlConnection(connectionString);

            bağlantı.Open();

            SqlCommand komut = new SqlCommand("INSERT INTO duyuru (Duyuru1, Duyuru2, Duyuru3) VALUES (@Duyuru1, @Duyuru2, @Duyuru3)", bağlantı);

            komut.Parameters.AddWithValue("@Duyuru1", TextBox1.Text);

            komut.ExecuteNonQuery();
            bağlantı.Close();
            TextBox1.Text = "";

        }
    }
    
    }
