using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WOLFTEC {
    public partial class Login : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void loginPrincipal(object sender, EventArgs e) {
            String login, senhaComparar;
            login = email.Text;
            senhaComparar = senha.Text;
            using (SqlConnection conn = new SqlConnection("Server=tcp:guilherme-faria.database.windows.net,1433;Database=BaseDeDados1;User ID=guigafaria;Password=Abcd@123;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {
                conn.Open();

                using (SqlCommand cmd = new SqlCommand("select id_usuario from USUARIO where email = @login and senha = @senha", conn)) {
                    cmd.Parameters.AddWithValue("@login", login);
                    cmd.Parameters.AddWithValue("@senha", senhaComparar);

                    int id;
                    object o;
                    o = cmd.ExecuteScalar();
                    if (o == null || o == DBNull.Value) {
                        // NAO EXISTE...
                        Server.Transfer("Login.aspx");
                    } else {
                        //usuário e senha OK!
                        id = (int)o;
                        Server.Transfer("Grafico.aspx");
                    }
                    
                   



                }
            }
        }
    }
}