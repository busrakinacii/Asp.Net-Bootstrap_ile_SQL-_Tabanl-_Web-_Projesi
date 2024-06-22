using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace UdemyWeb
{
    public partial class OgrenciSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
            DataSet1TableAdapters.TBL_OGRENCITableAdapter da = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            da.OgrenciSil(id);
            MessageBox.Show("Öğrenci Sistemden Silinmiştir.","Bilgi",MessageBoxButtons.OK, MessageBoxIcon.Information);
            Response.Redirect("Default.Aspx");
        }
    }
}