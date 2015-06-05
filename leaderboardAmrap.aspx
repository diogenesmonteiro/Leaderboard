<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leaderboardAmrap.aspx.cs" Inherits="LeaderBoard.leaderboardAmrap" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Leaderboard - Amrap</title>
   <style type="text/css">
      #mainDiv {
         height: 2065px;
         width: 1175px;
         text-align: center;
      }
      .auto-style1 {
         text-align: left;
         width: 1280px;
         height: 36px;
      }
   </style>
</head>
<body style="height: 2075px; width: 1360px;">
   <form id="leaderboardARForm" runat="server">
      <div id="mainAMDiv" class="auto-style1">
         Leaderboard<br />
         Amrap<br /><br />
         <asp:LinkButton ID="LeaderboardMale" runat="server" OnClick="PickMale">Male</asp:LinkButton>   
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
         <asp:LinkButton ID="LeaderboardFemale" runat="server" OnClick="PickFemale">Female</asp:LinkButton>
         <br />
         <br />
         
         <!-- ------------- Amrap (Rounds and Reps) ------------- -->
         <asp:Panel id="AmrapPanel" runat="server" Visible="true">
            <div id="top10ARDiv" style="z-index: 1; left: 20px; top: 63px; position: absolute; height: 290px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top10ARLabel" runat="server" Text="The Top 10"></asp:Label>
            <br />
            <asp:GridView ID="top10ARGridView" runat="server" AutoGenerateColumns="False"  
               Width="615px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" Height="188px">
               <Columns>
                  <asp:BoundField DataField="Nickname" HeaderText="Name" SortExpression="Nickname" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="LocationName" HeaderText="Location" SortExpression="LocationName" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Rounds" HeaderText="Rounds" SortExpression="Rounds" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Reps" HeaderText="Reps" SortExpression="Reps" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle Height="32px" Font-Bold="True" ForeColor="Blue" HorizontalAlign="Left" BorderStyle="None" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
               <RowStyle   BorderColor="#f5f5f5" BorderStyle="Notset"/>
            </asp:GridView>
         </div>

            <div id="top3BocaARDiv" style="z-index: 1; left: 20px; top: 378px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
             <asp:Label ID="top3BocaARLabel" runat="server" Text="Boca Raton Top 3"></asp:Label>
             <br />
             <asp:GridView ID="top3BocaARGridView" runat="server" AutoGenerateColumns="False"  
               Width="470px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" Height="53px">
               <Columns>
                  <asp:BoundField DataField="Nickname" HeaderText="Name" SortExpression="Nickname" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Rounds" HeaderText="Rounds" SortExpression="Rounds" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Reps" HeaderText="Reps" SortExpression="Reps" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle Height="32px" Font-Bold="True" ForeColor="Blue" HorizontalAlign="Left" BorderStyle="None" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
               <RowStyle   BorderColor="#f5f5f5" BorderStyle="Notset"/>
            </asp:GridView>
         </div>
               
            <div id="top3EastARDiv" style="z-index: 1; left: 20px; top: 563px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3EastARLabel" runat="server" Text="East Top 3"></asp:Label>
            <br />
               <asp:GridView ID="top3EastARGridView" runat="server" AutoGenerateColumns="False"  
                  Width="470px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" Height="53px">
               <Columns>
                  <asp:BoundField DataField="Nickname" HeaderText="Name" SortExpression="Nickname" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Rounds" HeaderText="Rounds" SortExpression="Rounds" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Reps" HeaderText="Reps" SortExpression="Reps"  >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle Height="32px" Font-Bold="True" ForeColor="Blue" HorizontalAlign="Left" BorderStyle="None" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
               <RowStyle   BorderColor="#f5f5f5" BorderStyle="Notset"/>
            </asp:GridView>
         </div>

            <div id="top3PompanoARDiv" style="z-index: 1; left: 25px; top: 1488px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3PomanoARLabel" runat="server" Text="Pompano Beach Top 3"></asp:Label>
               <asp:GridView ID="top3PompanoARGridView" runat="server" AutoGenerateColumns="False"  
                  Width="470px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" Height="53px">
               <Columns>
                  <asp:BoundField DataField="Nickname" HeaderText="Name" SortExpression="Nickname" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Rounds" HeaderText="Rounds" SortExpression="Rounds" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Reps" HeaderText="Reps" SortExpression="Reps"  >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle Height="32px" Font-Bold="True" ForeColor="Blue" HorizontalAlign="Left" BorderStyle="None" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
               <RowStyle   BorderColor="#f5f5f5" BorderStyle="Notset"/>
            </asp:GridView>
            <br />
         </div>

            <div id="top3CentralARDiv" style="z-index: 1; left: 20px; top: 933px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3CentralARLabel" runat="server" Text="Central Top 3"></asp:Label>
               <asp:GridView ID="top3CentralARGridView" runat="server" AutoGenerateColumns="False"  
                  Width="470px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" Height="53px">
               <Columns>
                  <asp:BoundField DataField="Nickname" HeaderText="Name" SortExpression="Nickname" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Rounds" HeaderText="Rounds" SortExpression="Rounds" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Reps" HeaderText="Reps" SortExpression="Reps"  >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle Height="32px" Font-Bold="True" ForeColor="Blue" HorizontalAlign="Left" BorderStyle="None" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
               <RowStyle   BorderColor="#f5f5f5" BorderStyle="Notset"/>
            </asp:GridView>
            <br />
         </div>

            <div id="top3NorthARDiv" style="z-index: 1; left: 25px; top: 1303px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3NorthARLabel" runat="server" Text="North Top 3"></asp:Label>
               <asp:GridView ID="top3NorthARGridView" runat="server" AutoGenerateColumns="False"  
                  Width="470px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" Height="53px">
               <Columns>
                  <asp:BoundField DataField="Nickname" HeaderText="Name" SortExpression="Nickname" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Rounds" HeaderText="Rounds" SortExpression="Rounds" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Reps" HeaderText="Reps" SortExpression="Reps"  >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle Height="32px" Font-Bold="True" ForeColor="Blue" HorizontalAlign="Left" BorderStyle="None" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
               <RowStyle   BorderColor="#f5f5f5" BorderStyle="Notset"/>
            </asp:GridView>
            <br />
         </div>

            <div id="top3SouthARDiv" style="z-index: 1; left: 25px; top: 1118px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3SouthARLabel" runat="server" Text="South Top 3"></asp:Label>
               <asp:GridView ID="top3SouthARGridView" runat="server" AutoGenerateColumns="False"  
                  Width="470px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" Height="53px">
               <Columns>
                  <asp:BoundField DataField="Nickname" HeaderText="Name" SortExpression="Nickname" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Rounds" HeaderText="Rounds" SortExpression="Rounds" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Reps" HeaderText="Reps" SortExpression="Reps"  >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle Height="32px" Font-Bold="True" ForeColor="Blue" HorizontalAlign="Left" BorderStyle="None" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
               <RowStyle   BorderColor="#f5f5f5" BorderStyle="Notset"/>
            </asp:GridView>
            <br />
         </div>

            <div id="top3WestARDiv" style="z-index: 1; left: 20px; top: 748px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left; right: 821px;">
            <asp:Label ID="top3WestARLabel" runat="server" Text="West Top 3"></asp:Label>
               <asp:GridView ID="top3WestARGridView" runat="server" AutoGenerateColumns="False"  
                  Width="470px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" Height="53px">
               <Columns>
                  <asp:BoundField DataField="Nickname" HeaderText="Name" SortExpression="Nickname" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Rounds" HeaderText="Rounds" SortExpression="Rounds" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Reps" HeaderText="Reps" SortExpression="Reps"  >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle Height="32px" Font-Bold="True" ForeColor="Blue" HorizontalAlign="Left" BorderStyle="None" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
               <RowStyle   BorderColor="#f5f5f5" BorderStyle="Notset"/>
            </asp:GridView>
            <br />
         </div>

            <div id="top3CooperARDiv" style="z-index: 1; left: 25px; top: 1858px; position: absolute; height: 120px; width: 755px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3CooperARLabel" runat="server" Text="Cooper City Top 3" style="text-align: left"></asp:Label>
               <asp:GridView ID="top3CooperARGridView" runat="server" AutoGenerateColumns="False"  
                  Width="470px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" Height="53px">
               <Columns>
                  <asp:BoundField DataField="Nickname" HeaderText="Name" SortExpression="Nickname" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Rounds" HeaderText="Rounds" SortExpression="Rounds" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Reps" HeaderText="Reps" SortExpression="Reps"  >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle Height="32px" Font-Bold="True" ForeColor="Blue" HorizontalAlign="Left" BorderStyle="None" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
               <RowStyle   BorderColor="#f5f5f5" BorderStyle="Notset"/>
            </asp:GridView>
            <br />
         </div>

            <div id="top3BarARDiv" style="z-index: 1; left: 25px; top: 1673px; position: absolute; height: 120px; width: 755px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3BarARLabel" runat="server" Text="Bar Town Top 3"></asp:Label>
               <asp:GridView ID="top3BarARGridView" runat="server" AutoGenerateColumns="False"  
                  Width="470px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" Height="53px">
               <Columns>
                  <asp:BoundField DataField="Nickname" HeaderText="Name" SortExpression="Nickname" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Rounds" HeaderText="Rounds" SortExpression="Rounds" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Reps" HeaderText="Reps" SortExpression="Reps"  >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
               </Columns>
               <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
               <HeaderStyle Height="32px" Font-Bold="True" ForeColor="Blue" HorizontalAlign="Left" BorderStyle="None" />
               <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Left" />
               <SortedAscendingCellStyle BackColor="#F7F7F7" />
               <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
               <SortedDescendingCellStyle BackColor="#E5E5E5" />
               <SortedDescendingHeaderStyle BackColor="#242121" />
               <RowStyle   BorderColor="#f5f5f5" BorderStyle="Notset"/>
            </asp:GridView>
         </div>
         </asp:Panel>

         <br />
      </div>
   </form>
</body>
</html>

