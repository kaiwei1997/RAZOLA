<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RAZOLA.Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">

            <!-- Slide Show -->
           <div id="carousel" class="carousel slide" data-ride="carousel">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
              </ol>

              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                <div class="item active">
                  <img class="img-responsive center-block" src="Images/SlideShow1.jpg" alt="New In">
                  <div class="carousel-caption">
                    
                  </div>
                </div>
                <div class="item">
                  <img class="img-responsive center-block" src="Images/SlideShow2.jpg" alt="Chinese New Year Collection">
                  <div class="carousel-caption">
                   
                  </div>
                </div>
                <div class="item">
                <img class="img-responsive center-block" src="Images/SlideShow3.jpg" alt="RAZOLA Latest For All">
                  <div class="carousel-caption">
                    
              </div>
              </div>
                  </div>

              <!-- Controls -->
              <a class="left carousel-control" href="#carousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="right carousel-control" href="#carousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
        <!-- End Slide Show -->
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Today Special</h1>
            </hgroup>
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">

                    </asp:DataList>
            </div>
        </section>
    </form>
</asp:Content>
