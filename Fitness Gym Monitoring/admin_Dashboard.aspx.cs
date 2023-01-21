using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace Fitness_Gym_Monitoring
{
    public partial class admin_Dashboard : System.Web.UI.Page
    {
        string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=fgm_db;";
        protected void Page_Load(object sender, EventArgs e)
        {
            //TEMPORARY
            Session["role"] = "admin";


            using (var db = new MySqlConnection(SQLConnectionString))
            {

                using (var cmd = db.CreateCommand())
                {
                    //cmd.CommandType = CommandType.Text;
                    //cmd.CommandText = "SELECT SESSION_TBL.SESS_START, " +
                    //    "SESSION_TBL.SESS_END, " +
                    //    "SESSION_TBL.SESS_DATE, " +
                    //    "CUSTOMER_TBL.CUST_FNAME, " +
                    //    "CUSTOMER_TBL.CUST_LNAME " +
                    //    "FROM SESSION_TBL " +
                    //    "INNER JOIN " +
                    //    "CUSTOMER_TBL ON SESSION_TBL.CUST_ID = CUSTOMER_TBL.CUST_ID;";
                    //cmd.Connection = db;
                    //DataTable dt = new DataTable();
                    //db.Open();
                    //MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                    //sda.Fill(dt);
                    //rptCustomers.DataSource = dt;
                    //rptCustomers.DataBind();
                    //db.Close();

                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT * FROM EMPLOYEE_TBL";
                    cmd.Connection = db;
                    DataTable dt = new DataTable();
                    MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                    sda.Fill(dt);
                    rptCustomers.DataSource = dt;
                    rptCustomers.DataBind();
                    db.Close();
                }

                using (MySqlCommand cmd2 = new MySqlCommand("SELECT COUNT(EMP_ID) FROM EMPLOYEE_TBL", db))
                {

                    cmd2.CommandType = CommandType.Text;
                    db.Open();
                    object count = cmd2.ExecuteScalar();
                  
                    empDisplayTotal.Text = count.ToString();

                }
            }
        }

        protected void gridview_report_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}