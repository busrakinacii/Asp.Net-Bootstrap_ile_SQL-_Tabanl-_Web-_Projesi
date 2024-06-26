using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UdemyWeb
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack != true)
            {

                id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                TxtDersID.Text = id.ToString();

                TxtDersAd.Text = dt.DersGetir(id)[0].DERSAD;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
            dt.DersGuncelle(TxtDersAd.Text, id);
            Response.Redirect("DersListesi.Aspx");
            MessageBox.Show("Ders Adı Güncellenmiştir.", "Bilgi", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
    }
}