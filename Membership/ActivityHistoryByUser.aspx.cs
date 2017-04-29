using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;

public partial class ActivityHistoryByUser : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            // Populate the ViewUser DDL
            ViewUser.DataSource = Membership.GetAllUsers();
            ViewUser.DataBind();

            // Set the ViewUser DDL to the value passed through the querystring
            if (!string.IsNullOrEmpty(Request.QueryString["UserID"]))
            {
                ListItem li = ViewUser.Items.FindByValue(Request.QueryString["UserID"]);
                if (li != null)
                    li.Selected = true;

                string viewingUserName = ViewUser.SelectedItem.Text;
                UserToView.Text = viewingUserName;
            }
            else
            {
                RefreshPageWithUpdatedUserIDQueryStringValue();
            }
        }
    }

    protected void ViewUser_SelectedIndexChanged(object sender, EventArgs e)
    {
        RefreshPageWithUpdatedUserIDQueryStringValue();
    }

    private void RefreshPageWithUpdatedUserIDQueryStringValue()
    {
        Response.Redirect("ActivityHistoryByUser.aspx?UserID=" + Server.UrlEncode(ViewUser.SelectedValue));
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        //required to avoid the run time error "  
        //Control 'GridView1' of type 'Grid View' must be placed inside a form tag with runat=server."  
    }
    protected void ExportToExcel(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "UserActivityLog" + DateTime.Now + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        gvActivityLog.GridLines = GridLines.Both;
        gvActivityLog.HeaderStyle.Font.Bold = true;
        gvActivityLog.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
        //Log User Activity
        base.LogActivity("Exported User Activity Log", true);
    }

}
