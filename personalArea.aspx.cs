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
   public partial class personalArea : System.Web.UI.Page
   {
      int id;

      protected void Page_Load(object sender, EventArgs e)
      {
         if (!IsPostBack)
         {
            GetTable();
            GetChart();
         }
      }
         
      protected void GetTable()
      {
         id = (int)Session["uid"];
         lb_db lbdb = new lb_db();
         DataSet ds = lbdb.GetPersonalTable(id);
         personalDataGridView.DataSource = ds;
         personalDataGridView.DataBind();
      }

      protected void GetChart()
      {
         id = (int)Session["uid"];
         lb_db lbdb = new lb_db();
         DataTable dt = lbdb.GetPersonalChart(id);

         personalDataChart.ChartAreas["personalChartArea"].AxisX.MajorGrid.Enabled = false;
         personalDataChart.ChartAreas["personalChartArea"].AxisY.MajorGrid.Enabled = false;
         personalDataChart.ChartAreas["personalChartArea"].AxisY.Minimum = 0;
         personalDataChart.ChartAreas["personalChartArea"].AxisY.Maximum = 100;
         personalDataChart.ChartAreas["personalChartArea"].AxisX.LabelStyle.Angle = -45; 
         personalDataChart.Legends.Add(new Legend("Time") { Docking = Docking.Right });
         personalDataChart.Legends.Add(new Legend("Weight") { Docking = Docking.Right });

         if (dt.Rows.Count > 0)
         {
            personalChartMsgLabel.Visible = false; 
            personalDataChart.DataSource = dt;
            personalDataChart.Series["Time"].YValueMembers = "TimeItem";
            personalDataChart.Series["Time"].XValueMember = "DateItem";
            personalDataChart.Series["Weight"].YValueMembers = "Weight";
            personalDataChart.DataBind();
         }
         else
         {
            personalDataChart.Visible = false;
            personalChartMsgLabel.Visible = true;
            personalChartMsgLabel.Text = "No data to build chart";
         }
      }

      protected void personalDataGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
      {
         personalDataGridView.PageIndex = e.NewPageIndex;
         GetTable();
         GetChart();
      }
   }
}