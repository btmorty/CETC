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
            txtAddRace.Text = "";
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
            ddlResStatus.DataBind();
            txtAddResidential.Text = "";
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
            ddlPrefLanguage.DataBind();
            txtAddLanguage.Text = "";
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
            ddlReligion.DataBind();
            txtAddReligion.Text = "";
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
            ddlService.DataBind();
            txtAddService.Text = "";
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