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
        //Retrieve ClientID from QueryString, check validity, store as session variable
        if (Request.QueryString["ClientID"] != null)
        {
            int num;
            if (!int.TryParse(Request.QueryString["ClientID"], out num))
            {
                throw new HttpException(404, "Query String Value Contained invalid Characters");
            }
            else
            {
                Session["ClientID"] = Request.QueryString["ClientID"];
            }
            //Retrive Profile picture from DB

            string queryString = "SELECT [PhotoID]  FROM Client WHERE ClientID = @ClientID";
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                command.Parameters.AddWithValue("@ClientID", Session["ClientID"].ToString());
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                try
                {
                    while (reader.Read())
                    {
                        imgProfile.ImageUrl = "ClientImages/" + reader["PhotoID"];
                    }
                }
                finally
                {
                    reader.Close();
                }
            }
        }

        //only perform the following the first time the page loads
        if (!IsPostBack)
        {
            lblCETCDirector.Text = "Director: Kae Lynn Beecher";
            lblCETCAddress.Text = "Address: 275 West 400 South Logan, UT 84321";
            lblCETCPhone.Text = "Phone: (435) 752-7952";
            lblCETCFax.Text = "Fax: 435-752-7958";
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

                        //add to database
                        String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;
                        SqlConnection con = new SqlConnection(strConnString);
                        string strQuery = "UPDATE dbo.Client SET PhotoID = @PhotoID";
                        SqlCommand cmd = new SqlCommand(strQuery);
                        cmd.Parameters.AddWithValue("@PhotoID", imageUpload.PostedFile.FileName.ToString());
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        try
                        {
                            con.Open();
                            cmd.ExecuteNonQuery();
                        }

                        catch (Exception ex)
                        {
                            lblUploadStatus.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                        }

                        finally
                        {
                            con.Close();
                            con.Dispose();
                        }

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

    protected void ListView_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName != "Cancel")
        {
            String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            string strQuery = "UPDATE dbo.Client SET DateModified = @DateModified, ModifiedBy = @ModifiedBy WHERE ClientID = " + Request.QueryString["ClientID"];
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.AddWithValue("@DateModified", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@ModifiedBy", Membership.GetUser(User.Identity.Name).ToString());
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                ClientFormView.DataBind();
            }

            catch (Exception ex)
            {
                errorStatus.Text = "Update Failed" + ex.Message;
            }

            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
    protected void FormView_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName != "Cancel")
        {
            String strConnString = System.Configuration.ConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;
            SqlConnection con = new SqlConnection(strConnString);
            string strQuery = "UPDATE dbo.Client SET DateModified = @DateModified, ModifiedBy = @ModifiedBy WHERE ClientID = " + Request.QueryString["ClientID"];
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.AddWithValue("@DateModified", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@ModifiedBy", Membership.GetUser(User.Identity.Name).ToString());
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                ClientFormView.DataBind();
            }

            catch (Exception ex)
            {
                errorStatus.Text = "Update Failed" + ex.Message;
            }

            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
}