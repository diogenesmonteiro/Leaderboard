using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaderBoard
{
   public partial class Default : System.Web.UI.Page
   {
      MySql.Data.MySqlClient.MySqlConnection conn;
      MySql.Data.MySqlClient.MySqlCommand cmd;
      MySql.Data.MySqlClient.MySqlDataReader reader;
      string queryStr;
      string name;
      string gender;
      int id;

      protected void Page_Load(object sender, EventArgs e)
      {
      }

      protected void loginEventMethod(object sender, EventArgs e)
      {
         if (whiteListCheck(userNameLoginTextbox.Text) == true &&
            whiteListCheck(passwordLoginTextbox.Text) == true)
         {
            CheckLogin();
         }
         else
         {
            badLoginMsgLabel.Text = "Invalid login information.";
         }
      }

      private bool whiteListCheck(string userInput)
      {
         var regExpression = new System.Text.RegularExpressions.Regex(@"^[a-zA-Z0-9]*$");
         if (regExpression.IsMatch(userInput))
         {
            return true;
         }
         else
         {
            return false;
         }
      }

      private void CheckLogin()
      {
         try
         {
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["LeaderBoardconnString"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();

            queryStr = "SELECT * FROM leaderboard.customer WHERE Username = ?uname AND Password = ?pword";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("?uname", userNameLoginTextbox.Text);
            cmd.Parameters.AddWithValue("?pword", passwordLoginTextbox.Text);
            reader = cmd.ExecuteReader();
            name = "";

            while (reader.HasRows && reader.Read())
            {
               name = reader.GetString(reader.GetOrdinal("FirstName")) + " " +
                  reader.GetString(reader.GetOrdinal("LastName"));
               id = reader.GetInt32(reader.GetOrdinal("IdCustomer"));
               gender = reader.GetString(reader.GetOrdinal("Gender"));
            }

            if (reader.HasRows)
            {
               Session["uname"] = name;
               Response.BufferOutput = true;
               Response.Redirect("leaderBoardInput.aspx", false);

               Session["ugender"] = gender;
               Session["uid"] = id;
            }
            else
            {
               badLoginMsgLabel.Text = "Invalid login information.";
            }
            reader.Close();
            conn.Close();
         }
         catch (Exception e)
         {
            passwordLoginTextbox.Text = e.ToString();
         }
      }

      protected void resetEventMethod(object sender, EventArgs e)
      {
         userNameLoginTextbox.Text = "";
         passwordLoginTextbox.Text = "";
      }
   }
}