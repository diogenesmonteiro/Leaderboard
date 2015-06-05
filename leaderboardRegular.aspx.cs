using System;

namespace LeaderBoard
{
   public partial class leaderboardRegular : System.Web.UI.Page
   {
      Process newProcess = new Process();
      protected void Page_Load(object sender, EventArgs e)
      {
         if (!IsPostBack)
         {
            Session["currentGender"] = (string)Session["ugender"];
            Session["currentWorkout"] = "Regular Wod";
            PickRegularWok();
         }
      }

      public void PickMale(object sender, EventArgs e)
      {
         Session["currentGender"] = "Male";
         PickRegularWok();
      }

      public void PickFemale(object sender, EventArgs e)
      {
         Session["currentGender"] = "Female";;
         PickRegularWok();
      }

      public void PickRegularWok(object sender, EventArgs e)
      {
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "", top10RWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Bar Town", top3BarRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Boca Raton", top3BocaRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Central", top3CentralRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Cooper City", top3CooperRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "East", top3EastRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "North", top3NorthRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Pompano Beach", top3PompanoRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "South", top3SouthRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "West", top3WestRWGridView);
      }
      public void PickRegularWok()
      {
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "", top10RWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Bar Town", top3BarRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Boca Raton", top3BocaRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Central", top3CentralRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Cooper City", top3CooperRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "East", top3EastRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "North", top3NorthRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Pompano Beach", top3PompanoRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "South", top3SouthRWGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "West", top3WestRWGridView);
      }
   }
}