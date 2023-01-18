using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fitness_Gym_Monitoring
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
  
        }

        protected void logInBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_Dashboard.aspx");
        }
    }
}