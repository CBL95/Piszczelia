using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Trainer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Atak(object sender, EventArgs e)
    {
        ProgressBar1.Value -= 5; // tu powinno byc odejmowane hp za pomoca funkcji obliczajacej atak na podstawie broni i statow

    }
}