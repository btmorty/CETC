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
    int counter;
    string connectionString = WebConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (ViewState["Counter"] == null)
        {
            counter = 2;
        }
        else
        {
            counter = (int)ViewState["Counter"] + 1;
        }
        ViewState["Counter"] = counter;

        if (!IsPostBack)
        {
            counter = 0;

            var items = new List<string>
            {
            "--Select State--","AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO",
            "MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY",
            };
            DropDownListState1.DataSource = items;
            DropDownListState2.DataSource = items;
            DropDownListState1.DataBind();
            DropDownListState2.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("ClientImages/") + imageUpload.PostedFile.FileName;
        imageUpload.SaveAs(path);
        imgProfile.ImageUrl = "ClientImages/" + imageUpload.PostedFile.FileName;
    }

    protected void btnAddMed_Click(object sender, EventArgs e)
    {

        switch (counter)
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
}