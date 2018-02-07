<%--Basic Website with Data 
    Jeffrey Martin
    
    This the home page and just has basic information on it.--%>

<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--Wrapper Div used for formatting the content of the home page.--%>
    <div ID="Home">    

        <div> <%--This  div is the 'Heading' of the content for this page--%>
            
            <asp:Image ID="Image1" runat="server" Height="93px" ImageUrl="~/Images/Northwind.jpg" Width="298px" />

            <h1 class="text-center">Northwind Information Lists.</h1>

            <p></p>

        </div>

        <div class="row"> <%--This div is used as the body content. Each section is placed in a div (rows) for easy display of information in either standard 
            browser view, or in mobile view--%>

            <div class="col-md-4">
                <h2>Customers</h2>
                <p> The list of our customers and their contact infromation.</p>
            </div>

            <div class="col-md-4">
                <h2>Products</h2>
                <p>The list of active products and their inventory.</p>
            </div>

            <div class="col-md-4">
                <h2>Suppliers</h2>
               <p>The list of our suppliers and their contact information.</p>
            </div>

        </div>
</div>
</asp:Content>
