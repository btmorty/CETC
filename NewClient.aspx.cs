using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewClient : System.Web.UI.Page
{
    //this can't be static because it will never loose its value for all users and return visits to site but it demonstrates the concept.
    static int btnClickCount =2;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("ClientImages/") + imageUpload.PostedFile.FileName;
        imageUpload.SaveAs(path);
        imgProfile.ImageUrl = "ClientImages/" + imageUpload.PostedFile.FileName;
    }

    protected void btnAddMed_Click(object sender, EventArgs e)
    {
        switch (btnClickCount)
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
            default:
                lblMedAddError.Text = "Max number of medications reached";
                lblMedAddError.Visible = true;
                break;
        }

        btnClickCount = btnClickCount + 1;

    }
}