<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClubInfo.aspx.cs" Inherits="StravaClub.ClubInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <link rel="stylesheet" type="text/css" href="Content/bootstrap-theme.css" />
            <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
            <link rel="stylesheet" type="text/css" href="Content/Site.css" />
          
  
          <div role="tabpanel" class="tab-pane" id="club">
              <asp:Image ID="imgClub" runat="server" Width="35px" Height="35px" />&nbsp;&nbsp;<span class="label label-warning">Strava Morés</span>
              <asp:GridView ID="gvAthletes" runat="server" CssClass="table table-hover table-striped"  GridLines="None"  AutoGenerateColumns="false"
                        Style="max-width: 500px">
                        <Columns>
                            <asp:ImageField DataImageUrlField="ProfileMedium" HeaderText=""  ControlStyle-Width="30" ControlStyle-Height = "30"/>
                            <asp:BoundField DataField="FirstName" HeaderText="Nombe" />
                            <asp:BoundField DataField="LastName" HeaderText="Apellidos" />
                            <asp:BoundField DataField="City" HeaderText="Población" />
                            <asp:BoundField DataField="CreatedAt" HeaderText="Resgistro"  DataFormatString="{0:d}"/>
                        </Columns>
                </asp:GridView>
          </div>
        
</asp:Content>
