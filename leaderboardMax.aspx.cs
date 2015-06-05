using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

namespace LeaderBoard
{
   public partial class leaderboardMax : System.Web.UI.Page
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

      public void PickAmrap(object sender, EventArgs e)
      {
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "", top10MEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Bar Town", top3BarMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Boca Raton", top3BocaMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Central", top3CentralMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Cooper City", top3CooperMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "East", top3EastMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "North", top3NorthMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Pompano Beach", top3PompanoMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "South", top3SouthMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "West", top3WestMEGridView);
      }
      public void PickAmrap()
      {
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "", top10MEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Bar Town", top3BarMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Boca Raton", top3BocaMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Central", top3CentralMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Cooper City", top3CooperMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "East", top3EastMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "North", top3NorthMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "Pompano Beach", top3PompanoMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "South", top3SouthMEGridView);
         newProcess.GetLeaderboardData((string)Session["currentGender"], (string)Session["currentWorkout"], "West", top3WestMEGridView);
      }
   }
}