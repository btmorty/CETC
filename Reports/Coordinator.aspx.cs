using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;
using System.Configuration;

public partial class Coordinator : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ClientGridView.DataBind();
            //Log User Activity
            base.LogActivity("Viewed Coordinator Report", true);
        }
    }
    //Redirect to Client Page
    protected void ClientGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Response.Redirect("~/EditClient.aspx?ClientID=" + e.CommandArgument);
        }
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        //required to avoid the run time error "  
        //Control 'GridView1' of type 'Grid View' must be placed inside a form tag with runat=server."  
    }
    //Export to Excel
    protected void ExportToExcel(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "CoordinatorReport" + DateTime.Now + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        ClientGridView.GridLines = GridLines.Both;
        ClientGridView.HeaderStyle.Font.Bold = true;
        ClientGridView.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();
        //Log User Activity
        base.LogActivity("Exported Coordinator Report", true);
    }
}