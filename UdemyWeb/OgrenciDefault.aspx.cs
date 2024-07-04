using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            TxtNumara.Text = Session["Numara"].ToString();
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();

            TxtAdSoyad.Text = "AD SOYAD : " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRAD + " " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRSOYAD;
            TxtMail.Text = " MAIL ADRESİ : " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRMAIL;
            TxtTelefon.Text = "TELEFON : " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRTELEFON;
            TxtSifre.Text = "ŞİFRE : " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRSIFRE;
            TxtCinsiyet.Text = "CİNSİYET : " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRCINSIYET;
            TxtFoto.Text = "FOTOGRAF : " + dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRFOTOGRAF;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("OgrenciGuncelle2.aspx?NUMARA="+TxtNumara.Text);
        }
    }
}