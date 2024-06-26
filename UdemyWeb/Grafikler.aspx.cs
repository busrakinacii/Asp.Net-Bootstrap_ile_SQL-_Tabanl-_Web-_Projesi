using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UdemyWeb
{
    public partial class Grafikler : System.Web.UI.Page
    {
        SqlConnection connect = new SqlConnection(@"Data Source=DESKTOP-QUL77PV\SQLEXPRESS;Initial Catalog=UdemySiteDB;Integrated Security=True;Encrypt=False");

        protected void Page_Load(object sender, EventArgs e)
        {

            //Chart1 Sorgu
            connect.Open();
            SqlCommand komut = new SqlCommand("Execute Graf1", connect);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Chart1.Series["Dersler"].Points.AddXY(dr[0].ToString(),int.Parse(dr[1].ToString()));
            }
            connect.Close();



            //Chart3 Sorgu

            connect.Open();
            SqlCommand komut2 = new SqlCommand("Execute Graf2", connect);
            SqlDataReader dr2 = komut2.ExecuteReader();
            while (dr2.Read())
            {
                Chart3.Series["Cinsiyet"].Points.AddXY(dr2[0].ToString(), dr2[1].ToString());
            }
            connect.Close();


            //Chart2 Sorgu

            connect.Open();
            SqlCommand komut3 = new SqlCommand("Execute Graf3", connect);
            SqlDataReader dr3 = komut3.ExecuteReader();
            while (dr3.Read())
            {
                Chart2.Series["DersAd"].Points.AddXY(dr3[0].ToString(), dr3[1].ToString());
            }
            connect.Close();


            //Chart4 Sorgu

            connect.Open();
            SqlCommand komut4 = new SqlCommand("Execute Graf4", connect);
            SqlDataReader dr4 = komut4.ExecuteReader();
            while (dr4.Read())
            {
                Chart4.Series["Notlar"].Points.AddXY(dr4[0].ToString(), dr4[1].ToString());
            }
            connect.Close();
        }
    }
}