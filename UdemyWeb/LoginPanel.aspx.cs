using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace UdemyWeb
{
    public partial class LoginPanel : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-QUL77PV\SQLEXPRESS;Initial Catalog=UdemySiteDB;Integrated Security=True;Encrypt=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connect.Open();
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRENCI where NUMARA=@p1 and OGRSIFRE=@p2 ", connect);
            komut.Parameters.AddWithValue("@p1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@p2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if(dr.Read())
            {
                Response.Redirect("OgrenciDefault.Aspx?Numara="+TxtNumara.Text);
            }
            else
            {
                MessageBox.Show("Hatalı Kullanıcı Adı Veya Şifre","Hata",MessageBoxButtons.OK,MessageBoxIcon.Error);
                //TxtSifre.Text = "Hatalı Şifre";
            }
            connect.Close();
          
        }
    }
}