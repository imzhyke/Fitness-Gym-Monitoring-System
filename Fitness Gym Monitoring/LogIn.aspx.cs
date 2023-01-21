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

                                Session["name"] = rd["EMP_FNAME"].ToString();
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                "swal({\r\n    title: \"SUCCESS\",\r\n    text: \"Logged in successfuly!\",\r\n    icon: \"success\",\r\n    type: \"success\"\r\n}).then(function() {\r\n    window.location = \"emp_DashBoard.aspx\";\r\n})", true);

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