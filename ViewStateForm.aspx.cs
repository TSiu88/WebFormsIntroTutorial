using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsIntroTutorial
{
    public partial class ViewStateForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // PostBack = submitting data back to itself
            // ViewStates makes forms keep state like text input and between postbacks and not lost when form submitted (not cleared)
            if (Page.IsPostBack)
                ltPostBack.Text = "I'm a postback on a sticky form with data loaded from ViewState.";
            else
                ltPostBack.Text = "Fill out form, data not lost when submitted due to View State.";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}