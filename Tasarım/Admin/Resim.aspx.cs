using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Drawing;
using System.Reflection.Emit;
using System.Configuration;

namespace Tasarım
{
    public partial class Resim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ResimleriYukle();
            }
        }
        string uzanti = "";
        string resim = "";

        // ...
        private void ResimleriYukle()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            using (SqlConnection baglanti = new SqlConnection(connectionString))
            {
                baglanti.Open();
                SqlCommand komut = new SqlCommand("SELECT urunAdi, UrunResmi FROM Urunler", baglanti);
                SqlDataReader dr = komut.ExecuteReader();
                dlResimler.DataSource = dr;
                dlResimler.DataBind();
                dr.Close();
            }
        }
        protected void btnekle_Click(object sender, EventArgs e)
        {

            if (furesim.HasFile)
            {
                uzanti = Path.GetExtension(furesim.PostedFile.FileName);
                resim = (txtresimadi.Text) + "_urunresim_" + DateTime.Now.Day + uzanti;
                furesim.SaveAs(Server.MapPath("~/resimler/sahte" + uzanti));

                int Donusturme = 640;

                Bitmap bmp = new Bitmap(Server.MapPath("~/resimler/sahte" + uzanti));
                using (Bitmap OrjinalResim = bmp)
                {
                    double ResYukseklik = OrjinalResim.Height;
                    double ResGenislik = OrjinalResim.Width;
                    double oran = 0;

                    if (ResGenislik >= Donusturme)
                    {
                        oran = ResGenislik / ResYukseklik;
                        ResGenislik = Donusturme;
                        ResYukseklik = Donusturme / oran;

                        Size yenidegerler = new Size(Convert.ToInt32(ResGenislik), Convert.ToInt32(ResYukseklik));
                        Bitmap yeniresim = new Bitmap(OrjinalResim, yenidegerler);
                        yeniresim.Save(Server.MapPath("~/resimler/" + resim));

                        yeniresim.Dispose();
                        OrjinalResim.Dispose();
                        bmp.Dispose();
                    }
                    else
                    {
                        furesim.SaveAs(Server.MapPath("~/resimler/" + resim));
                    }
                }
                FileInfo figecici = new FileInfo(Server.MapPath("~/resimler/sahte" + uzanti));
                figecici.Delete();
            }
            string connectionString = ConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            SqlConnection baglanti = new SqlConnection(connectionString);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into Urunler(urunAdi,UrunResmi) values (@urunAdi,@UrunResmi)", baglanti);
            komut.Parameters.AddWithValue("@urunAdi", txtresimadi.Text.ToString());
            komut.Parameters.AddWithValue("@UrunResmi", resim);
            komut.ExecuteNonQuery();
            baglanti.Close();

            Label3.Text = "Ekelme Başarılı";
            txtresimadi.Text = "";
            ResimleriYukle();
        }
    }
}