using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

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

    protected void btnAddRace_Click(object sender, EventArgs e)
    {
        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        string strQuery = "INSERT INTO [DD_Race] ([Race]) VALUES (@Race)";
        SqlCommand cmd = new SqlCommand(strQuery);
        cmd.Parameters.AddWithValue("@Race", txtAddRace.Text.ToString());
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            ddlRace.DataBind();
        }

        catch (Exception ex)
        {
            errorStatus.Text = "Update Failed" + ex.Message;
            errorStatus.Visible = true;
        }

        finally
        {
            con.Close();
            con.Dispose();
        }
    }

    protected void btnAddResidental_Click(object sender, EventArgs e)
    {
        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        string strQuery = "INSERT INTO [DD_Residential_Status] ([Residential_Status]) VALUES (@Residential_Status)";
        SqlCommand cmd = new SqlCommand(strQuery);
        cmd.Parameters.AddWithValue("@Residential_Status", txtAddResidential.Text.ToString());
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            ddlRace.DataBind();
        }

        catch (Exception ex)
        {
            errorStatus.Text = "Update Failed" + ex.Message;
            errorStatus.Visible = true;
        }

        finally
        {
            con.Close();
            con.Dispose();
        }
    }

    protected void btnAddLanguage_Click(object sender, EventArgs e)
    {
        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        string strQuery = "INSERT INTO [DD_Preferred_Language] ([Preferred_Language]) VALUES (@Preferred_Language)";
        SqlCommand cmd = new SqlCommand(strQuery);
        cmd.Parameters.AddWithValue("@Preferred_Language", txtAddLanguage.Text.ToString());
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            ddlRace.DataBind();
        }

        catch (Exception ex)
        {
            errorStatus.Text = "Update Failed" + ex.Message;
            errorStatus.Visible = true;
        }

        finally
        {
            con.Close();
            con.Dispose();
        }
    }

    protected void btnAddReligion_Click(object sender, EventArgs e)
    {
        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        string strQuery = "INSERT INTO [DD_Religion] ([Religion]) VALUES (@Religion)";
        SqlCommand cmd = new SqlCommand(strQuery);
        cmd.Parameters.AddWithValue("@Religion", txtAddReligion.Text.ToString());
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            ddlRace.DataBind();
        }

        catch (Exception ex)
        {
            errorStatus.Text = "Update Failed" + ex.Message;
            errorStatus.Visible = true;
        }

        finally
        {
            con.Close();
            con.Dispose();
        }
    }

    protected void btnAddService_Click(object sender, EventArgs e)
    {
        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
        string strQuery = "INSERT INTO [DD_Service] ([Service]) VALUES (@Service)";
        SqlCommand cmd = new SqlCommand(strQuery);
        cmd.Parameters.AddWithValue("@Service", txtAddService.Text.ToString());
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            ddlRace.DataBind();
        }

        catch (Exception ex)
        {
            errorStatus.Text = "Update Failed" + ex.Message;
            errorStatus.Visible = true;
        }

        finally
        {
            con.Close();
            con.Dispose();
        }
    }
}