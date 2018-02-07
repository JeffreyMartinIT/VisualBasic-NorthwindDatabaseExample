<%--Basic Website with Data 
    Jeffrey Martin--%>

<%@ Page Title="Customers" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Customers.aspx.vb" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--Wrapper Div used for formatting the content of the Customers page.--%>
    <div id="Customers">


        <h2><%: Title %></h2> <%--This the 'Heading' of the content for this page--%>

        <p>
            List of Customers Page. <%--Title of the GridView--%>

            <%--This is the start of building the gridview. Ties in the datasource and various CssClasses--%>
            <asp:GridView ID="CustomerGridView" runat="server" CssClass="Customers" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                HeaderStyle-CssClass="headerCustomers" RowStyle-CssClass="rowsCustomers" AlternatingRowStyle-CssClass ="rowsAlternatingCustomers">

                <%--Creates the columns fot the dataview by binding each field to a specific column and header text for each column--%>
                <Columns>
                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" SortExpression="CompanyName" />
                    <asp:BoundField DataField="ContactName" HeaderText="Contact Name" SortExpression="ContactName" />
                    <asp:BoundField DataField="ContactTitle" HeaderText="Contact Title" SortExpression="ContactTitle" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                    <asp:BoundField DataField="PostalCode" HeaderText="Postal Code" SortExpression="PostalCode" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                </Columns>
            </asp:GridView>

            <%--This creates the datasource that will be tied into the gridview. The SQL Command is built here and passed in along with the connection string.--%>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" 
                SelectCommand="SELECT [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Country], 
                               [Phone] FROM [Customers] ORDER BY [CompanyName]"></asp:SqlDataSource>

        </p>

    </div>
</asp:Content>
