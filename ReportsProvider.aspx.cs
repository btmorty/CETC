using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SelectClient : System.Web.UI.Page
{
    string nameSelection;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //remove any prior existing session variables
            Session.Contents.Remove("Selection");
        }
    }

    protected void btn_group_Click(object sender, EventArgs e)
    {
        LinkButton B = (LinkButton)sender;
        Session["Selection"] = B.CommandName;
        //B.CommandName --> pass to business tier method
    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
        
    }

    protected void ClientGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            string SchoolID = e.CommandArgument.ToString();
            Response.Redirect("~/EditClient.aspx?ClientID=" + e.CommandArgument);
        }
    }
}