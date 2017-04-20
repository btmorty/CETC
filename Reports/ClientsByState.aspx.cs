using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SelectClient : System.Web.UI.Page
{
    string nameSelection;

    protected void Page_Load(object sender, EventArgs e)
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
        
    }


    protected void ClientGridView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            string SchoolID = e.CommandArgument.ToString();
            Response.Redirect("~/ReportsHome.aspx?ClientID=" + e.CommandArgument);
        }
    }

    protected void ddState1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}