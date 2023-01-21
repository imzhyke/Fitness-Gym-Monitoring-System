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
        //string hex = "#CCCCCC";
        Color gry = System.Drawing.ColorTranslator.FromHtml("#CCCCCC");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"].Equals("admin"))
            {
                dashBtnEmp.Visible = false;
                clientBtnEmp.Visible = false;
                histBtnEmp.Visible = false;
                membrBtnEmp.Visible = false;

                dashBtnAdmin.Visible = true;
                mngEmpBtnAdmin.Visible = true;
                accStBtnAdmin.Visible = true;

                lblLoggedIn.Text = "ADMIN";
            }
            else if (Session["role"].Equals("employee"))
            {
                dashBtnEmp.Visible = true;
                clientBtnEmp.Visible = true;
                histBtnEmp.Visible = true;
                membrBtnEmp.Visible = true;

                dashBtnAdmin.Visible = false;
                mngEmpBtnAdmin.Visible = false;
                accStBtnAdmin.Visible = false;

                lblLoggedIn.Text = Session["name"].ToString();

            }
        }

        protected void dashBtnAdmin_Click(object sender, EventArgs e)
        {
           
            //string hex = "#CCCCCC";
            //Color gry = System.Drawing.ColorTranslator.FromHtml(hex);

            //dashBtnAdmin.BackColor = Color.Gray;
            //mngEmpBtnAdmin.BackColor = Color.White;
            //accStBtnAdmin.BackColor = Color.White;


            Response.Redirect("admin_Dashboard.aspx");



        }

        protected void mngEmpBtnAdmin_Click(object sender, EventArgs e)
        {
          

            //string hex = "#CCCCCC";
            //Color gry = System.Drawing.ColorTranslator.FromHtml(hex);

            //dashBtnAdmin.BackColor = Color.White;
            //mngEmpBtnAdmin.BackColor = Color.Gray;
            //accStBtnAdmin.BackColor = Color.White;



                 Response.Redirect("admin_ManageEmployee.aspx");


        }

        protected void accStBtnAdmin_Click(object sender, EventArgs e)
        {


            //dashBtnAdmin.BackColor = Color.White;
            //mngEmpBtnAdmin.BackColor = Color.White;
            //accStBtnAdmin.BackColor = gry;
            Response.Redirect("admin_Setting.aspx");
        }

        protected void dashBtnEmp_Click(object sender, EventArgs e)
        {
            dashBtnEmp.BackColor = gry;
            clientBtnEmp.BackColor = Color.White;
            histBtnEmp.BackColor = Color.White;
            membrBtnEmp.BackColor = Color.White;
        }
        protected void clientBtnEmp_Click(object sender, EventArgs e)
        {
            dashBtnEmp.BackColor = Color.White;
            clientBtnEmp.BackColor = gry;
            histBtnEmp.BackColor = Color.White;
            membrBtnEmp.BackColor = Color.White;
        }
        protected void histBtnEmp_Click(object sender, EventArgs e)
        {
            dashBtnEmp.BackColor = Color.White;
            clientBtnEmp.BackColor = Color.White;
            histBtnEmp.BackColor = gry;
            membrBtnEmp.BackColor = Color.White;
        }
        protected void membrBtnEmp_Click(object sender, EventArgs e)
        {
            dashBtnEmp.BackColor = Color.White;
            clientBtnEmp.BackColor = Color.White;
            histBtnEmp.BackColor = Color.White;
            membrBtnEmp.BackColor = gry;
        }


        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            Session["role"] = "";

            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                             "swal({\r\n    title: \"SUCCESS\",\r\n    text: \"Logged in successfuly!\",\r\n    icon: \"success\",\r\n    timer: \"1500\",\r\n    buttons: false         ,\r\n    type: \"success\"\r\n}).then(function() {\r\n    window.location = \"LandingPage.aspx\";\r\n})", true);

        }
    }
}