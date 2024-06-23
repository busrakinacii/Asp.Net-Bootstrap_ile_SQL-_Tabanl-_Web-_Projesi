using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UdemyWeb
{
    public partial class NotGuncelle : System.Web.UI.Page
    {

        DataSet1TableAdapters.OgrNotlarTableAdapter dt = new DataSet1TableAdapters.OgrNotlarTableAdapter();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack != true)
            {
                id = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
                //Not id Taşıma Yapıyor mu diye Kontrol Ettik
                //TxtOgrID.Text = id.ToString();

                TxtOgrID.Text = dt.NotGetir2(id)[0].OGRENCIID.ToString();
                TxtOgrAdSoyad.Text = dt.NotGetir2(id)[0].OGRENCIADSOYAD;
                TxtDersAd.Text = dt.NotGetir2(id)[0].DERSAD;
                TxtSinav1.Text = dt.NotGetir2(id)[0].SINAV1.ToString();
                TxtSinav2.Text = dt.NotGetir2(id)[0].SINAV2.ToString();
                TxtSinav3.Text = dt.NotGetir2(id)[0].SINAV3.ToString();
                TxtOrtalama.Text = dt.NotGetir2(id)[0].ORTALAMA.ToString();
                TxtDurum.Text = dt.NotGetir2(id)[0].DURUM.ToString();

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double sinav1, sinav2, sinav3;
            double ortalama;
            sinav1 = Convert.ToInt32(TxtSinav1.Text);
            sinav2 = Convert.ToInt32(TxtSinav2.Text);
            sinav3 = Convert.ToInt32(TxtSinav3.Text);
            ortalama = (sinav1 + sinav2 + sinav3) / 3;
            TxtOrtalama.Text = ortalama.ToString("0.00");
            if (ortalama >= 50)
            {
                TxtDurum.Text = "True";
            }
            else
            {
                TxtDurum.Text = "False";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
            dt.NotGuncelle(byte.Parse(TxtSinav1.Text), byte.Parse(TxtSinav2.Text), byte.Parse(TxtSinav3.Text), decimal.Parse(TxtOrtalama.Text), bool.Parse(TxtDurum.Text), id);
                Response.Redirect("NotListesi.aspx");
                MessageBox.Show("Güncelleme Başarılı Bir Şekilde Oluşturulmuştur.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
          

        }
    }
}