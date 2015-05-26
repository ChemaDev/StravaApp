<%@ Page Title="mensual Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StravaClub._Default" %>

        <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


            <link rel="stylesheet" type="text/css" href="Content/bootstrap-theme.css" />
            <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
            <link rel="stylesheet" type="text/css" href="Content/Site.css" />
          

     
        <ul class="nav nav-tabs" role="tablist" id="myTab">
           <li role="presentation"><a href="#club" aria-controls="club" role="tab" data-toggle="tab">Club</a></li>
          <li role="presentation"><a href="#semanal" aria-controls="semanal" role="tab" data-toggle="tab">Semana</a></li>
          <li role="presentation" class="active"><a href="#mensual" aria-controls="mensual" role="tab" data-toggle="tab">Mes</a></li>
          <li role="presentation"><a href="#anual" aria-controls="anual" role="tab" data-toggle="tab">Anual</a></li>
        </ul>

        <div class="tab-content">
          <div role="tabpanel" class="tab-pane" id="club">
              <asp:Image ID="imgClub" runat="server" Width="50px" Height="50px" />
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
          <div role="tabpanel" class="tab-pane active" id="mensual">
              <div class="row" id="ResumenMes">
                <div class="col-md-4">
                    <asp:GridView ID="gdResumenMes" runat="server" CssClass="table table-hover table-striped" GridLines="None" AllowSorting="true"  AutoGenerateColumns="false"
                        Style="max-width: 500px">
                        <Columns>
                            <asp:ImageField DataImageUrlField="ProfileMedium" HeaderText=""  ControlStyle-Width="30" ControlStyle-Height = "30" />
                             <asp:BoundField DataField="Athlete" HeaderText="Atleta" ItemStyle-Width="100px" />
                            <asp:BoundField DataField="TotalKms" HeaderText="Total"  DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="KmsRide" HeaderText="Ride"  DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="KmsRun" HeaderText="Running"  DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="TimeSpent" HeaderText="TIempo" />
                        </Columns>
                    </asp:GridView>
 
                </div>
      
                </div>

          </div>
          <div role="tabpanel" class="tab-pane" id="semanal">
              <div class="row" id="ResumenSemanal">
                <div class="col-md-4">
                   <asp:GridView ID="gvResumenSemanal" runat="server" CssClass="table table-hover table-striped" GridLines="None"  AutoGenerateColumns="false"
                        Style="max-width: 500px">
                         <Columns>
                            <asp:ImageField DataImageUrlField="ProfileMedium" HeaderText=""  ControlStyle-Width="30" ControlStyle-Height = "30" />
                             <asp:BoundField DataField="Athlete" HeaderText="Atleta" ItemStyle-Width="100px" />
                            <asp:BoundField DataField="TotalKms" HeaderText="Total"  DataFormatString="{0:n}" />
                            <asp:BoundField DataField="KmsRide" HeaderText="Ride"  DataFormatString="{0:n}" />
                            <asp:BoundField DataField="KmsRun" HeaderText="Running"  DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="TimeSpent" HeaderText="TIempo" />
                        </Columns>
                    </asp:GridView>
 
                </div>
      
            </div>

          </div>
          
          <div role="tabpanel" class="tab-pane" id="anual">
            <div class="row" id="ResumenAnual">
                <div class="col-md-4">
                    <asp:GridView ID="gvResumenAnual" runat="server" CssClass="table table-hover table-striped" GridLines="None" AllowSorting="true"  AutoGenerateColumns="false"
                        Style="max-width: 500px">
                        <Columns>
                            <asp:ImageField DataImageUrlField="ProfileMedium" HeaderText="" ControlStyle-Width="30" ControlStyle-Height = "30" ItemStyle-Height="20px" />
                             <asp:BoundField DataField="Athlete" HeaderText="Atleta" ItemStyle-Width="100px" />
                            <asp:BoundField DataField="TotalKms" HeaderText="Total" DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="KmsRide" HeaderText="Ride" DataFormatString="{0:n}" />
                            <asp:BoundField DataField="KmsRun" HeaderText="Running" DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="TimeSpent" HeaderText="TIempo" />
                        </Columns>
                    </asp:GridView>
 
                </div>
      
                </div>
          </div>
        </div>

        <script>
            $(function () {
                $('#myTab a:last').tab('show')
            })
        </script>


    
   
    
    
    
</asp:Content>
