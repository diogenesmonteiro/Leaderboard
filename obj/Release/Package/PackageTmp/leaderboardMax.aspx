<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leaderboardMax.aspx.cs" Inherits="LeaderBoard.leaderboardMax" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Leaderboard - Max Effort</title>
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
   <form id="leaderboardMEForm" runat="server">
      <div id="mainMEDiv" class="auto-style1">
         Leaderboard<br />
         Max Effort<br /><br />
         <asp:LinkButton ID="LeaderboardMale" runat="server" OnClick="PickMale">Male</asp:LinkButton>   
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
         <asp:LinkButton ID="LeaderboardFemale" runat="server" OnClick="PickFemale">Female</asp:LinkButton>
         <br />
         <br />

         <!-- ------------ Max Effort (Weight only) ------------- -->
         <asp:Panel id="MaxEffortPanel" runat="server" Visible="true">
            <div id="top10MEDiv" style="z-index: 1; left: 20px; top: 63px; position: absolute; height: 290px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top10MELabel" runat="server" Text="The Top 10"></asp:Label>
            <br />
            <asp:GridView ID="top10MEGridView" runat="server" AutoGenerateColumns="False"  
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
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
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

            <div id="top3BocaMEDiv" style="z-index: 1; left: 20px; top: 378px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
             <asp:Label ID="top3BocaMELabel" runat="server" Text="Boca Raton Top 3"></asp:Label>
             <br />
             <asp:GridView ID="top3BocaMEGridView" runat="server" AutoGenerateColumns="False"  
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
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
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
               
            <div id="top3EastMEDiv" style="z-index: 1; left: 20px; top: 563px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3EastMELabel" runat="server" Text="East Top 3"></asp:Label>
            <br />
               <asp:GridView ID="top3EastMEGridView" runat="server" AutoGenerateColumns="False"  
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
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
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

            <div id="top3PompanoMEDiv" style="z-index: 1; left: 25px; top: 1488px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3PompanoMELabel" runat="server" Text="Pompano Beach Top 3"></asp:Label>
               <asp:GridView ID="top3PompanoMEGridView" runat="server" AutoGenerateColumns="False"  
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
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
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

            <div id="top3CentralMEDiv" style="z-index: 1; left: 20px; top: 933px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3CentralMELabel" runat="server" Text="Central Top 3"></asp:Label>
               <asp:GridView ID="top3CentralMEGridView" runat="server" AutoGenerateColumns="False"  
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
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
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

            <div id="top3NorthMEDiv" style="z-index: 1; left: 25px; top: 1303px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3NorthMELabel" runat="server" Text="North Top 3"></asp:Label>
               <asp:GridView ID="top3NorthMEGridView" runat="server" AutoGenerateColumns="False"  
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
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
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

            <div id="top3SouthMEDiv" style="z-index: 1; left: 25px; top: 1118px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3SouthMELabel" runat="server" Text="South Top 3"></asp:Label>
               <asp:GridView ID="top3SouthMEGridView" runat="server" AutoGenerateColumns="False"  
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
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
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

            <div id="top3WestMEDiv" style="z-index: 1; left: 20px; top: 748px; position: absolute; height: 120px; width: 760px; margin-top: 52px; text-align: left; right: 821px;">
            <asp:Label ID="top3WestMELabel" runat="server" Text="West Top 3"></asp:Label>
               <asp:GridView ID="top3WestMEGridView" runat="server" AutoGenerateColumns="False"  
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
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
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

            <div id="top3CooperMEDiv" style="z-index: 1; left: 25px; top: 1858px; position: absolute; height: 120px; width: 755px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3CooperMELabel" runat="server" Text="Cooper City Top 3" style="text-align: left"></asp:Label>
               <asp:GridView ID="top3CooperMEGridView" runat="server" AutoGenerateColumns="False"  
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
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
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

            <div id="top3BarMEDiv" style="z-index: 1; left: 25px; top: 1673px; position: absolute; height: 120px; width: 755px; margin-top: 52px; text-align: left;">
            <asp:Label ID="top3BarMELabel" runat="server" Text="Bar Town Top 3"></asp:Label>
               <asp:GridView ID="top3BarMEGridView" runat="server" AutoGenerateColumns="False"  
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
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
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


