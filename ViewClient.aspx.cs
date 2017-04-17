using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void All_Click(object sender, EventArgs e)
    {
        Button B = (Button)sender;
        B.CommandName //pass to business tier method
    }
}