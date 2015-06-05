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
   public class Process
   {
      public void GetLeaderboardData(string gender, string workout, string location, GridView gridView)
      {
         lb_db lbdb = new lb_db();

         switch (location)
         {
            case "":
               DataSet ds = lbdb.get_list_item("", gender, workout);
               gridView.DataSource = ds;
               gridView.DataBind();
               break;
            default:
               DataSet ds1 = lbdb.get_list_item(location, gender, workout);
               gridView.DataSource = ds1;
               gridView.DataBind();
               break;
         }
      }
   }
}