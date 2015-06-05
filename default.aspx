<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="LeaderBoard.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leaderboard Login Page</title>
</head>
<body>
    <form id="loginSignupForm" runat="server">
    <div>
       <h1>Login to Post on Leaderboard</h1>
       <%--  database info: username:lbuser / password:lbusername1 --%>
       User Name<br />
       <asp:TextBox ID="userNameLoginTextbox" runat="server"></asp:TextBox>
       <br />
       <br />
       Password<br />
       <asp:TextBox ID="passwordLoginTextbox" runat="server" TextMode="Password"></asp:TextBox>
       <br />
       <asp:Label ID="badLoginMsgLabel" runat="server"></asp:Label>
       <br />
       <br />
       <asp:Button ID="resetLoginButton" runat="server" Text="reset" OnClick="resetEventMethod"></asp:Button>
       &nbsp;&nbsp;&nbsp;
       <asp:Button id="loginButton" text="login" runat="server" OnClick="loginEventMethod"></asp:Button>
       <br />
       <h4><a href="signup.aspx">New to leaderboard? Click here to signup.</a></h4>
    </div>
    </form>
</body>
</html>
