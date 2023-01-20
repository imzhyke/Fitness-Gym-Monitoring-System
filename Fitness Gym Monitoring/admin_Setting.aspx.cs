using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Fitness_Gym_Monitoring
{
    public partial class admin_Setting : System.Web.UI.Page
    {

        string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=fgm_db;";

        protected void Page_Load(object sender, EventArgs e)
        {
            saveBtn.Visible= false;


            using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
            {

                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM ADMIN_TBL WHERE ADMIN_ID = @id", connDB))
                {

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", 1);
                    connDB.Open();
                    MySqlDataReader rd = cmd.ExecuteReader();

                    if (rd.Read())
                    {
                        adminUsrLbl.Text = rd["ADMIN_USRNAME"].ToString();
                        adminPassLbl.Text = rd["ADMIN_PASS"].ToString();
       

                        editBtn.Visible = true;
    

                        rd.Close();
                    }
                    else
                    {

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                         "swal('Failed!', 'User not found!', 'error')", true);

                    }

                    connDB.Close();
                }
            }
        }

        protected void editBtn_Click(object sender, EventArgs e)
        {
            editBtn.Visible = false;
            saveBtn.Visible = true;
            adminUsrLbl.Enabled = true;
            adminPassLbl.Enabled = true;

        }

        protected void saveBtn_Click(object sender, EventArgs e)
        {

            string user = adminUsrLbl.Text;
            string pass = adminPassLbl.Text;

            using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
            {

                using (MySqlCommand cmd = new MySqlCommand("UPDATE ADMIN_TBL SET ADMIN_USRNAME = @USR, ADMIN_PASS = @PASS WHERE ADMIN_ID = @ADMIN", connDB))
                {

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@USR", user);
                    cmd.Parameters.AddWithValue("@PASS", pass);
                    cmd.Parameters.AddWithValue("@ADMIN", 1);

                    connDB.Open();

                    //MySqlDataReader rd = cmd.ExecuteReader();
                    var ctr = cmd.ExecuteNonQuery();


                    if (ctr >= 1)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                               "swal({\r\n    title: \"UPDATED!\",\r\n    text: \"Updated successfuly!\",\r\n    icon: \"success\",\r\n    type: \"success\"\r\n}).then(function() {\r\n    window.location = \"Prop_DashBoard.aspx\";\r\n})", true);

                    }

                    connDB.Close();

                   
                }
            }


        }

        protected void delBtn_Click(object sender, EventArgs e)
        {

        }
    }
}