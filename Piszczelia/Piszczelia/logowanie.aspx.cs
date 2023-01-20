using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logowanie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["piszczelConnectionString1"].ConnectionString);

        SqlCommand select = new SqlCommand("SELECT konto.login, character.nickname, konto.id, character.id FROM konto INNER JOIN character ON konto.id=character.user_id WHERE konto.login = @login AND konto.password = @password;", connection);
        select.Parameters.AddWithValue("@login", LoginTextBox.Text);
        select.Parameters.AddWithValue("@password", PasswordTextBox.Text);



        try
        {
            connection.Open();
            if (select.ExecuteScalar() != null)
            {
                using (var reader = select.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Session["login"] = reader[0];
                        Session["postac"] = reader[1];
                        Session["konto_id"] = reader[2];
                        Session["postac_id"] = reader[3];
                    }
                }
                Response.Redirect("~/thais.aspx");
            }
            connection.Close();
        }
        catch { }
    }
}