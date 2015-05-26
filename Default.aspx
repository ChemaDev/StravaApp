<%@ Page Title="mensual Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StravaClub._Default" %>

        <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <style type="text/css">
        th
        {
        cursor:pointer;
        background-color:#dadada;
        color:Black;
        font-weight:bold;
        text-align:left; 
        }
        th.headerSortUp 
        {     
        background-image: url(images/asc.gif);
        background-position: right center;
        background-repeat:no-repeat; 
        }
        th.headerSortDown 
        {     
        background-image: url(images/desc.gif);   
        background-position: right center;
        background-repeat:no-repeat; 
        } 
        td
        {
        border-bottom: solid 1px #dadada;	
        }
        </style>
        

        <link rel="stylesheet" type="text/css" href="Content/bootstrap-theme.css" />
        <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="Content/Site.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        
        <script src="scripts/jquery-1.4.3.min.js" type="text/javascript"></script>

        <script src="scripts/jquery.tablesorter.min.js" type="text/javascript"></script>

        <script type="text/javascript">
            $(document).ready(function () {

                debugger;
                //$("#gvResumenAnual").tablesorter();
                $("#GridView1").tablesorter();
            });
        </script>

        <ul class="nav nav-tabs" role="tablist" id="myTab">
          <li role="presentation" class="active"><a href="#semanal" aria-controls="semanal" role="tab" data-toggle="tab">Semana</a></li>
          <li role="presentation" ><a href="#mensual" aria-controls="mensual" role="tab" data-toggle="tab">Mes</a></li>
          <li role="presentation"><a href="#anual" aria-controls="anual" role="tab" data-toggle="tab">Año</a></li>
        </ul>

      
        <div class="tab-content">
          
          <div role="tabpanel" class="tab-pane active" id="mensual">
              <div class="row" id="ResumenMes">
                <div class="col-md-4">
                    <asp:GridView ID="gdResumenMes" runat="server" CssClass="table table-hover table-striped" GridLines="None" AllowSorting="true"  AutoGenerateColumns="false"
                        Style="width:100%">
                        <Columns>
                            <asp:ImageField DataImageUrlField="ProfileMedium" HeaderText=""  ControlStyle-Width="30" ControlStyle-Height = "30" />
                             <asp:BoundField DataField="Athlete" HeaderText="Atleta" ItemStyle-Width="100px" />
                            <asp:BoundField DataField="TotalKms" HeaderText="Total"  DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="KmsRide" HeaderText="Ride"  DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="KmsRun" HeaderText="Running"  DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="TimeSpent" HeaderText="Tiempo" />
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
                            <asp:BoundField DataField="TimeSpent" HeaderText="Tiempo" />
                        </Columns>
                    </asp:GridView>
 
                </div>
      
            </div>

          </div>
          <div role="tabpanel" class="tab-pane" id="anual">
            <div class="row" id="ResumenAnual">
                <div class="col-md-4">
                    <asp:GridView ID="gvResumenAnual" runat="server" CssClass="table table-hover table-striped"  GridLines="None" AllowSorting="true"  AutoGenerateColumns="false"
                        Style="max-width: 500px">
                        <Columns>
                            <asp:ImageField DataImageUrlField="ProfileMedium" HeaderText="" ControlStyle-Width="30" ControlStyle-Height = "30" ItemStyle-Height="20px" />
                             <asp:BoundField DataField="Athlete" HeaderText="Atleta" ItemStyle-Width="100px" />
                            <asp:BoundField DataField="TotalKms" HeaderText="Total" DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="KmsRide" HeaderText="Ride" DataFormatString="{0:n}" />
                            <asp:BoundField DataField="KmsRun" HeaderText="Running" DataFormatString="{0:n}"/>
                            <asp:BoundField DataField="TimeSpent" HeaderText="Tiempo" />
                        </Columns>
                    </asp:GridView>
                    <%--<asp:GridView ID="GridView1" runat="server" CssClass="tablesorter"  CellPadding="4" ForeColor="#333333" GridLines="Horizontal"
                        Font-Size="9pt" Font-Names="Arial" AutoGenerateColumns="False" 
                          BorderColor="#dadada" BorderStyle="Solid" BorderWidth="1px">
                        <Columns>
                            <asp:BoundField DataField="Athlete" HeaderText="Athlete" ItemStyle-Width="40" />
                            <asp:BoundField DataField="TotalKms" HeaderText="TotalKms" ItemStyle-Width="80" />
                            <asp:BoundField DataField="KmsRide" DataFormatString="{0:n0}" HeaderText="KmsRide" ItemStyle-Width="60" />
                        </Columns> 
                    </asp:GridView>--%>
                </div>
      
                </div>
          </div>

        </div>

     <%--   <script>
            $(function () {
                $('#myTab a:last').tab('show')
            })
        </script>--%>


    
   
    
    
    
</asp:Content>
