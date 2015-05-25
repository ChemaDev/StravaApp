<%@ Page Title="mensual Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StravaClub._Default" %>

        <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
           <link rel="stylesheet" type="text/css" href="Content/bootstrap-theme.css" />
           <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
           <link rel="stylesheet" type="text/css" href="Content/Site.css" />

        <ul class="nav nav-tabs" role="tablist" id="myTab">
          <li role="presentation"><a href="#semanal" aria-controls="semanal" role="tab" data-toggle="tab">Semana</a></li>
          <li role="presentation" class="active"><a href="#mensual" aria-controls="mensual" role="tab" data-toggle="tab">Mes</a></li>
          <li role="presentation"><a href="#athletes" aria-controls="athletes" role="tab" data-toggle="tab">athletes</a></li>
          <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">Anual</a></li>
        </ul>

        <div class="tab-content">
          <div role="tabpanel" class="tab-pane active" id="mensual">
              <div class="row" id="ResumenMes">
                <div class="col-md-4">
                    <asp:GridView ID="gdResumenMes" runat="server" CssClass="table table-hover table-striped" GridLines="None" AllowSorting="true"  AutoGenerateColumns="false"
                        Style="max-width: 500px">
                        <Columns>
                            <asp:ImageField DataImageUrlField="ProfileMedium" HeaderText="" HeaderStyle-Width="20px" ItemStyle-Width="20px" ItemStyle-Height="20px" />
                             <asp:BoundField DataField="Athlete" HeaderText="Atleta" ItemStyle-Width="100px" />
                            <asp:BoundField DataField="TotalKms" HeaderText="Total" />
                            <asp:BoundField DataField="KmsRide" HeaderText="Ride" />
                            <asp:BoundField DataField="KmsRun" HeaderText="Run" />
                            <asp:BoundField DataField="TimeSpent" HeaderText="TIempo" />
                        </Columns>
                    </asp:GridView>
 
                </div>
      
                </div>

          </div>
          <div role="tabpanel" class="tab-pane" id="semanal">
              <div class="row" id="ResumenSemanal">
                <div class="col-md-4">
                   <asp:GridView ID="gvResumenSemanal" runat="server" CssClass="table table-hover table-striped" GridLines="None"  AutoGenerateColumns="true"
                        Style="max-width: 500px">
               
                    </asp:GridView>
 
                </div>
      
            </div>

          </div>
          <div role="tabpanel" class="tab-pane" id="athletes">
              <div class="row">
                <div class="col-md-4">
                    <asp:GridView ID="gvAthletes" runat="server" CssClass="table table-hover table-striped"  GridLines="None"  AutoGenerateColumns="false"
                        Style="max-width: 500px">
                        <Columns>
                            <asp:ImageField DataImageUrlField="ProfileMedium" HeaderText="" />
                            <asp:BoundField DataField="FirstName" HeaderText="Name" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                            <asp:BoundField DataField="City" HeaderText="Country" />
                        </Columns>
                    </asp:GridView>
 
                </div>
      
            </div>
          </div>
          <div role="tabpanel" class="tab-pane" id="settings">
            
          </div>
        </div>

        <script>
            $(function () {
                $('#myTab a:last').tab('show')
            })
        </script>


    

    
    
    
</asp:Content>
