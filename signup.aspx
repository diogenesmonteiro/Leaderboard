<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="LeaderBoard.SignupPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leaderboard Signup Page</title>
</head>
<body>
    <form id="signupForm" runat="server">
    <div id="mainDiv" style="height: 770px; width: 1265px">
    
       <h1>Signup for the Leaderboard</h1>
       <a href="default.aspx">Login</a> | <a href="signup.aspx">Signup</a> 
       <br />
       <br />
       First name<br />
       <asp:TextBox ID="firstNameSignaupTextbox" runat="server" Width="190px"></asp:TextBox>
       <br />
       <br />
       Last name<br />
       <asp:TextBox ID="lastNameSignupTextbox" runat="server" Width="190px"></asp:TextBox>
       <br />
       <br />
       Nickname (will show on leaderboard)<br />
       <asp:TextBox ID="nickNameSignupTextbox" runat="server" Width="190px"></asp:TextBox>
       <br />
       <br />
       Gender<br />
       <asp:DropDownList ID="genderSignupDropDown" runat="server" AutoPostBack="True" Width="195px">
          <asp:ListItem>Please select</asp:ListItem>
          <asp:ListItem>Male</asp:ListItem>
          <asp:ListItem>Female</asp:ListItem>
       </asp:DropDownList>
       <br />
       <br />
       Height (In)<br />
       <asp:TextBox ID="heightSignupTextbox" runat="server" Width="190px"></asp:TextBox>
       <br />
       <br />
       Weight (lb)<br />
       <asp:TextBox ID="weightSignupTextbox" runat="server" Width="190px"></asp:TextBox>
       <br />
       <br />
       Location<br />
       <asp:DropDownList ID="locationSignupDropDown" runat="server" Height="23px" Width="195px" AutoPostBack="True">
          <asp:ListItem>Please select</asp:ListItem>
          <asp:ListItem>Boca Raton</asp:ListItem>
          <asp:ListItem>East Kids</asp:ListItem>
          <asp:ListItem>East</asp:ListItem>
          <asp:ListItem>Pompano Beach</asp:ListItem>
          <asp:ListItem>Central</asp:ListItem>
          <asp:ListItem>North</asp:ListItem>
          <asp:ListItem>South</asp:ListItem>
          <asp:ListItem>West</asp:ListItem>
          <asp:ListItem>Cooper City</asp:ListItem>
          <asp:ListItem>Bar Town</asp:ListItem>
       </asp:DropDownList>
       <br />
       <br />
       User Name<br />
       <asp:TextBox ID="usernameSignupTextbox" runat="server" Width="190px"></asp:TextBox>
       <br />
       <br />
       Password<br />
       <asp:TextBox ID="passwordSignupTextbox" runat="server" Width="190px" TextMode="Password"></asp:TextBox>
       <br />
       <br />
       <br />
       <asp:Button ID="resetSignupFormButton" runat="server" Text="reset" OnClick="resetSignupFormEventMethod"/>
       &nbsp;&nbsp;
       <asp:Button id="signupButton" text="signup" runat="server" OnClick="signupEventMethod"></asp:Button>
       </div>
    </form>
</body>
</html>
