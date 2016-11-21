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
    <style>
        #form1{
            margin:10px 10px 10px 10px;
        }
    </style>
    <form id="form1" runat="server">
    <section class="main">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Special Discount</h1>
            </hgroup>
            <asp:DataList ID="PromotionProduct" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" CellPadding="20" DataKeyField="ProductID" DataSourceID="SqlDataSource1" Height="195px" HorizontalAlign="Justify" Width="1264px">
                <ItemTemplate>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    <asp:Image ID="ProductImage1" runat="server"  Width="<%# 100 %>" ImageUrl='<%# Eval("ProductImage") %>' />
                    <br />
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price"," Regularly {0:c}") %>' />
                    <br />
                    <asp:Label ID="OffertextLabel" runat="server" Text='<%# Eval("Offertext") %>' />
                    <br />
                    <asp:Label ID="SalePriceLabel" runat="server" Text='<%# Eval("SalePrice", "Now only @ {0:c} !") %>' />
<br />
                    <br />
                </ItemTemplate>

                    </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RazolaConnetion %>" SelectCommand="GetPromotionAndProduct" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </div>
        </section>
    </form>
</asp:Content>
