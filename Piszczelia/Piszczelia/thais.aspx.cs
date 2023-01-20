using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class thais : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TrainerButton_Click(Object sender, EventArgs e)
    {
        Response.Redirect("~/Trainer.aspx");
    }

    protected void GoToEqShopThais(Object sender, EventArgs e)
    {
        Response.Redirect("~/EqShopThais.aspx");
    }

    protected void GoToManaShopThais(Object sender, EventArgs e)
    {
        Response.Redirect("~/ManaShop.aspx");
    }


    protected void GoToCyclops(Object sender, EventArgs e)
    {
        Response.Redirect("~/Cyclops.aspx");
    }
}