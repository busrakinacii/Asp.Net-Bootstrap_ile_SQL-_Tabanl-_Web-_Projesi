using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class OgrenciGuncelle2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            TxtNumara.Text = Request.QueryString["Numara"];

            if (Page.IsPostBack != true)
            {

            }

            //TxtSifre.Text = dt.OgrenciPaneliGetir(TxtNumara.Text)[0].OGRSIFRE;



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            dt.OgrenciSifreGuncelle(TxtSifre.Text, TxtNumara.Text);
            Response.Redirect("OgrenciDefault.aspx?NUMARA=" + TxtNumara.Text);
        }
    }
}