using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCI1TableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCI1TableAdapter();
            TextBox1.Text = "Toplam Öğrenci Sayısı: " + dt.Istatistik1().ToString();
            TextBox2.Text = "Toplam Öğretmen Sayısı: " + dt.Istatistik2().ToString();
            TextBox3.Text = "Toplam Ders Sayısı: " + dt.Istatistik3().ToString();
            TextBox4.Text = "Matemetik Dersinin ilk Sınavından En yüksek Alan Öğrenci: " + dt.Istatistik4().ToString();
            TextBox5.Text = "Fizik Dersinin ilk Sınavından En yüksek Alan Öğrenci: " + dt.Istatistik5().ToString();
            TextBox6.Text = "Dil Anlatım Dersinin ilk Sınavından En yüksek Alan Öğrenci: " + dt.Istatistik6().ToString();
            TextBox7.Text = "Edebiyat Dersinin ilk Sınavından En yüksek Alan Öğrenci: " + dt.Istatistik7().ToString();

            TextBox8.Text = "Matematik Dersi 1.Sınav Ortalaması: " + dt.Istatistik8().ToString();

            TextBox9.Text = "Edebiyat Dersi 1.Sınav Ortalaması: " + dt.Istatistik9().ToString();

            TextBox10.Text = "Fizik Dersi 1.Sınav Ortalaması: " + dt.Istatistik10().ToString();

            TextBox11.Text = "Matematik Dersini Geçen Toplam Öğrenci Sayısı: " + dt.Istatistik11().ToString();
            TextBox12.Text = "Matematik Dersinden Kalan Toplam Öğrenci Sayısı: " + dt.Istatistik12().ToString();
        }
    }
}