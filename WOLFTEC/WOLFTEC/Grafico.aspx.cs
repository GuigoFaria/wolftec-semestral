using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WOLFTEC {
    public partial class Grafico : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {
            Nome.Text = string.Format(Session["nomeUsuario"].ToString());
        }

        protected void Minimo_Load(object sender, EventArgs e) {
            using (SqlConnection conn = new SqlConnection("Server=tcp:guilherme-faria.database.windows.net,1433;Database=BaseDeDados1;User ID=guigafaria;Password=Abcd@123;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT MIN([valor]) OVER(PARTITION BY 1) AS[val_Min] from leitura", conn)) {

                    using (SqlDataReader dr = cmd.ExecuteReader()) {
                        if (dr.Read() == true) {
                            Minimo.Text = (dr["val_Min"].ToString());


                        } else {
                            Minimo.Text = "0";
                        }


                    }


                }
            }
        }

        protected void Maximo_Load(object sender, EventArgs e) {
            using (SqlConnection conn = new SqlConnection("Server=tcp:guilherme-faria.database.windows.net,1433;Database=BaseDeDados1;User ID=guigafaria;Password=Abcd@123;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT MAX([valor]) OVER(PARTITION BY 1) AS[val_Max] FROM leitura", conn)) {

                    using (SqlDataReader dr = cmd.ExecuteReader()) {
                        if (dr.Read() == true) {
                            Maximo.Text = (dr["val_Max"].ToString());
                        } else {
                            Maximo.Text = "0";
                        }
                    }

                }
            }
        }

        protected void Mediana_Load(object sender, EventArgs e) {
            using (SqlConnection conn = new SqlConnection("Server=tcp:guilherme-faria.database.windows.net,1433;Database=BaseDeDados1;User ID=guigafaria;Password=Abcd@123;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY [valor]) OVER(PARTITION BY 1) AS[val_Mediana] FROM leitura", conn)) {

                    using (SqlDataReader dr = cmd.ExecuteReader()) {
                        if (dr.Read() == true) {
                            Mediana.Text = (dr["val_Mediana"].ToString());
                        } else {
                            Mediana.Text = "0";
                        }
                    }

                }

            }
        }

        protected void Quartil1_Load(object sender, EventArgs e) {
            using (SqlConnection conn = new SqlConnection("Server=tcp:guilherme-faria.database.windows.net,1433;Database=BaseDeDados1;User ID=guigafaria;Password=Abcd@123;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT PERCENTILE_CONT(0.25) WITHIN GROUP(ORDER BY [valor]) OVER(PARTITION BY 1) AS[val_PrimeiroQuartil] FROM leitura", conn)) {

                    using (SqlDataReader dr = cmd.ExecuteReader()) {
                        if (dr.Read() == true) {
                            Quartil1.Text = (dr["val_PrimeiroQuartil"].ToString());
                        } else {
                            Quartil1.Text = "0";
                        }
                    }

                }

            }
        }

        protected void Quartil3_Load(object sender, EventArgs e) {
            using (SqlConnection conn = new SqlConnection("Server=tcp:guilherme-faria.database.windows.net,1433;Database=BaseDeDados1;User ID=guigafaria;Password=Abcd@123;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand("SELECT DISTINCT PERCENTILE_CONT(0.75) WITHIN GROUP(ORDER BY [valor]) OVER(PARTITION BY 1) AS[val_TerceiroQuartil] FROM leitura", conn)) {

                    using (SqlDataReader dr = cmd.ExecuteReader()) {
                        if (dr.Read() == true) {
                             Quartil3.Text = (dr["val_TerceiroQuartil"].ToString());
                        } else {
                             Quartil3.Text = "0";
                        }
                    }

                }
            }

        }
    }
}