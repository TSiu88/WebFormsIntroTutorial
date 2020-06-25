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
        // This is one of the lifecycle methods that can be called
        // All lifecycle in order: Page_PreInit, Page_Init, Page_InitComplete, Page_PreLoad, Page_Load, Page_LoadComplete, Page_PreRender, Page_Unload
        protected void Page_Init(object sender, EventArgs e)
        {
            // All controls and control properties initialized, can set control properties like label texts
            txtName.Text = "Set during Init";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            // PostBack = submitting data back to itself, comes after load
            // If populated a ddl here w/o !IsPostBack, then selection would be removed when form submitted since load before postback
            // Page Lifecycle: Page Request > Start > Page Init > Page Load > Validation > PostBack > Rendering > Unload
            // ViewStates makes forms keep state like text input and between postbacks and not lost when form submitted (not cleared), done during rendering phase
            if (Page.IsPostBack)
                ltPostBack.Text = "I'm a postback on a sticky form with data loaded from ViewState.";
            else
                ltPostBack.Text = "Fill out form, data not lost when submitted due to View State. Set during page load.";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ltSubmit.Text = string.Format("Submitted with {0} and {1}", txtName.Text, ddlState.Text);
        }
    }
}