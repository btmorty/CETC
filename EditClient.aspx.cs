using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditClient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {
        if (!IsPostBack)
        {
            MembershipUser CurrentUser = Membership.GetUser(User.Identity.Name);
            Session["CurrentUser"] = CurrentUser.ToString();
        }

        //Retrieve ClientID from QueryString and store in session variable
        if (Request.QueryString != null)
        {
            Session["ClientID"] = Request.QueryString["ClientID"];
        }

        //only perform the following the first time the page loads
        if (!IsPostBack)
        {
            lblCETCDirector.Text = "Director: Kae Lynn Beecher";
            lblCETCAddress.Text = "Address: 275 West 400 South Logan, UT 84321";
            lblCETCPhone.Text = "Phone: (435) 752-7952";
            lblCETCFax.Text = "Fax: 435-752-7958";

            ////Set Current Date
            //lblDate.Text = System.DateTime.Now.ToShortDateString();
            //lblDate.ForeColor = System.Drawing.Color.Blue;
        }
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

    protected void EvacFormView_DataBound(object sender, EventArgs e)
    {
        if (EvacFormView.PageCount == 0)
        {
            EvacFormView.ChangeMode(FormViewMode.Insert);
        }
    }
    protected void HealthProfileFormView_DataBound(object sender, EventArgs e)
    {
        if (HelthProfileFormView.PageCount == 0)
        {
            HelthProfileFormView.ChangeMode(FormViewMode.Insert);
        }
    }
    protected void InsuranceFormView_DataBound(object sender, EventArgs e)
    {
        if (InsuranceFormView.PageCount == 0)
        {
            InsuranceFormView.ChangeMode(FormViewMode.Insert);
        }
    }
}


