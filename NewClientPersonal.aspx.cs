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
    int ContactCounter;
    int ProviderCounter;
    int ServiceCounter;

    string connectionString = WebConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
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
            ServiceCounter = 1;
            Session.Contents.Remove("AddMed");
            Session.Contents.Remove("AddContact");
            Session.Contents.Remove("AddProvider");
            Session.Contents.Remove("AddService");

            //Data Bind State DropDownList Controls
            var items = new List<string>
            {
            "--","AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO",
            "MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY",
            };


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

    protected void btnAddService_Click(object sender, EventArgs e)
    {
        if (btnAddProvider.CommandName == "AddService")
        {
            ServiceCounter++;
            Session["AddService"] = ServiceCounter;
            switch (ServiceCounter)
            {
                case 2:
                    tblSvc2.Visible = true;
                    break;
                case 3:
                    tblSvc3.Visible = true;
                    break;
                case 4:
                    tblSvc4.Visible = true;
                    break;
                case 5:
                    tblSvc5.Visible = true;
                    break;
                case 6:
                    tblSvc6.Visible = true;
                    break;
                case 7:
                    tblSvc7.Visible = true;
                    break;
                default:
                    lblMaxProviders.Text = "Max number of providers reached";
                    lblMaxProviders.Visible = true;
                    break;
            }
        }
    }
}