<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenNewIn.aspx.cs" Inherits="RAZOLA.MenNewIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
    <section class="featured">
        <div class="content-wrapper">

            <!-- Image -->
           <div id="carousel" class="carousel slide" data-ride="carousel">
              <!-- Indicators -->
              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                <div class="item active">
                  <img class="img-responsive center-block" src="Images/Men1.jpg" alt="New In">
                  </div>
            </div>
               </div>
        <!-- End Image -->
            </div>
    </section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        #form1{
            margin:10px 10px 10px 10px;
        }
    </style>
    <form id="form1" runat="server">
        <section class="main">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>SHOP MEN</h1>
            </hgroup>
            <h4>Please Select category:</h4>
             <asp:DropDownList ID="ddl_Category" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CategoryID" Font-Size="Small" Height="19px" Width="200px">
             </asp:DropDownList>

             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RazolaConnectionString %>" SelectCommand="GetMenCategory" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

             </div>
    </section>
    </form>
</asp:Content>
