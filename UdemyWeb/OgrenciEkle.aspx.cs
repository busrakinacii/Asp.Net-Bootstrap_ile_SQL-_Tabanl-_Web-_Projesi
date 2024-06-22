using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UdemyWeb
{
    public partial class OgrenciEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt= new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciEkle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTel.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFoto.Text);
            MessageBox.Show("Ögrenci Sisteme Eklenmiştir", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Response.Redirect("Default.aspx");


        }
    }
}