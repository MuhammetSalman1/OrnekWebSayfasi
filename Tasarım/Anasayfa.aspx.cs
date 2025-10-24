using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace Tasarım
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadSliderResimleri();
        }

        private void LoadSliderResimleri()
        {
            try
            {
                var resimler = GetSliderResimleri();

                if (resimler.Count > 0)
                {
                    sliderRepeater.DataSource = resimler;
                    sliderRepeater.DataBind();
                }
                else
                {
                    Response.Write("⚠️ Slider için veri bulunamadı.");
                }
            }
            catch (Exception ex)
            {
                Response.Write("❌ Slider verileri yüklenirken hata oluştu: " + ex.Message);
            }
        }

        private List<SliderResim> GetSliderResimleri()
        {
            List<SliderResim> list = new List<SliderResim>();
            string connStr = ConfigurationManager.ConnectionStrings["baglanti"]?.ConnectionString;

            if (string.IsNullOrEmpty(connStr))
                throw new Exception("Bağlantı dizesi bulunamadı (web.config kontrol edilmeli).");

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string query = "SELECT ID, ResimUrl, Aciklama FROM slider ORDER BY ID DESC"; // Son eklenen en başta

                using (SqlCommand cmd = new SqlCommand(query, conn))
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        list.Add(new SliderResim
                        {
                            ID = reader.GetInt32(0),
                            ResimUrl = reader["ResimUrl"].ToString(),
                            Aciklama = reader["Aciklama"] == DBNull.Value ? "" : reader["Aciklama"].ToString()
                        });
                    }
                }
            }

            return list;
        }

        public string GetActiveClass(int index)
        {
            return index == 0 ? "carousel-item active" : "carousel-item";
        }
    }

    public class SliderResim
    {
        public int ID { get; set; }
        public string ResimUrl { get; set; }
        public string Aciklama { get; set; }
    }
    public class Urun
    {
        public int UrunId { get; set; }
        public string urunAdi { get; set; }
        public string UrunResmi { get; set; }
        // public string Aciklama { get; set; } // Eğer açıklama ekleyecekseniz
    }

}
