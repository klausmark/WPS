using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Opgave2_1
{
    public partial class AddEditWine : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Get("WineNo") != null)
                DetailsView1.DefaultMode = DetailsViewMode.Edit;
        }
    }
}