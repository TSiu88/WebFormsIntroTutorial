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
    }
}