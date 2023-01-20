using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null) ZalogowanyLabel.Text = Session["login"].ToString();
        else Response.Redirect("~/logowanie.aspx");
        PostacLabel.Text = Session["postac"].ToString();





    }





    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(5000);
    }


    protected void WylogujButton_Click(object sender, EventArgs e)
    {
        Session["login"] = null;
        Session["postac"] = null;
        Response.Redirect("~/logowanie.aspx");
    }



    protected void RedirectToThais(object sender, EventArgs e)
    {
        Response.Redirect("~/thais.aspx");
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Update();
    }

    protected void Level_Increase(object sender, EventArgs e)
    {

    }
}
