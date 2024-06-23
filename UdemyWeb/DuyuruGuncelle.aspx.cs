using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UdemyWeb
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack != true)
            {
                int id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
                TxtDuyuruID.Text = id.ToString();
                TxtDuyuruBaslik.Text = dt.DuyuruSec(id)[0].DUYURUBASLIK;
                TxtAreaDuyuruIcerik.Value = dt.DuyuruSec(id)[0].DUYURUICERIK;
                //  DrpDuyuruOgretmen.Text = dt.FillDuyuruProcedur(id).ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["DUYURUID"].ToString());
            dt.DuyuruGuncelle(TxtDuyuruBaslik.Text, TxtAreaDuyuruIcerik.Value, id);
            Response.Redirect("DuyuruListesi.Aspx");
            MessageBox.Show("Duyuru Güncellenmiştir.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);


        }
    }
}