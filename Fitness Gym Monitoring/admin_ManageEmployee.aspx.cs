﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using MySql.Data.MySqlClient;




namespace Fitness_Gym_Monitoring
{

    public partial class admin_ManageEmployee : System.Web.UI.Page
    {
        string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=iaps_db;";
        protected void Page_Load(object sender, EventArgs e)
        {

            using (var db = new MySqlConnection(SQLConnectionString))
            {
                db.Open();
                using (var cmd = db.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT * FROM TRANSACTION";
                    cmd.Connection = db;
                    DataTable dt = new DataTable();
                    MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                    sda.Fill(dt);
                    rptCustomers.DataSource = dt;
                    rptCustomers.DataBind();
                    db.Close();
                }
            }

        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {


        }


        protected void editBtnEmp_Click(object sender, EventArgs e)
        {

        }
    }
   
}