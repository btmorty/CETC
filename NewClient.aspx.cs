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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("ClientImages/") + imageUpload.PostedFile.FileName;
        imageUpload.SaveAs(path);
        imgProfile.ImageUrl = "ClientImages/" + imageUpload.PostedFile.FileName;
    }

    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        int added = ClientAccess.InsertClient(txtSSN.Text, txtDSPD.Text, imageUpload.PostedFile.FileName, DropDownListStatus.SelectedItem.ToString(), DropDownSex.SelectedItem.ToString(), DropDownListRace.SelectedItem.ToString(), DropDownListResStatus.SelectedItem.ToString(), DropDownListLanguage.SelectedItem.ToString(), DropDownListReligion.SelectedItem.ToString(), txtFname.Text, txtLname.Text,txtEmail.Text, txtPhone.Text, txtComm.Text, txtSSA.Text, txtSSI.Text, Convert.ToDateTime(lblDate.Text));

        //if the insert succeeded, refersh the author list
        if (added > 0)
        {
            lblResults.Text = "Client Added Successfully";
        }
    }
}