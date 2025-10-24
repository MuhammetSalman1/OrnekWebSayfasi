using System;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace Tasarım
{
    public partial class SliderResimEkle : System.Web.UI.Page
    {
        protected void btnEkle_Click(object sender, EventArgs e)
        {
            if (!fuResim.HasFile)
            {
                lblSonuc.Text = "Lütfen bir resim seçiniz.";
                return;
            }

            string uzanti = Path.GetExtension(fuResim.FileName).ToLower();
            string[] izinliUzantilar = { ".jpg", ".jpeg", ".png", ".gif" };
            if (Array.IndexOf(izinliUzantilar, uzanti) < 0)
            {
                lblSonuc.Text = "Sadece jpg, jpeg, png veya gif dosyası yükleyebilirsiniz.";
                return;
            }

            string dosyaAdi = Guid.NewGuid().ToString() + uzanti;
            string kayitYolu = "~/resimler/slider/" + dosyaAdi;
            string fizikselYol = Server.MapPath(kayitYolu);

            fuResim.SaveAs(fizikselYol);

            string aciklama = txtAciklama.Text.Trim();

            string connStr = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO slider (ResimUrl, Aciklama) VALUES (@ResimUrl, @Aciklama)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ResimUrl", "resimler/slider/" + dosyaAdi);
                    cmd.Parameters.AddWithValue("@Aciklama", aciklama);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            lblSonuc.Text = "Resim başarıyla eklendi!";
            txtAciklama.Text = "";
        }
    }
}
