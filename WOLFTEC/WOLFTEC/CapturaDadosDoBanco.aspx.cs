using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;


namespace WOLFTEC {
    public partial class CapturaDadosDoBanco : System.Web.UI.Page {
        
        protected void Page_Load(object sender, EventArgs e) {

        }
        [WebMethod]
        public static double TemperaturaAtual() {
            using (SqlConnection conn = new SqlConnection("Server=tcp:guilherme-faria.database.windows.net,1433;Database=BaseDeDados1;User ID=guigafaria;Password=Abcd@123;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand("SELECT valor FROM leitura WHERE id_leitura = (SELECT MAX(id_leitura) FROM leitura)", conn)) {

                    using (SqlDataReader dr = cmd.ExecuteReader()) {
                        if (dr.Read() == true) {
                            return double.Parse(dr["valor"].ToString());
                        } else {
                            return 0;
                        }
                    }

                }

            }
        }
    }
}