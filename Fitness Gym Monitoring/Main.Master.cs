using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fitness_Gym_Monitoring
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logIn_Click(object sender, EventArgs e)
        {
            logIn.Visible = false;
            Response.Redirect("LogIn.aspx");
        }
    }
}