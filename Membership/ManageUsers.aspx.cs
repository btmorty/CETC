using System;
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

        //Get the profile of the user by finding the profile by name
        TextBox oUserName = (TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("UserName");
        ProfileCommon oProfile = Profile.GetProfile(oUserName.Text);

        oProfile.FirstName = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("txtfname")).Text;
        oProfile.LastName = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("txtlname")).Text;
        oProfile.Save();
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

            //retrieve the first name textbox
            Label fname = (Label)e.Row.FindControl("fname");
            Label lname = (Label)e.Row.FindControl("lname");

            //Retrieve the profile as a ProfileCommon
            ProfileCommon oProfile = Profile.GetProfile(username);

            //load the profile values into the text boxes
            fname.Text = oProfile.FirstName.ToString();
            lname.Text = oProfile.LastName.ToString();

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

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteUser")
        {
            LinkButton lnkBtn = (LinkButton)e.CommandSource;    // the button
            GridViewRow myRow = (GridViewRow)lnkBtn.Parent.Parent;  // the row
            GridView myGrid = (GridView)sender; // the gridview
            string username = myGrid.DataKeys[myRow.RowIndex].Value.ToString(); // value of the datakey 
            Membership.DeleteUser(username);
            Response.Redirect("~/Membership/ManageUsers.aspx");
        }
    }
}