﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewClientHealth : System.Web.UI.Page
{
    int medCounter;
    int docCounter;
    string connectionString = WebConfigurationManager.ConnectionStrings["CETC_DB"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AddMed"] == null)
        {
            medCounter = 1;
        }
        else
        {
            medCounter = Convert.ToInt32(Session["AddMed"]);
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
            medCounter = 0;
            docCounter = 0;
            Session.Contents.Remove("AddMed");
            Session.Contents.Remove("AddDoc");

            //Data Bind State DropDownList Controls
            var items = new List<string>
            {
            "--","AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO",
            "MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI","SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY",
            };
            DropDownListState6.DataSource = items;
            DropDownListState6.DataBind();
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

    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        ////set cmdname so that this event only gets evoked when the update button is clicked and not any other btnClick events. Maybe separate each table update into separate methods)
        ////call frist inset method and return the ID that is generate so that we can provide that ID to all subsequent insert methods.

        //SqlConnection con = new SqlConnection(connectionString);
        //string insertAddress = "INSERT INTO [Address] ([Address], [City], [State], [Zip_Code], [PO_Box]) VALUES (@Address, @City, @State, @Zip_Code, @PO_Box)";

        //SqlCommand cmd = new SqlCommand(insertAddress, con);
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.Parameters.AddWithValue("au_id ", txtAddress.Text);

        ////add the parameters
        //cmd.Parameters.AddWithValue("@Address", txtAddress.Text);


        //try to open the database and execute the update.
        //try
        //{
        //    con.Open();
        //    cmd.ExecuteNonQuery(); //use for insert, update, and delete commands
        //    lblResults.Visible = true;
        //    lblResults.Text = "Record created.";
        //}
        //catch (Exception err)
        //{
        //    lblResults.Text = "Error creating record.";
        //    lblResults.Text += err.Message;
        //}
        //finally
        //{
        //    con.Close();
        //}
    }

}