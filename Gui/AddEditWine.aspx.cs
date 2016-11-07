using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gui
{
    public partial class AddEditWine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DetailsView1.DefaultMode = Request.Params.Get("Id") != null ? DetailsViewMode.Edit : DetailsViewMode.Insert;
        }
    }
}