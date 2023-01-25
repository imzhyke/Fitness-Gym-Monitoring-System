using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Fitness_Gym_Monitoring
{
    public partial class LogIn : System.Web.UI.Page
    {

        string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=fgm_db;";

        protected void Page_Load(object sender, EventArgs e)
        {
        

        }

        protected void logInBtn_Click(object sender, EventArgs e)
        {
            //Get TextBox Value
            string uname = txtUserName.Text;
            string pwd = txtPassword.Text;



            using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
            {
                //Check if account 
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM PROP_TBL WHERE PROP_USRNAME = @username AND PROP_PASS =@pwd", connDB))
                {

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@username", uname);
                    cmd.Parameters.AddWithValue("@pwd", pwd);
                    connDB.Open();
                    MySqlDataReader rd = cmd.ExecuteReader();


                    //Check if account exists in admin table
                    if (rd.Read())
                    {

                        Session["role"] = "admin";

                        //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                        // "swal('Success!', 'Logged in successfuly!', 'success')", true);

                        //Response.Redirect("admin_Dashboard.aspx");

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                               "swal({\r\n    title: \"SUCCESS\",\r\n    text: \"Logged in successfuly!\",\r\n    icon: \"success\",\r\n timer: \"1500\",\r\n buttons: false,\r\n   type: \"success\"\r\n}).then(function() {\r\n    window.location = \"admin_Dashboard.aspx\";\r\n})", true);

                        rd.Close();
                    }

                    //Check if account exists in employee table
                    else
                    {

                        rd.Close();

                        using (MySqlCommand cmd2 = new MySqlCommand("SELECT * FROM EMPLOYEE_TBL WHERE EMP_USRNAME = @username AND EMP_PASS =@pwd", connDB))
                        {

                            cmd2.CommandType = CommandType.Text;
                            cmd2.Parameters.AddWithValue("@username", uname);
                            cmd2.Parameters.AddWithValue("@pwd", pwd);
                    
                            MySqlDataReader rd2 = cmd2.ExecuteReader();

                            if (rd2.Read())
                            {

                                Session["name"] = rd2["EMP_FNAME"].ToString();
                                Session["role"] = "employee";
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                               "swal({\r\n    title: \"SUCCESS\",\r\n    text: \"Logged in successfuly!\",\r\n    icon: \"success\",\r\n timer: \"1500\",\r\n buttons: false,\r\n   type: \"success\"\r\n}).then(function() {\r\n    window.location = \"emp_DashBoard.aspx\";\r\n})", true);
                                rd2.Close();

                            }
                            else
                            {
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                     "swal('Failed!', 'Failed to Log In!', 'error')", true);
                            }

                        }
                    }

                    connDB.Close();
                }
            }




        }
    }
}