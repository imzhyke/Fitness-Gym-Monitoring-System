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

        protected void dashBtn_Click(object sender, EventArgs e)
        {
            string hex = "#CCCCCC";
            Color gry = System.Drawing.ColorTranslator.FromHtml(hex);

            dashBtn.BackColor = gry;
            mngEmpBtn.BackColor = Color.White;
            accStBtn.BackColor = Color.White;
        }

        protected void mngEmpBtn_Click(object sender, EventArgs e)
        {
            string hex = "#CCCCCC";
            Color gry = System.Drawing.ColorTranslator.FromHtml(hex);

            dashBtn.BackColor = Color.White;
            mngEmpBtn.BackColor = gry;
            accStBtn.BackColor = Color.White;
        }

        protected void accStBtn_Click(object sender, EventArgs e)
        {
            string hex = "#CCCCCC";
            Color gry = System.Drawing.ColorTranslator.FromHtml(hex);

            dashBtn.BackColor = Color.White;
            mngEmpBtn.BackColor = Color.White;
            accStBtn.BackColor = gry;
        }
    }
}