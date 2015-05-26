<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClubInfo.aspx.cs" Inherits="StravaClub.ClubInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        
         
        <link rel="stylesheet" type="text/css" href="Content/bootstrap-theme.css" />
        <link rel="stylesheet" type="text/css" href="Content/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="Content/Site.css" />
          
            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script type="text/javascript">
            $(window).load(function () {
               // $(".loader").fadeOut("slow");

                //setTimeout(function () {
                //    $(".loader").fadeOut("slow");

                //    // Do something after 5 seconds
                //}, 1000);
            })
        </script>
  
  <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d8703.13505293087!2d-1.56837018632577!3d41.474541090530636!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1ses!2ses!4v1432633242582" width="100%" height="200" frameborder="0" style="border:0"></iframe>
          <div role="tabpanel" class="tab-pane" id="club">
            <span class="label label-warning">Miembros</span>
              <asp:GridView ID="gvAthletes" runat="server" CssClass="table table-hover table-striped"  GridLines="None"  AutoGenerateColumns="false"
                        Style="max-width: 500px">
                        <Columns>
                            <asp:ImageField DataImageUrlField="ProfileMedium" HeaderText=""  ControlStyle-Width="30" ControlStyle-Height = "30"/>
                            <asp:BoundField DataField="Athlete" HeaderText="Miembro" />
                            <asp:BoundField DataField="Location" HeaderText="Población" />
                           
                            <asp:BoundField DataField="DateCreated" HeaderText="Resgistro"  DataFormatString="{0:dd/MM/yy}"/>
                        </Columns>
                </asp:GridView>
          </div>
        
</asp:Content>
