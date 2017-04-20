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

    string connectionString = WebConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        //only perform the following the first time the page loads
        if (!IsPostBack)
        {

            //Data Bind State DropDownList Controls
            var items = new List<string>
            {
            "--","AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO",
            "MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY",
            };


            //Client State
            ddState1.DataSource = items;
            ddState1.DataBind();

            //Set Current Date
            lblDate.Text = System.DateTime.Now.ToShortDateString();
            lblDate.ForeColor = System.Drawing.Color.Blue;
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

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int added = ClientAccess.InsertClient(DropDownListStatus.SelectedItem.ToString(), txtFname.Text, txtLname.Text, DateTime.Parse(txtDOB.Text), Int32.Parse(txtAge.Text), txtAddress.Text, txtCity.Text, ddState1.SelectedItem.ToString(), txtZip.Text, txtEmail.Text, txtPhone.Text, DropDownSex.SelectedItem.ToString(), DropDownListRace.SelectedItem.ToString(), DropDownListResStatus.SelectedItem.ToString(), DropDownListLanguage.SelectedItem.ToString(), DropDownListReligion.SelectedItem.ToString(), Int32.Parse(txtSSN.Text), txtStaffRatio.Text, Int32.Parse(txtDSPD.Text), Int32.Parse(txtSSI.Text), Int32.Parse(txtSSA.Text), txtComm.Text, txtDiagnosis.Text, imageUpload.FileName);

        //if the insert succeeded, refersh the author list
        if (added > 0)
        {
            lblResults.Text = "Client Added Successfully";
        }
    }
}