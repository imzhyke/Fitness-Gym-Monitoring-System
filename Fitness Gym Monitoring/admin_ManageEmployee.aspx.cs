using System;
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


        string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=fgm_db;";
        protected void Page_Load(object sender, EventArgs e)
        {
            //TEMPORARY
            Session["role"] = "admin";


        }

        protected void editBtn_Click(object sender, EventArgs e)
        {
            fnameEmp.Enabled = true;
            lnameEmp.Enabled = true;
            contactEmp.Enabled = true;
            passEmp.Enabled = true;
            editBtn.Visible = false;
            saveBtn.Visible = true;
           

        }

     

        protected void saveBtn_Click(object sender, EventArgs e)
        {
            string firstname = fnameEmp.Text.ToString();
            string lastname = lnameEmp.Text.ToString();
            string contact = contactEmp.Text.ToString();
            string password = passEmp.Text.ToString();
            string username = searchTxtBox.Text.ToString();


            using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
            {

                using (MySqlCommand cmd = new MySqlCommand("UPDATE EMPLOYEE_TBL SET EMP_FNAME=@fname, EMP_LNAME=@lname, EMP_CONTACT=@cont, EMP_PASS=@pass WHERE EMP_USRNAME = @user ", connDB))
                {

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@fname", firstname);
                    cmd.Parameters.AddWithValue("@lname", lastname);
                    cmd.Parameters.AddWithValue("@cont", contact);
                    cmd.Parameters.AddWithValue("@pass", password);
                    cmd.Parameters.AddWithValue("@user", username);

                    connDB.Open();

                    //MySqlDataReader rd = cmd.ExecuteReader();
                    var ctr = cmd.ExecuteNonQuery();


                    if (ctr >= 1)
                    {

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                               "swal({\r\n    title: \"UPDATED\",\r\n    text: \"Updated successfuly!\",\r\n    icon: \"success\",\r\n timer: \"1500\",\r\n buttons: false,\r\n   type: \"success\"\r\n}).then(function() {\r\n    window.location = \"admin_ManageEmployee.aspx\";\r\n})", true);
                   
                    }

                    connDB.Close();


                }
            }


        }
        protected void empBtnAdd_Click(object sender, EventArgs e)
        {
            saveBtn.Visible = false;
            empBtnSearch.Visible = false;
            fnameEmp.Enabled = true;
            lnameEmp.Enabled = true;
            contactEmp.Enabled = true;
            passEmp.Enabled = true;
            submitBtn.Visible = true;
            fnameEmp.Text = "";
            lnameEmp.Text = "";
            contactEmp.Text = "";
            passEmp.Text = "";
            searchTxtBox.Text = "";
            empAddd.Visible = false;

        }
        protected void submitBtn_Click(object sender, EventArgs e)
        {
           string firstname = fnameEmp.Text.ToString();
            string lastname = lnameEmp.Text.ToString();
            string contact = contactEmp.Text.ToString();
            string usrname = searchTxtBox.Text.ToString();
            string password = passEmp.Text.ToString();

            using (MySqlConnection db = new MySqlConnection(SQLConnectionString))
            {

                using (var cmd = db.CreateCommand())
                {
                    db.Open();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "INSERT INTO EMPLOYEE_TBL (EMP_FNAME, EMP_LNAME, EMP_CONTACT, EMP_USRNAME, EMP_PASS) "
                        + " VALUES (@fname, @lname, @contact, @user, @pass)";
                    cmd.Parameters.AddWithValue("@fname", firstname);
                    cmd.Parameters.AddWithValue("@lname", lastname);
                    cmd.Parameters.AddWithValue("@contact", contact);
                    cmd.Parameters.AddWithValue("@user", usrname);
                    cmd.Parameters.AddWithValue("@pass", password);


                    var ctr = cmd.ExecuteNonQuery();

                    if (ctr >= 1)
                    {

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                         "swal({\r\n    title: \"SUCCESS\",\r\n    text: \"Created successfuly!\",\r\n    icon: \"success\",\r\n    type: \"success\"\r\n}).then(function() {\r\n    window.location = \"admin_Dashboard.aspx\";\r\n})", true);

                    }
                    else
                    {
                        Response.Write("<script>alert('Sorry, something went wrong... Please try again.')</script>");
                    }

                    db.Close();
                }

            }





        }

        protected void empBtnSearch_Click(object sender, EventArgs e)
        {
            saveBtn.Visible = false;
            fnameEmp.Enabled = false;
            lnameEmp.Enabled = false;
            contactEmp.Enabled = false;
            passEmp.Enabled = false;


            using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
            {
                string username = searchTxtBox.Text.ToString();

                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM EMPLOYEE_TBL WHERE EMP_USRNAME = @user", connDB))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@user", username);
            
                    connDB.Open();
                    MySqlDataReader rd = cmd.ExecuteReader();

                    //Check if account exists in admin table
                    if (rd.Read())
                    {
                        editBtn.Visible = true;
                        fnameEmp.Text = rd["EMP_FNAME"].ToString();
                        lnameEmp.Text = rd["EMP_LNAME"].ToString();
                        contactEmp.Text = rd["EMP_CONTACT"].ToString();
                        passEmp.Text = rd["EMP_PASS"].ToString() ;
                       
                        //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                        // "swal('Success!', 'Logged in successfuly!', 'success')", true);
                        //Response.Redirect("admin_Dashboard.aspx");

                        rd.Close();
                    }

                }
            }

        }
    }
   
}