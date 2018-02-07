<%--Basic Website with Data - Project4
    CIS 212 Advanced visual Basic
    Jeffrey Martin--%>

<%@ Page Title="Suppliers" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true"CodeFile="Suppliers.aspx.vb" Inherits="Suppliers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <%--Wrapper Div used for formatting the content of the Suppliers page.--%>
    <div id="Suppliers">

        <h2><%: Title %></h2> <%--This the 'Heading' of the content for this page--%>

        <p></p>
        <p>
            List of Suppliers Page.<%--Title of the GridView--%>

            <%--This is the start of building the gridview. Ties in the datasource and various CssClasses--%>
            <asp:GridView ID="SuppliersGridView" runat="server" CssClass="SuppliersGridView" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None"
                HeaderStyle-CssClass="headerSuppliers" RowStyle-CssClass="rowsSuppliers" AlternatingRowStyle-CssClass ="rowsAlternatingSuppliers">

                 <%--Creates the columns fot the dataview by binding each field to a specific column and header text for each column--%>
                <Columns>
                    <asp:BoundField DataField="CompanyName" HeaderText="Company Name" SortExpression="CompanyName" />
                    <asp:BoundField DataField="ContactName" HeaderText="Contact Name" SortExpression="ContactName" />
                    <asp:BoundField DataField="ContactTitle" HeaderText="Contact Title" SortExpression="ContactTitle" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                    <asp:BoundField DataField="PostalCode" HeaderText="Postal Code" SortExpression="PostalCode" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                    <asp:BoundField DataField="HomePage" HeaderText="HomePage" SortExpression="HomePage" />
                </Columns>

            </asp:GridView>

            <%--This creates the datasource that will be tied into the gridview. The SQL Command is built here and passed in along with the connection string.--%>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" 
                SelectCommand="SELECT [CompanyName], [ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode], [Phone], [Country], [Fax], [HomePage] 
                FROM [Suppliers] 
                ORDER BY [CompanyName]">
            </asp:SqlDataSource>
        </p>
        <p></p>
    </div>    
</asp:Content>
