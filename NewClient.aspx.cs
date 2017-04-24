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

public partial class NewClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        lblUploadStatus.Visible = true;

        if (imageUpload.HasFile)
        {
            try
            {
                if (imageUpload.PostedFile.ContentType.Contains("image"))
                {
                    if (imageUpload.PostedFile.ContentLength < 3024000)
                    {
                        string path = Server.MapPath("ClientImages/") + imageUpload.PostedFile.FileName;
                        imageUpload.SaveAs(path);
                        imgProfile.ImageUrl = "ClientImages/" + imageUpload.PostedFile.FileName;
                        lblUploadStatus.Text = "Upload status: File uploaded!";
                    }
                    else
                        lblUploadStatus.Text = "Upload status: The file has to be less than 3 MB!";
                }
                else
                    lblUploadStatus.Text = "Upload status: Only image files are accepted!";
            }
            catch (Exception ex)
            {
                lblUploadStatus.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
            }
        }
    }

    protected void ClientFormView_DataBound(object sender, EventArgs e)
    {
        ClientFormView.ChangeMode(FormViewMode.Insert);
    }

    protected void ClientSqlDataSource_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception == null)
        {
            Response.Redirect("~/EditClient.aspx?ClientID=" + (string)e.Command.Parameters["@ClientID"].Value);
        }
        else
        {
            lblResults.Text = "Unable to add Client.";
            e.ExceptionHandled = true;
        }
    }
}