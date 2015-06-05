<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leaderBoardInput.aspx.cs" Inherits="LeaderBoard.LeaderBoardInput" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Leaderboard Activity Input</title>

   <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
   <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
   <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
   <link href="Styles/lbInput.css" rel="stylesheet" />

   <script type="text/javascript" >
      $(function () {
         $("[id$=dateTextbox]").datepicker({
            showOn: 'button',
            buttonImageOnly: true,
            buttonImage: 'http://www.diogenesmonteiro.com/leaderboard/Images/calendar.gif'
         });
      });
   </script>
   <style>
   .ui-datepicker-trigger {
   position: relative;
   top: 6px;
   left: 5px;
   height: 20px;
   width: 20px;
   }
   </style> 

</head>
<body>
   <form id="leaderBoardInputForm" runat="server">
   <div id="mainDiv" style="height: 770px; width: 1265px">
      <h1>Leaderboard Posting Page</h1>
      Hello&nbsp<asp:Label ID="nameOfUserLabel" runat="server" Text=""></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="logoutLinkButton" runat="server" OnClick="logoutEventMethod">Logout</asp:LinkButton>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:LinkButton ID="GoToLeaderboard" runat="server" OnClick="goToLeaderboardEventMethod">Go to the Leaderboard!</asp:LinkButton><br />
      <br />
      Workout Type<br />
      <asp:DropDownList ID="workoutLeaderboardDropDownList" runat="server" OnSelectedIndexChanged="workoutLeaderboardDropDownList_SelectedIndexChanged" Width="200px" AutoPostBack="True">
         <asp:ListItem>Pick Workout</asp:ListItem>
         <asp:ListItem>Regular Wod</asp:ListItem>
         <asp:ListItem>Amrap</asp:ListItem>
         <asp:ListItem>Benchmark</asp:ListItem>
         <asp:ListItem>Max Effort</asp:ListItem>
      </asp:DropDownList>
      <br />
      <br />
      Weight (lbs)
      <br />
      <asp:TextBox ID="weightLeaderboardTextbox" runat="server" Width="200px" Enabled ="false"></asp:TextBox>
      <br />
      <br />
      Time (min:sec)<br />
      <asp:TextBox ID="minLeaderboardTextbox" runat="server" Width="90px" Enabled ="false"></asp:TextBox>
      :
      <asp:TextBox ID="secLeaderboardTextbox" runat="server" Width="90px" Enabled ="false"></asp:TextBox>
      <br />
      <br />
      Rounds<br />
      <asp:TextBox ID="roundsLeaderboardTextbox" runat="server" Width="200" Enabled ="false"></asp:TextBox>
      <br />
      <br />
      Reps<br />
      <asp:TextBox ID="repsLeaderboardTextbox" runat="server" Width="200px" Enabled ="false"></asp:TextBox>
      <br />
      <br />
      Workout Date<br />
      <asp:TextBox ID="dateTextbox" runat="server" ReadOnly = "true" Width="200px" Enabled ="false">Pick the date -></asp:TextBox>
      <div id="personalAreaDiv" style="z-index: 1; left: 305px; top: 130px; position: absolute; height: 435px; width: 900px">
         <iframe src="personalArea.aspx" id="personalAreaIFrame" seamless="seamless" style="height: 460px; width: 980px; margin-top: 3px"></iframe>
      </div>
      &nbsp;
      <br /><br />
      <asp:Button id="resetLeaderboardButton" Text="reset" runat="server" Width="75px" OnClick="resetLeaderboardDataEventMethod"></asp:Button>
      &nbsp;&nbsp;
      <asp:Button id="submitLeaderboardButton" text="submit" runat="server" Width="75px" OnClick="submitLeaderboardDataEventMethod"></asp:Button>
      <br />
      <br />
      <asp:Label ID="recordStatusLabel" visible="false" text="Entry submitted successfully" runat="server"></asp:Label>
      <br />
      </div>
   </form>
</body>
</html>
