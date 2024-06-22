using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UdemyWeb
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack != true)
            {

                try
                {
                    //Öğrenci Verilerini Getirme
                    id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                    TxtOgrID.Text = id.ToString();
  
                    TxtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
                    TxtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
                    TxtOgrTel.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
                    TxtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
                    TxtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
                    TxtOgrFoto.Text = dt.OgrenciSec(id)[0].OGRFOTOGRAF;

                }
                catch (Exception)
                {
                    TxtOgrFoto.Text = "Link Girin";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTel.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFoto.Text, id);
            Response.Redirect("Default.aspx");
            MessageBox.Show("Güncelleme İşlemi Başarıyla Gerçekleştirilmiştir.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }
    }
}