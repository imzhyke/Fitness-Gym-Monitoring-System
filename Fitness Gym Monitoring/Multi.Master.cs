using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fitness_Gym_Monitoring
{
    public partial class Multi : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void dashBtnAdmin_Click(object sender, EventArgs e)
        {
            string hex = "#CCCCCC";
            Color gry = System.Drawing.ColorTranslator.FromHtml(hex);

            dashBtnAdmin.BackColor = gry;
            mngEmpBtnAdmin.BackColor = Color.White;
            accStBtnAdmin.BackColor = Color.White;
        }

        protected void mngEmpBtnAdmin_Click(object sender, EventArgs e)
        {
            string hex = "#CCCCCC";
            Color gry = System.Drawing.ColorTranslator.FromHtml(hex);

            dashBtnAdmin.BackColor = Color.White;
            mngEmpBtnAdmin.BackColor = gry;
            accStBtnAdmin.BackColor = Color.White;
        }

        protected void accStBtnAdmin_Click(object sender, EventArgs e)
        {

            dashBtnAdmin.BackColor = Color.White;
            mngEmpBtnAdmin.BackColor = Color.White;
            accStBtnAdmin.BackColor = gry;
        }
    }
}