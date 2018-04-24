using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WOLFTEC {
    public partial class Cadastro : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void cadastroBd(object sender, EventArgs e) {
            using (SqlConnection conn = new SqlConnection("Server=tcp:guilherme-faria.database.windows.net,1433;Database=BaseDeDados1;User ID=guigafaria;Password=Abcd@123;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")) {
                conn.Open();

                // Cria um comando para inserir um novo registro à tabela
                using (SqlCommand cmd = new SqlCommand("INSERT INTO usuario(Nome, Email, Telefone, Senha) VALUES(@nome, @email, @telefone, @senha)", conn)) {
                    // Esses valores poderiam vir de qualquer outro lugar, como uma TextBox...
                    cmd.Parameters.AddWithValue("@nome", Nome.Text);
                    cmd.Parameters.AddWithValue("@email", Email.Text);
                    cmd.Parameters.AddWithValue("@telefone", Telefone.Text);
                    cmd.Parameters.AddWithValue("@senha", Senha.Text);

                    cmd.ExecuteNonQuery();

                    Nome.Text = String.Empty;
                    Email.Text = String.Empty;
                    Telefone.Text = String.Empty;
                    Senha.Text = String.Empty;

                    Server.Transfer("Login.aspx");
                 
                    
                }
        
            }

        }
    }
}