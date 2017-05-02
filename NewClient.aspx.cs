using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewClient : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    //Set Form view to default to insert mode
    protected void ClientFormView_DataBound(object sender, EventArgs e)
    {
        ClientFormView.ChangeMode(FormViewMode.Insert);
    }
    //Log activity and redirect page to edit page upon successfull INSERT
    protected void ClientSqlDataSource_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {

        if (e.Exception == null)
        {
            //Log User Activity
            base.LogActivity("Created New ClientID " + e.Command.Parameters["@NewClientID"].Value.ToString(), true);
            Response.Redirect("~/EditClient.aspx?ClientID=" + e.Command.Parameters["@NewClientID"].Value.ToString());
        }
        else
        {
            lblResults.Text = "Unable to add Client.";
            e.ExceptionHandled = true;
        }
    }
}