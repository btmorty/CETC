using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Membership_CurrentUserInfo : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //load user's profile variabls only the first time the page loads not in response to post back
        if (!IsPostBack)
        {
            LoadProfile();
        }
    }

    private void LoadProfile()
    {
        //load the profile values into the text boxes
        txtFirstName.Text = Profile.FirstName;
        txtLastName.Text = Profile.LastName;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SaveProfile();
        UpdateConfirm.Text = "Profile Updated!";
    }

    private void SaveProfile()
    {
        //Save the values from the text boxes into the profile
        Profile.FirstName = txtFirstName.Text;
        Profile.LastName = txtLastName.Text;
    }
}