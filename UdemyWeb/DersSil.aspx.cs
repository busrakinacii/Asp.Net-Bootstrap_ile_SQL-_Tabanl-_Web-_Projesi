using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UdemyWeb
{
    public partial class DersSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id =Convert.ToInt32( Request.QueryString["DERSID"]);
            DataSet1TableAdapters.TBL_DERSLERTableAdapter dt = new DataSet1TableAdapters.TBL_DERSLERTableAdapter();
            dt.DersSil(id);
            Response.Redirect("DersListesi.Aspx");
            MessageBox.Show("Ders Sistemden Silinmiştir.","Bilgi",MessageBoxButtons.OK,MessageBoxIcon.Information);


        }
    }
}