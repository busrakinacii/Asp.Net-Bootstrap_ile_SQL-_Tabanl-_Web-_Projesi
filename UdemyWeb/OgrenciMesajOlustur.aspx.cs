using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UdemyWeb
{
    public partial class OgrenciMesajOlustur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtMesajGonderen.Text = Session["Numara"].ToString();
        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJLARTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJLARTableAdapter();
            dt.MesajGonder(TxtMesajGonderen.Text, TxtMesajAlici.Text, TxtMesajBaslik.Text, TxtAreaMesajIcerik.Value.ToString());
            Response.Redirect("OgrenciGidenMesajlar.Aspx");
            MessageBox.Show("Mesajınız Gönderilmiştir.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }
    }
}