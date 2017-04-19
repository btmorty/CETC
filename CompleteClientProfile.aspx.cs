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

public partial class NewClientPersonal : System.Web.UI.Page
{
    int medCounter;
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

        //only perform the following the first time the page loads
        if (!IsPostBack)
        {
            //remove any prior existing session variables
            ContactCounter = 0;
            ProviderCounter = 3;
            medCounter = 0;
            docCounter = 0;
            Session.Contents.Remove("AddMed");
            Session.Contents.Remove("AddDoc");
            Session.Contents.Remove("AddContact");
            Session.Contents.Remove("AddProvider");

            //Data Bind State DropDownList Controls
            var items = new List<string>
            {
            "--","AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO",
            "MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY",
            };
            //Hospital
            ddStatePreferedHospital.DataSource = items;
            ddStatePreferedHospital.DataBind();

            //Medical Providers
            ddMPState1.DataSource = items;
            ddMPState1.DataBind();
            ddMPState2.DataSource = items;
            ddMPState2.DataBind();
            ddMPState3.DataSource = items;
            ddMPState3.DataBind();
            ddMPState4.DataSource = items;
            ddMPState4.DataBind();
            ddMPState5.DataSource = items;
            ddMPState5.DataBind();
            ddMPState6.DataSource = items;
            ddMPState6.DataBind();
            ddMPState7.DataSource = items;
            ddMPState7.DataBind();
            ddMPState8.DataSource = items;
            ddMPState8.DataBind();
            ddMPState9.DataSource = items;
            ddMPState9.DataBind();
            ddMPState10.DataSource = items;
            ddMPState10.DataBind();

            //Client State
            ddState1.DataSource = items;
            ddState1.DataBind();

            //Clients Contacts States
            ddStateCont1.DataSource = items;
            ddStateCont1.DataBind();
            ddStateCont2.DataSource = items;
            ddStateCont2.DataBind();
            ddStateCont3.DataSource = items;
            ddStateCont3.DataBind();
            ddStateCont4.DataSource = items;
            ddStateCont4.DataBind();
            ddStateCont5.DataSource = items;
            ddStateCont5.DataBind();
            ddStateCont6.DataSource = items;
            ddStateCont6.DataBind();
            ddStateCont7.DataSource = items;
            ddStateCont7.DataBind();
            ddStateCont8.DataSource = items;
            ddStateCont8.DataBind();
            ddStateCont9.DataSource = items;
            ddStateCont9.DataBind();
            ddStateCont10.DataSource = items;
            ddStateCont10.DataBind();

            //Provider State (Non-medical)
            ddProvState1.DataSource = items;
            ddProvState1.DataBind();
            ddProvState2.DataSource = items;
            ddProvState2.DataBind();
            ddProvState3.DataSource = items;
            ddProvState3.DataBind();
            ddProvState4.DataSource = items;
            ddProvState4.DataBind();
            ddProvState5.DataSource = items;
            ddProvState5.DataBind();

            //Set CETC Info
            lblCETCDirector.Text = "Director: Kae Lynn Beecher";
            lblCETCAddress.Text = "Address: 275 West 400 South Logan, UT 84321";
            lblCETCPhone.Text = "Phone: (435) 752-7952";
            lblCETCFax.Text = "Fax: 435-752-7958";

            //Set Current Date
            lblDate.Text = System.DateTime.Now.ToShortDateString();
            lblDate.ForeColor = System.Drawing.Color.Blue;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("ClientImages/") + imageUpload.PostedFile.FileName;
        imageUpload.SaveAs(path);
        imgProfile.ImageUrl = "ClientImages/" + imageUpload.PostedFile.FileName;
    }

    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        //set cmdname so that this event only gets evoked when the update button is clicked and not any other btnClick events. Maybe separate each table update into separate methods)
        //call frist inset method and return the ID that is generate so that we can provide that ID to all subsequent insert methods.

        SqlConnection con = new SqlConnection(connectionString);
        string insertAddress = "INSERT INTO [Address] ([Address], [City], [State], [Zip_Code], [PO_Box]) VALUES (@Address, @City, @State, @Zip_Code, @PO_Box)";

        SqlCommand cmd = new SqlCommand(insertAddress, con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("au_id ", txtAddress.Text);

        //add the parameters
        cmd.Parameters.AddWithValue("@Address", txtAddress.Text);


        //try to open the database and execute the update.
        try
        {
            con.Open();
            cmd.ExecuteNonQuery(); //use for insert, update, and delete commands
            lblResults.Visible = true;
            lblResults.Text = "Record created.";
        }
        catch (Exception err)
        {
            lblResults.Text = "Error creating record.";
            lblResults.Text += err.Message;
        }
        finally
        {
            con.Close();
        }
    }

    protected void btnAddProvider_Click(object sender, EventArgs e)
    {
        if (btnAddProvider.CommandName == "AddProvider")
        {
            ProviderCounter++;
            Session["AddProvider"] = ProviderCounter;
            switch (ProviderCounter)
            {
                case 2:
                    Provider2.Visible = true;
                    Provider2hr.Visible = true;
                    break;
                case 3:
                    Provider3.Visible = true;
                    Provider3hr.Visible = true;
                    break;
                case 4:
                    Provider4.Visible = true;
                    Provider4hr.Visible = true;
                    break;
                case 5:
                    Provider5.Visible = true;
                    Provider5hr.Visible = true;
                    break;
                default:
                    lblMaxProviders.Text = "Max number of providers reached";
                    lblMaxProviders.Visible = true;
                    break;
            }
        }
    }
        protected void btnAddDoc_Click(object sender, EventArgs e)
    {


        if (btnAddDoc.CommandName == "AddDoc")
        {
            docCounter++;
            Session["AddDoc"] = docCounter;
            switch (docCounter)
            {
                case 2:
                    hrDoctor2.Visible = true;
                    tbDoctor2.Visible = true;
                    break;
                case 3:
                    hrDoctor3.Visible = true;
                    tbDoctor3.Visible = true;
                    break;
                case 4:
                    hrDoctor4.Visible = true;
                    tbDoctor4.Visible = true;
                    break;
                case 5:
                    hrDoctor5.Visible = true;
                    tbDoctor5.Visible = true;
                    break;
                case 6:
                    hrDoctor6.Visible = true;
                    tbDoctor6.Visible = true;
                    break;
                case 7:
                    hrDoctor7.Visible = true;
                    tbDoctor7.Visible = true;
                    break;
                case 8:
                    hrDoctor8.Visible = true;
                    tbDoctor8.Visible = true;
                    break;
                case 9:
                    hrDoctor9.Visible = true;
                    tbDoctor9.Visible = true;
                    break;
                case 10:
                    hrDoctor10.Visible = true;
                    tbDoctor10.Visible = true;
                    break;
                default:
                    lblMaxDoc.Text = "Max number of medical providers reached";
                    lblMaxDoc.Visible = true;
                    break;
            }
        }
    }


    protected void btnAddContact_Click(object sender, EventArgs e)
    {
        if (btnAddContact.CommandName == "AddContact")
        {
            ContactCounter++;
            Session["AddContact"] = ContactCounter;
            switch (ContactCounter)
            {
                case 4:
                    hrContact4.Visible = true;
                    tbContact4.Visible = true;
                    break;
                case 5:
                    hrContact5.Visible = true;
                    tbContact5.Visible = true;
                    break;
                case 6:
                    hrContact6.Visible = true;
                    tbContact6.Visible = true;
                    break;
                case 7:
                    hrContact7.Visible = true;
                    tbContact7.Visible = true;
                    break;
                case 8:
                    hrContact8.Visible = true;
                    tbContact8.Visible = true;
                    break;
                case 9:
                    hrContact9.Visible = true;
                    tbContact9.Visible = true;
                    break;
                case 10:
                    hrContact10.Visible = true;
                    tbContact10.Visible = true;
                    break;
                default:
                    lblMaxContacts.Text = "Max number of contacts reached";
                    lblMaxContacts.Visible = true;
                    break;
            }
        }
    }
    protected void btnAddMed_Click(object sender, EventArgs e)
    {
        if (btnAddMed.CommandName == "AddMed")
        {
            medCounter++;
            Session["AddMed"] = medCounter;
            switch (medCounter)
            {
                case 2:
                    med2.Visible = true;
                    break;
                case 3:
                    med3.Visible = true;
                    break;
                case 4:
                    med4.Visible = true;
                    break;
                case 5:
                    med5.Visible = true;
                    break;
                case 6:
                    med6.Visible = true;
                    break;
                case 7:
                    med7.Visible = true;
                    break;
                case 8:
                    med8.Visible = true;
                    break;
                case 9:
                    med9.Visible = true;
                    break;
                case 10:
                    med10.Visible = true;
                    break;
                case 11:
                    med11.Visible = true;
                    break;
                case 12:
                    med12.Visible = true;
                    break;
                case 13:
                    med13.Visible = true;
                    break;
                case 14:
                    med14.Visible = true;
                    break;
                case 15:
                    med15.Visible = true;
                    break;
                default:
                    lblMedAddError.Text = "Max number of medications reached";
                    lblMedAddError.Visible = true;
                    break;
            }
        }

    }
    protected void btnPersonal_Click(object sender, EventArgs e)
    {
        pnlPersonal.Visible = true;
    }

    protected void btnHealth_Click(object sender, EventArgs e)
    {
        pnlHealth.Visible = true;
    }
}