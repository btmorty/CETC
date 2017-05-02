using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Membership_CurrentUserInfo : System.Web.UI.UserControl
{
    MembershipUser currentUser;
    protected void Page_Load(object sender, EventArgs e)
    {
        //load user's profile variabls only the first time the page loads not in response to post back
        if (!IsPostBack)
        {
            currentUser = Membership.GetUser();
            LoadProfile();
        }
    }

    private void LoadProfile()
    {
        //load the profile values into the text boxes
        txtFirstName.Text = Profile.FirstName;
        txtLastName.Text = Profile.LastName;
        txtEmail.Text = Membership.GetUser().Email.ToString();
    }
    //Save Profile information and report
    protected void Button1_Click(object sender, EventArgs e)
    {
        SaveProfile();
        UpdateConfirm.Text = "Profile Updated!";
    }
    //Save Profiel Method
    private void SaveProfile()
    {
        //Save the values from the text boxes into the profile
        Profile.FirstName = txtFirstName.Text;
        Profile.LastName = txtLastName.Text;
        Membership.GetUser().Email = txtEmail.Text;
        Membership.UpdateUser(Membership.GetUser());
    }
}