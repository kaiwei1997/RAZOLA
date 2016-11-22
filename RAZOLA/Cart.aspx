<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="RAZOLA.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" runat="server">
    <style>
        #form1{
            margin:10px 100px 10px 150px;
        }
    </style>
    <form id="form1" runat="server">
        <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Shopping Cart</h1>
            </hgroup>
            <asp:GridView ID="CartGridView" runat="server" AutoGenerateColumns="False" EmptyDataText="Your shopping cart is empty.">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="Code" ReadOnly="True">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Product" ReadOnly="True">
                    <HeaderStyle HorizontalAlign="Left" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Price" DataFormatString="{0:C}" HeaderText="Price" ReadOnly="True">
                    <HeaderStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
            </asp:GridView>

            </div>
        </section>
    </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
