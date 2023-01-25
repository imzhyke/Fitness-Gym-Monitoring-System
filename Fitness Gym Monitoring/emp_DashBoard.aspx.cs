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
    public partial class emp_DashBoard : System.Web.UI.Page
    {
        string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=fgm" +
            "_db;";
        protected void Page_Load(object sender, EventArgs e)
        {

            using (var db = new MySqlConnection(SQLConnectionString))
            {
                db.Open();
                using (var cmd = db.CreateCommand())
                {
                    //cmd.CommandType = CommandType.Text;
                    //cmd.CommandText = "SELECT * FROM TRANSACTION";
                    //cmd.Connection = db;
                    //DataTable dt = new DataTable();
                    //MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                    //sda.Fill(dt);
                    //rptCustomers.DataSource = dt;
                    //rptCustomers.DataBind();
                    //db.Close();


                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT SESSION_TBL.SESS_START, " +
                        "SESSION_TBL.SESS_END, " +
                        "SESSION_TBL.SESS_DATE, " +
                        "CUSTOMER_TBL.CUST_FNAME, " +
                        "CUSTOMER_TBL.CUST_LNAME " +
                        "FROM SESSION_TBL " +
                        "INNER JOIN " +
                        "CUSTOMER_TBL ON SESSION_TBL.CUST_ID = CUSTOMER_TBL.CUST_ID;";
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
    }
}