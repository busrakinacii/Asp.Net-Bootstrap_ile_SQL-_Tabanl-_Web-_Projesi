using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UdemyWeb
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack != true)
            {
                DataSet1TableAdapters.TBL_OGRETMENTableAdapter dt = new DataSet1TableAdapters.TBL_OGRETMENTableAdapter();
                DrpDuyuruOgretmen.DataSource = dt.OgretmenListesi();
                DrpDuyuruOgretmen.DataTextField = "OGRTADSOYAD";
                DrpDuyuruOgretmen.DataValueField = "OGRTID";
                DrpDuyuruOgretmen.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_DUYURULARTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURULARTableAdapter();
            dt.DuyuruEkle(TxtDuyuruBaslik.Text, TxtAreaDuyuruIcerik.Value, Convert.ToInt32(DrpDuyuruOgretmen.SelectedValue));
            Response.Redirect("DuyuruListesi.Aspx");
            MessageBox.Show("Duyuru Sisteme Kaydedilmiştir.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);


        }
    }
}