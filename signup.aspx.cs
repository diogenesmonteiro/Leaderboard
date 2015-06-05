using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaderBoard
{
   public partial class SignupPage : System.Web.UI.Page
   {
      protected void Page_Load(object sender, EventArgs e)
      {
      }

      protected void signupEventMethod(object sender, EventArgs e) 
      {
         signupUser();
      }

      private void signupUser()
      {
         DateTime date = DateTime.Now;
         lb_db lbdb = new lb_db();
         lbdb.Insert_User(firstNameSignaupTextbox.Text, lastNameSignupTextbox.Text, nickNameSignupTextbox.Text, genderSignupDropDown.Text,
            Convert.ToInt32(heightSignupTextbox.Text), Convert.ToInt32(weightSignupTextbox.Text), locationSignupDropDown.Text,
            usernameSignupTextbox.Text, passwordSignupTextbox.Text, date.ToString("yyyy-MM-dd"));
         Response.Redirect("default.aspx", false);
      }

      protected void resetSignupFormEventMethod(object sender, EventArgs e)
      {
         firstNameSignaupTextbox.Text = "";
         lastNameSignupTextbox.Text = "";
         genderSignupDropDown.SelectedIndex = 0;
         locationSignupDropDown.SelectedIndex = 0;
         usernameSignupTextbox.Text = "";
         passwordSignupTextbox.Text = "";
      }
   }
}