using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace kullanıcı_girişi
{

    public partial class WebForm1 : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void btnGiris_Click(object sender, EventArgs e)
        {
            // Giriş işlemleri buraya
            string kullaniciAdi = txtKullaniciAdi.Text.Trim();
            string parola = txtParola.Text.Trim();

            // Örnek işlem: boş kontrolü
            if (kullaniciAdi == "admin" && parola == "1234")
            {
                Response.Redirect("AnaSayfa.aspx");
            }
            else
            {
                lblSonuc.Text = "Kullanıcı adı veya parola hatalı.";
            }
        }
        protected void btnGiris(object sender, EventArgs e)
        {
            string kullaniciAdi = txtKullaniciAdi.Text;
            string parola = txtParola.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM Kullanicilar WHERE KullaniciAdi = @KullaniciAdi AND Parola = @Parola";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@KullaniciAdi", kullaniciAdi);
                cmd.Parameters.AddWithValue("@Parola", parola); // Gerçek projede SHA-256 vb. ile hashleyin

                conn.Open();
                int count = (int)cmd.ExecuteScalar();

                if (count > 0)
                {
                    Session["KullaniciAdi"] = kullaniciAdi;
                    Response.Redirect("AnaSayfa.aspx");
                }
                else
                {
                    lblSonuc.Text = "Kullanıcı adı veya parola hatalı.";
                }
            }
        }

    }
}