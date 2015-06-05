using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LeaderBoard
{
   public partial class LeaderBoardInput : System.Web.UI.Page
   {
      decimal time;
      int id;
      string name;
      DateTime date = new DateTime();
      string dateToDB;

      protected void Page_Load(object sender, EventArgs e)
      {
         name = (string)(Session["uname"]);
         if (name == null)
         {
            Response.BufferOutput = true;
            Response.Redirect("default.aspx", false);
         }
         else
         {
            nameOfUserLabel.Text = name;
         }
      }
      
      protected void logoutEventMethod(object sender, EventArgs e)
      {
         Session["uname"] = null;
         Session.Abandon();
         Response.BufferOutput = true;
         Response.Redirect("default.aspx", false);
      }

      protected void submitLeaderboardDataEventMethod(object sender, EventArgs e)
      {
         submitData();
      }

      protected void resetLeaderboardDataEventMethod(object sender, EventArgs e)
      {
         weightLeaderboardTextbox.Text = "";
         workoutLeaderboardDropDownList.Text = "Pick Workout";
         minLeaderboardTextbox.Text = "";
         secLeaderboardTextbox.Text = "";
         roundsLeaderboardTextbox.Text = "";
         repsLeaderboardTextbox.Text = "";
         dateTextbox.Text = "Pick the Date ->";
      }

      protected void resetLeaderboardDataEventMethod()
      {
         weightLeaderboardTextbox.Text = "";
         workoutLeaderboardDropDownList.Text = "Pick Workout";
         minLeaderboardTextbox.Text = "";
         secLeaderboardTextbox.Text = "";
         roundsLeaderboardTextbox.Text = "";
         repsLeaderboardTextbox.Text = "";
         dateTextbox.Text = "Pick the Date ->";
      }

      private void submitData()
      {
         if (roundsLeaderboardTextbox.Text == "")
            roundsLeaderboardTextbox.Text = "0";
         if (repsLeaderboardTextbox.Text == "")
            repsLeaderboardTextbox.Text = "0";
         if (weightLeaderboardTextbox.Text == "")
            weightLeaderboardTextbox.Text = "0";
         if (minLeaderboardTextbox.Text == "")
            minLeaderboardTextbox.Text = "0";
         if (secLeaderboardTextbox.Text == "")
            secLeaderboardTextbox.Text = "0";

         id = (int)Session["uid"];
         time = Convert.ToDecimal(minLeaderboardTextbox.Text) + (Convert.ToDecimal(secLeaderboardTextbox.Text)) / 60;
         date = Convert.ToDateTime(Request.Form[dateTextbox.UniqueID]);
         dateToDB = date.ToString("yyyy-MM-dd");
         Session["workout"] = workoutLeaderboardDropDownList.Text;

         lb_db lbdb = new lb_db();
         lbdb.InsertNewLeaderboardEntry(id, workoutLeaderboardDropDownList.Text, Convert.ToInt32(weightLeaderboardTextbox.Text), time,
            Convert.ToInt32(minLeaderboardTextbox.Text), Convert.ToInt32(secLeaderboardTextbox.Text),
            Convert.ToInt32(roundsLeaderboardTextbox.Text), Convert.ToInt32(repsLeaderboardTextbox.Text),
            dateToDB);

         resetLeaderboardDataEventMethod();
      }

      protected void DisableControls()
      { 
         weightLeaderboardTextbox.Enabled = false;
         minLeaderboardTextbox.Enabled = false;
         secLeaderboardTextbox.Enabled = false;
         roundsLeaderboardTextbox.Enabled = false;
         repsLeaderboardTextbox.Enabled = false;
         dateTextbox.Enabled = false;
         resetLeaderboardButton.Enabled = false;
         submitLeaderboardButton.Enabled = false;      
      }
      
      protected void workoutLeaderboardDropDownList_SelectedIndexChanged(object sender, EventArgs e)
      {
         if (workoutLeaderboardDropDownList.Text == "Pick Workout")
         {
            DisableControls();
         }
         else if (workoutLeaderboardDropDownList.Text == "Regular Wod" ||
                  workoutLeaderboardDropDownList.Text == "Benchmark")
         {
            weightLeaderboardTextbox.Enabled = true;
            minLeaderboardTextbox.Enabled = true;
            secLeaderboardTextbox.Enabled = true;
            roundsLeaderboardTextbox.Enabled = false;
            repsLeaderboardTextbox.Enabled = false;
            dateTextbox.Enabled = true;
            resetLeaderboardButton.Enabled = true;
            submitLeaderboardButton.Enabled = true;      
         }
         else if (workoutLeaderboardDropDownList.Text == "Amrap")
         {
            weightLeaderboardTextbox.Enabled = false;
            minLeaderboardTextbox.Enabled = false;
            secLeaderboardTextbox.Enabled = false;
            roundsLeaderboardTextbox.Enabled = true;
            repsLeaderboardTextbox.Enabled = true;
            dateTextbox.Enabled = true;
            resetLeaderboardButton.Enabled = true;
            submitLeaderboardButton.Enabled = true; 
         }
         else if (workoutLeaderboardDropDownList.Text == "Max Effort")
         {
            weightLeaderboardTextbox.Enabled = true;
            minLeaderboardTextbox.Enabled = false;
            secLeaderboardTextbox.Enabled = false;
            roundsLeaderboardTextbox.Enabled = false;
            repsLeaderboardTextbox.Enabled = false;
            dateTextbox.Enabled = true;
            resetLeaderboardButton.Enabled = true;
            submitLeaderboardButton.Enabled = true; 
         }
      }

      protected void goToLeaderboardEventMethod(object sender, EventArgs e)
      {
         if ((string)Session["workout"] == null)
         {
            Response.BufferOutput = true;
            Response.Redirect("leaderboardRegular.aspx", false);
         }
         if ((string)Session["workout"] == "Regular Wod")
         {
            Response.BufferOutput = true;
            Response.Redirect("leaderboardRegular.aspx", false);
         }
         else if ((string)Session["workout"] == "Benchmark")
         {
            Response.BufferOutput = true;
            Response.Redirect("leaderboardBenchmark.aspx", false);
         }
         else if ((string)Session["workout"] == "Amrap")
         {
            Response.BufferOutput = true;
            Response.Redirect("leaderboardAmrap.aspx", false);
         }
         else if ((string)Session["workout"] == "Max Effort")
         {
            Response.BufferOutput = true;
            Response.Redirect("leaderboardMax.aspx", false);
         }
      } 
   }
}