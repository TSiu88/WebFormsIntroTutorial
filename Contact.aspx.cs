using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsIntroTutorial
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Can access element made into a server control by the id
            divMessage.Attributes.Add("style", "color:blue;");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Takes info from form textbox and ddl and adds it to literal message
            // If form left blank and button clicked, can make it not show message with Validation
            // Also can have a Page.IsValid check since if user disables javascript it's not guaranteed page is valid, this is a server side validation check
            if(Page.IsValid)
            {
                string message = string.Format("Your name is {0}, email is {1}, age is {2} and your color is {3}, with price as ${4}", txtName.Text, txtEmail.Text, txtAge.Text, ddlColor.SelectedValue, txtPrice.Text);
                ltMessage.Text = message;
            }
            else
            {
                valSummaryForm.Visible = true;
            }
            
        }
    }
}