<%--Basic Website with Data 
    Jeffrey Martin--%>

<%@ Page Title="Products" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Products.aspx.vb" Inherits="About" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <%--Wrapper Div used for formatting the content of the Products page.--%>
    <div  ID="ProductContent">

        <h2><%: Title %></h2> <%--This the 'Heading' of the content for this page--%>

        <p>Product Inventory Page.<%--Title of the GridView--%>

            <%--This is the start of building the gridview. Ties in the datasource and various CssClasses--%>
            <asp:GridView ID="GridView1" runat="server" CssClass="GridView1" AutoGenerateColumns="False" DataSourceID="SqlDataSource2"
                 HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AlternatingRowStyle-CssClass ="rowsAlternating">

                 <%--Creates the columns fot the dataview by binding each field to a specific column and header text for each column--%>
                <Columns>
                    <asp:BoundField DataField="CategoryName" HeaderText="Category Name" SortExpression="CategoryName"  />
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" SortExpression="ProductName" />
                    <asp:BoundField DataField="QuantityPerUnit" HeaderText="Quantity Per Unit" SortExpression="QuantityPerUnit" />
                    <asp:BoundField DataField="UnitsInStock" HeaderText="Units In Stock" SortExpression="UnitsInStock" />
                </Columns>
            </asp:GridView>

            <%--This creates the datasource that will be tied into the gridview. The SQL Command is built here and passed in along with the connection string.--%>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:NORTHWNDConnectionString %>" 
                SelectCommand="SELECT [CategoryName], [ProductName], [QuantityPerUnit], [UnitsInStock] FROM [Products by Category] 
                               WHERE ([Discontinued] = @Discontinued) ORDER BY [CategoryName], [ProductName]">

                <%--This shows an example of how a parameter is passed into the SQL builder above. In this case products thate are not discontinued will be selected.--%>
                <SelectParameters>
                    <asp:Parameter DefaultValue="false" Name="Discontinued" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </p>
    </div>
</asp:Content>
