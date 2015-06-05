using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using System.Data;

namespace LeaderBoard
{
   public class lb_db
   {
      MySql.Data.MySqlClient.MySqlConnection conn;
      MySql.Data.MySqlClient.MySqlCommand cmd;
      string queryStr;

      public void Insert_User(string fname, string lname, string nickname, string gender, int height, int weight, string location,
         string userName, string password, string date)
      {
         string connString = System.Configuration.ConfigurationManager.ConnectionStrings["LeaderboardConnString"].ToString();
         conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
         conn.Open();

         queryStr = "INSERT INTO leaderboard.customer (FirstName, LastName, Nickname, Gender, Height, Weight, LocationName, Username, Password, DateSignup)" +
                    "VALUES('" + fname + "', '" + lname + "', '" + nickname + "', '" + gender + "', '" + height + "','" + weight + "', '" + location + "', '" + userName + "', '" + password + "', '" + date + "')";
         cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
         cmd.ExecuteReader();
         conn.Close();
      }

      public DataSet get_list_item(string location, string gender, string workout)
      {
         string connString = System.Configuration.ConfigurationManager.ConnectionStrings["LeaderBoardconnString"].ToString();
         conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
         conn.Open();

         if (workout == "Regular Wod" || workout == "Benchmark")
         {
            if (location == "")
            {
               queryStr = "SELECT lbcu.Nickname, lbcu.LocationName, lbit.DateItem, lbit.Weight, lbit.TimeItem, lbit.TimeMinutesItem, lbit.TimeSecondsItem, lbit.WorkoutType" +
                          " FROM leaderboard.customer lbcu, leaderboard.leaderboarditem lbit" +
                          " WHERE lbcu.Gender = ?Gender" +
                          " AND lbcu.IdCustomer = lbit.IdCustomer" +
                          " AND lbit.WorkoutType = ?Workout" +
                          " ORDER BY lbit.Weight DESC, lbit.TimeItem ASC LIMIT 10";
            }

            else
            {
               queryStr = "SELECT lbcu.Nickname, lbit.DateItem, lbit.Weight, lbit.TimeItem, lbit.TimeMinutesItem, lbit.TimeSecondsItem, lbit.WorkoutType" +
                          " FROM leaderboard.customer lbcu, leaderboard.leaderboarditem lbit" +
                          " WHERE lbcu.LocationName = ?lid" +
                          " AND lbcu.Gender = ?Gender" +
                          " AND lbcu.IdCustomer = lbit.IdCustomer" +
                          " AND lbit.WorkoutType = ?Workout" +
                          " ORDER BY lbit.Weight DESC, lbit.TimeItem ASC LIMIT 3";
            }
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("?Gender", gender);
            cmd.Parameters.AddWithValue("?lid", location);
            cmd.Parameters.AddWithValue("?Workout", workout);
         }
         else if (workout == "Amrap")
         {
            if (location == "")
            {
               queryStr = "SELECT lbcu.Nickname, lbcu.LocationName, lbit.DateItem, lbit.Rounds, lbit.Reps, lbit.WorkoutType" +
                          " FROM leaderboard.customer lbcu, leaderboard.leaderboarditem lbit" +
                          " WHERE lbcu.Gender = ?Gender" +
                          " AND lbcu.IdCustomer = lbit.IdCustomer" +
                          " AND lbit.WorkoutType = ?Workout" +
                          " ORDER BY lbit.Rounds DESC, lbit.Reps ASC LIMIT 10";
            }

            else
            {
               queryStr = "SELECT lbcu.Nickname, lbit.DateItem, lbit.Rounds, lbit.Reps, lbit.WorkoutType" +
                          " FROM leaderboard.customer lbcu, leaderboard.leaderboarditem lbit" +
                          " WHERE lbcu.LocationName = ?lid" +
                          " AND lbcu.Gender = ?Gender" +
                          " AND lbcu.IdCustomer = lbit.IdCustomer" +
                          " AND lbit.WorkoutType = ?Workout" +
                          " ORDER BY lbit.Rounds DESC, lbit.Reps ASC LIMIT 3";
            }
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("?Gender", gender);
            cmd.Parameters.AddWithValue("?lid", location);
            cmd.Parameters.AddWithValue("?Workout", workout);
         }
         else if (workout == "Max Effort")
         {
            if (location == "")
            {
               queryStr = "SELECT lbcu.Nickname, lbcu.LocationName, lbit.DateItem, lbit.Weight, lbit.WorkoutType" +
                          " FROM leaderboard.customer lbcu, leaderboard.leaderboarditem lbit" +
                          " WHERE lbcu.Gender = ?Gender" +
                          " AND lbcu.IdCustomer = lbit.IdCustomer" +
                          " AND lbit.WorkoutType = ?Workout" +
                          " ORDER BY lbit.Weight DESC LIMIT 10";
            }

            else
            {
               queryStr = "SELECT lbcu.Nickname, lbit.DateItem, lbit.Weight, lbit.WorkoutType" +
                          " FROM leaderboard.customer lbcu, leaderboard.leaderboarditem lbit" +
                          " WHERE lbcu.LocationName = ?lid" +
                          " AND lbcu.Gender = ?Gender" +
                          " AND lbcu.IdCustomer = lbit.IdCustomer" +
                          " AND lbit.WorkoutType = ?Workout" +
                          " ORDER BY lbit.Weight DESC LIMIT 3";
            }
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.Parameters.AddWithValue("?Gender", gender);
            cmd.Parameters.AddWithValue("?lid", location);
            cmd.Parameters.AddWithValue("?Workout", workout);
         }

         MySqlDataAdapter da = new MySqlDataAdapter(cmd);
         DataSet ds = new DataSet();
         da.Fill(ds);
         conn.Close();
         return ds;
      }

      public DataSet GetPersonalTable(int id)
      {
         string connString = System.Configuration.ConfigurationManager.ConnectionStrings["LeaderBoardconnString"].ToString();
         conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
         conn.Open();

         queryStr = "SELECT DateItem, Weight, TimeMinutesItem, TimeSecondsItem FROM leaderboard.leaderboarditem WHERE IdCustomer = ?cid ORDER BY DateItem DESC, Weight DESC";
         cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
         cmd.Parameters.AddWithValue("?cid", id);
         
         MySqlDataAdapter da = new MySqlDataAdapter(cmd);
         DataSet ds = new DataSet();
         da.Fill(ds);
         conn.Close();
         return ds;
      }

      public DataTable GetPersonalChart(int id)
      {
         string connString = System.Configuration.ConfigurationManager.ConnectionStrings["LeaderBoardconnString"].ToString();
         conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
         conn.Open();

         queryStr = "(SELECT DateItem, Weight, TimeItem FROM leaderboard.leaderboarditem WHERE IdCustomer = ?cid ORDER BY DateItem DESC, Weight DESC LIMIT 14)" + 
                    " ORDER BY DateItem ASC, Weight ASC, TimeItem ASC";
         cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
         cmd.Parameters.AddWithValue("?cid", id);

         MySqlDataAdapter da = new MySqlDataAdapter(cmd);
         DataTable dt = new DataTable();
         da.Fill(dt);
         conn.Close();
         return dt;
      }

      public void InsertNewLeaderboardEntry(int id, string workoutType, int weight, decimal time, int min, int sec, int rounds, int reps, string date)
      {
         string connString = System.Configuration.ConfigurationManager.ConnectionStrings["LeaderboardConnString"].ToString();
         conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
         conn.Open();
         queryStr = "INSERT INTO leaderboard.leaderboarditem (IdCustomer, WorkoutType, Weight, TimeItem, TimeMinutesItem, TimeSecondsItem, Rounds, Reps, DateItem)" +
                    "VALUES('" + id + "', '" + workoutType + "', '" + weight + "', '" + time + "', '" + min + "', '" + sec + "', '" + rounds + "','" + reps + "', '" + date + "')";
         cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
         cmd.ExecuteReader();
         conn.Close();
      }
   }
}