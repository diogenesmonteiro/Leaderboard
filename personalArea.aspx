<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personalArea.aspx.cs" Inherits="LeaderBoard.personalArea" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="width: 970px; height: 415px;">
   <form id="personalAreaForm" runat="server">
      <div style="width: 960px; height: 397px; margin-left: 5px; margin-top: 8px;" id="personalDataMainDiv">
         <div id="personalDataDiv" style="z-index: 1; left: 15px; top: 30px; position: absolute; height: 365px; width: 375px; text-align: left;">
            <asp:GridView ID="personalDataGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False"  
               Width="365px" BackColor="White" BorderColor="WhiteSmoke" BorderStyle="None" BorderWidth="0px" CellPadding="2" 
                  Font-Names="Verdana" Font-Size="X-Small" ForeColor="Black" GridLines="Horizontal" PageSize="14"
                     Height="96px" onpageindexchanging="personalDataGridView_PageIndexChanging" style="margin-top: 5px">
               <Columns>
                  <asp:BoundField DataField="DateItem" HeaderText="Date" SortExpression="DateItem" DataFormatString="{0:MM/dd/yyyy}" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="TimeMinutesItem" HeaderText="Mins" SortExpression="TimeMinutesItem" >
                  <HeaderStyle HorizontalAlign="Left" />
                  <ItemStyle HorizontalAlign="Left" />
                  </asp:BoundField>
                  <asp:BoundField DataField="TimeSecondsItem" HeaderText="Secs" SortExpression="TimeSecondsItem"  >
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
         <div id="personalGraphDiv" style="z-index: 1; left: 410px; top: 30px; position: absolute; height: 370px; width: 550px">
            <asp:Chart ID="personalDataChart" runat="server" Height="345px" style="margin-top: 21px; margin-left: 24px;" Width="540px">
               <Series>
                  <asp:Series Name="Weight" ChartType="Column" Color="SteelBlue" XValueMember="DateItem" YValueMembers="Weight">
                  </asp:Series>
                  <asp:Series Name="Time" ChartType="Line" Color="Red" XValueMember="DateItem" YValueMembers="TimeItem">
                  </asp:Series>
               </Series>
               <ChartAreas>
                  <asp:ChartArea Name="personalChartArea">
                     <Area3DStyle Enable3D="True" LightStyle="Realistic" PointDepth="50" />
                  </asp:ChartArea>
               </ChartAreas>
            </asp:Chart>
            <br />
            <asp:Label ID="personalChartMsgLabel" runat="server"></asp:Label>
         </div>
      </div>
   </form>
</body>
</html>
