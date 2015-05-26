<%@ Page Title="mensual Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StravaClub._Default" %>

        <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
           <link rel="stylesheet" type="text/css" href="Content/bootstrap-theme.css" />
           <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
           <link rel="stylesheet" type="text/css" href="Content/Site.css" />
        <script src="http://www.jeasyui.com/easyui/jquery.min.js"></script>
        <script src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script>


     <nav      class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Morés</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="ClubInfo.aspx">Club <span class="sr-only">(current)</span></a></li>
        <li><a href="Default.aspx">Estadíticas</a></li>
       
      </ul>
 
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
    </nav>
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
                            <asp:BoundField DataField="FirstName" HeaderText="Name" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                            <asp:BoundField DataField="City" HeaderText="Country" />
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
