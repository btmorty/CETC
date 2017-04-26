﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Membership_ManageUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //retrieve list of all users of the application using the membership class
        GridView1.DataSource = Membership.GetAllUsers();
        //bind the gridview only the first time the page loads
        if (!IsPostBack)
        {
            GridView1.DataBind();
        }
    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {
        string username = CreateUserWizard1.UserName;
        Roles.AddUserToRole(username, "User");
        GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        //check each membership user to see if they are an admin, and check the box in the grid view

        //make sure we are looking at the datarow, not a header rows
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //retrieve the user name
            string username = DataBinder.Eval(e.Row.DataItem, "UserName").ToString();

            //retrieve the check box
            CheckBox cbx = (CheckBox)e.Row.FindControl("CheckBox1");

            //check to see if the user is an admin, and check the box
            if (Roles.IsUserInRole(username, "Admin"))
            {
                cbx.Checked = true;
            }
            else
            {
                cbx.Checked = false;
            }

            //highlight the row containing the current user.
            if (username == Profile.UserName)
            {
                e.Row.BackColor = System.Drawing.Color.Yellow;
            }

        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //Set the EditIndex of the GridView and rebind
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataBind();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //Reset the editindex
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //retrieve the username of the user being updated fromt eh DataKeys collection
        string username = GridView1.DataKeys[e.RowIndex].Value.ToString();

        //retrieve the checkbox
        CheckBox cbx = (CheckBox)GridView1.Rows[e.RowIndex].FindControl("CheckBox1");

        //add or remove user from the admin role
        if (cbx.Checked && !Roles.IsUserInRole(username, "Admin"))
        {
            //add the user tot he admin role
            Roles.AddUserToRole(username, "Admin");
        }
        else if (!cbx.Checked && Roles.IsUserInRole(username, "Admin"))
        {
            //remove the user from the admin role
            Roles.RemoveUserFromRole(username, "Admin");
        }

        //reset the rowindex to view mode
        GridView1.EditIndex = -1;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Make the panel visible
        lblProfileHeader.Visible = true;
        Panel1.Visible = true;

        //Retrieve the profile for the user that was selected
        string username = GridView1.SelectedDataKey.Value.ToString();

        //Retrieve the profile as a ProfileCommon
        ProfileCommon prof = Profile.GetProfile(username);

        //load the profile values into the text boxes
        txtFirstName.Text = prof.FirstName;
        txtLastName.Text = prof.LastName;
        if (Profile.BirthDate != DateTime.MinValue)
        {
            txtBirthDate.Text = prof.BirthDate.ToLongDateString();
        }
        txtStreet.Text = prof.Address.Street;
        txtCity.Text = prof.Address.City;
        txtState.Text = prof.Address.State;
        txtZip.Text = prof.Address.Zip;
        txtCountry.Text = prof.Address.Country;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SaveProfile();
        UpdateConfirm.Text = "Profile Updated!";
    }

    private void SaveProfile()
    {
        //Retrieve the profile for the user that was selected
        string username = GridView1.SelectedDataKey.Value.ToString();

        //Retrieve the profile as a ProfileCommon
        ProfileCommon prof = Profile.GetProfile(username);

        //Save the values from the text boxes into the profile
        prof.FirstName = txtFirstName.Text;
        prof.LastName = txtLastName.Text;
        prof.BirthDate = Convert.ToDateTime(txtBirthDate.Text);
        prof.Address.Street = txtStreet.Text;
        prof.Address.City = txtCity.Text;
        prof.Address.State = txtState.Text;
        prof.Address.Zip = txtZip.Text;
        prof.Address.Country = txtCountry.Text;
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = Convert.ToInt32(e.RowIndex);
        GridView1.DeleteRow(e.RowIndex);
        GridView1.DataBind();
    }
}