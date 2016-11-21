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
            margin:10px 100px 10px 150px;
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="1196px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" Visible="False" />
                    <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" Visible="False" />
                    <asp:ImageField DataImageUrlField="ProductImage" DataImageUrlFormatString="~\{0}">
                        <ControlStyle Height="150px" Width="150px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="ProductImage" HeaderText="Product Image" SortExpression="ProductImage" Visible="False" />
                    <asp:BoundField DataField="Name" HeaderText="Product" SortExpression="Name">
                    <HeaderStyle Font-Size="Medium" HorizontalAlign="Justify" />
                    <ItemStyle Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Description" HeaderText="Product Description" SortExpression="Description">
                    <HeaderStyle Font-Size="Medium" />
                    <ItemStyle Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Original Price" SortExpression="Price">
                    <HeaderStyle Font-Size="Medium" />
                    <ItemStyle Font-Size="Medium" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SalePrice" DataFormatString="On Sales {0:c} !" HeaderText="Sale Price" SortExpression="SalePrice">
                    <ControlStyle Font-Bold="False" />
                    <HeaderStyle BorderStyle="None" Font-Size="Medium" />
                    <ItemStyle BorderStyle="None" Font-Bold="True" Font-Size="Large" />
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" SelectText="Add To Cart" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RazolaConnectionString %>" SelectCommand="SELECT Products.ProductID, Products.CategoryID, Products.Name, Products.Description, Products.Price, Products.ProductImage, PromotionProduct.SalePrice FROM Products LEFT OUTER JOIN PromotionProduct ON PromotionProduct.ProductID = Products.ProductID where (Products.CategoryID = @CategoryID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddl_Category" Name="CategoryID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />

             </div>
    </section>
    </form>
</asp:Content>
