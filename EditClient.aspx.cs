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

public partial class EditClient : System.Web.UI.Page
{
    int medCounter;
    int ServiceCounter;
    int docCounter;
    int ContactCounter;
    int ProviderCounter;

    string connectionString = WebConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;


    protected void Page_Load(object sender, EventArgs e)

    {

        //Retrieve ClientID from QueryString and store in session variable
        if (Request.QueryString != null)
        {
            Session["ClientID"] = Request.QueryString["ClientID"];
        }
        //initialize button counter variables
        if (Session["AddContact"] == null)
        {
            ContactCounter = 3;
        }
        else
        {
            ContactCounter = Convert.ToInt32(Session["AddContact"]);
        }
        if (Session["AddProvider"] == null)
        {
            ProviderCounter = 1;
        }
        else
        {
            ProviderCounter = Convert.ToInt32(Session["AddProvider"]);
        }
        if (Session["AddDoc"] == null)
        {
            docCounter = 1;
        }
        else
        {
            docCounter = Convert.ToInt32(Session["AddDoc"]);
        }
        if (Session["AddMed"] == null)
        {
            medCounter = 1;
        }
        else
        {
            medCounter = Convert.ToInt32(Session["AddMed"]);
        }
        if (Session["AddService"] == null)
        {
            ServiceCounter = 1;
        }
        else
        {
            ServiceCounter = Convert.ToInt32(Session["AddService"]);
        }

        //only perform the following the first time the page loads
        if (!IsPostBack)
        {
            //remove any prior existing session variables
            ContactCounter = 0;
            ProviderCounter = 3;
            medCounter = 1;
            docCounter = 0;
            ServiceCounter = 1;
            Session.Contents.Remove("AddMed");
            Session.Contents.Remove("AddDoc");
            Session.Contents.Remove("AddContact");
            Session.Contents.Remove("AddProvider");
            Session.Contents.Remove("AddService");

            //Data Bind State DropDownList Controls
            var items = new List<string>
            {
            "--","AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO",
            "MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY",
            };
            ////Hospital
            //ddStatePreferedHospital.DataSource = items;
            //ddStatePreferedHospital.DataBind();

            ////Medical Providers
            //ddMPState1.DataSource = items;
            //ddMPState1.DataBind();
            //ddMPState2.DataSource = items;
            //ddMPState2.DataBind();
            //ddMPState3.DataSource = items;
            //ddMPState3.DataBind();
            //ddMPState4.DataSource = items;
            //ddMPState4.DataBind();
            //ddMPState5.DataSource = items;
            //ddMPState5.DataBind();
            //ddMPState6.DataSource = items;
            //ddMPState6.DataBind();
            //ddMPState7.DataSource = items;
            //ddMPState7.DataBind();
            //ddMPState8.DataSource = items;
            //ddMPState8.DataBind();
            //ddMPState9.DataSource = items;
            //ddMPState9.DataBind();
            //ddMPState10.DataSource = items;
            //ddMPState10.DataBind();

            ////Client State
            //ddState1.DataSource = items;
            //ddState1.DataBind();

            ////Clients Contacts States
            //ddStateCont1.DataSource = items;
            //ddStateCont1.DataBind();
            //ddStateCont2.DataSource = items;
            //ddStateCont2.DataBind();
            //ddStateCont3.DataSource = items;
            //ddStateCont3.DataBind();
            //ddStateCont4.DataSource = items;
            //ddStateCont4.DataBind();
            //ddStateCont5.DataSource = items;
            //ddStateCont5.DataBind();
            //ddStateCont6.DataSource = items;
            //ddStateCont6.DataBind();
            //ddStateCont7.DataSource = items;
            //ddStateCont7.DataBind();
            //ddStateCont8.DataSource = items;
            //ddStateCont8.DataBind();
            //ddStateCont9.DataSource = items;
            //ddStateCont9.DataBind();
            //ddStateCont10.DataSource = items;
            //ddStateCont10.DataBind();

            ////Provider State (Non-medical)
            //ddProvState1.DataSource = items;
            //ddProvState1.DataBind();
            //ddProvState2.DataSource = items;
            //ddProvState2.DataBind();
            //ddProvState3.DataSource = items;
            //ddProvState3.DataBind();
            //ddProvState4.DataSource = items;
            //ddProvState4.DataBind();
            //ddProvState5.DataSource = items;
            //ddProvState5.DataBind();

            //Set CETC Info
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

    protected void btnClientSave_Click(object sender, EventArgs e)
    {
        ClientListView.DataBind();
    }
}