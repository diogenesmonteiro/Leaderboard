using System;

namespace LeaderBoard
{
   public partial class leaderboardAmrap : System.Web.UI.Page
   {
      Process newProcess = new Process();
      protected void Page_Load(object sender, EventArgs e)
      {
         if (!IsPostBack)
         {
            Session["currentGender"] = (string)Session["ugender"];
            Session["currentWorkout"] = Session["workout"];
            PickAmrap();
         }
      }

      public void PickMale(object sender, EventArgs e)
      {
         Session["currentGender"] = "Male";
         PickAmrap();
      }

      public void PickFemale(object sender, EventArgs e)
      {
         Session["currentGender"] = "Female"; ;
         PickAmrap();
      }

      //public void PickAmrap(object sender, EventArgs e)
      public void PickAmrap(object sender = null, EventArgs e = null)
      {
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "", top10ARGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Bar Town", top3BarARGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Boca Raton", top3BocaARGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Central", top3CentralARGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Cooper City", top3CooperARGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "East", top3EastARGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "North", top3NorthARGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Pompano Beach", top3PompanoARGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "South", top3SouthARGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "West", top3WestARGridView);
      }
      //public void PickAmrap()
      //{
      //   newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "", top10ARGridView);
      //   newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Bar Town", top3BarARGridView);
      //   newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Boca Raton", top3BocaARGridView);
      //   newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Central", top3CentralARGridView);
      //   newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Cooper City", top3CooperARGridView);
      //   newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "East", top3EastARGridView);
      //   newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "North", top3NorthARGridView);
      //   newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Pompano Beach", top3PompanoARGridView);
      //   newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "South", top3SouthARGridView);
      //   newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "West", top3WestARGridView);
      //}
   }
}