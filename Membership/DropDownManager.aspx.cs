using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class SelectClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void RaceView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        ddlRace.DataBind();
    }

    protected void RaceView_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
  
        // Iterate though the values entered by the user and HTML encode 
        // the values. This helps prevent malicious values from being 
        // stored in the data source.
        for (int i = 0; i < e.Values.Count; i++)
        {
            if (e.Values[i] != null)
            {
                e.Values[i] = Server.HtmlEncode(e.Values[i].ToString());
            }
        }
    }

    protected void ResidentialStatusView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        ddlResStatus.DataBind();
    }

    protected void ResidentialStatusView_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {

        // Iterate though the values entered by the user and HTML encode 
        // the values. This helps prevent malicious values from being 
        // stored in the data source.
        for (int i = 0; i < e.Values.Count; i++)
        {
            if (e.Values[i] != null)
            {
                e.Values[i] = Server.HtmlEncode(e.Values[i].ToString());
            }
        }
    }
    protected void PreferredLanguageView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        ddlPrefLanguage.DataBind();
    }

    protected void PreferredLanguageView_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {

        // Iterate though the values entered by the user and HTML encode 
        // the values. This helps prevent malicious values from being 
        // stored in the data source.
        for (int i = 0; i < e.Values.Count; i++)
        {
            if (e.Values[i] != null)
            {
                e.Values[i] = Server.HtmlEncode(e.Values[i].ToString());
            }
        }
    }
    protected void ReligionView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        ddlReligion.DataBind();
    }

    protected void ReligionView_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {

        // Iterate though the values entered by the user and HTML encode 
        // the values. This helps prevent malicious values from being 
        // stored in the data source.
        for (int i = 0; i < e.Values.Count; i++)
        {
            if (e.Values[i] != null)
            {
                e.Values[i] = Server.HtmlEncode(e.Values[i].ToString());
            }
        }
    }

    protected void ServiceView_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        ddlService.DataBind();
    }

    protected void ServiceView_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        // Iterate though the values entered by the user and HTML encode 
        // the values. This helps prevent malicious values from being 
        // stored in the data source.
        for (int i = 0; i < e.Values.Count; i++)
        {
            if (e.Values[i] != null)
            {
                e.Values[i] = Server.HtmlEncode(e.Values[i].ToString());
            }
        }
    }
}