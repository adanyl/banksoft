<%@ Page Title="Accounts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="bank1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    &nbsp;</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Button" />
</p>
<p>
    <asp:GridView ID="Gridacc" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ForeColor="Black" DataKeyNames="Id">
        <Columns>
            <asp:TemplateField></asp:TemplateField>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="APSing" HeaderText="APSing" SortExpression="APSing" />
            <asp:BoundField DataField="CurrencyISOCode" HeaderText="CurrencyISOCode" SortExpression="CurrencyISOCode" />
            <asp:BoundField DataField="IBAN" HeaderText="IBAN" SortExpression="IBAN" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="AccounttypeId" HeaderText="AccounttypeId" SortExpression="AccounttypeId" />
            <asp:BoundField DataField="DateOpen" HeaderText="DateOpen" SortExpression="DateOpen" />
            <asp:BoundField DataField="DateClose" HeaderText="DateClose" SortExpression="DateClose" />
            <asp:BoundField DataField="AccountStateId" HeaderText="AccountStateId" SortExpression="AccountStateId" />
            <asp:BoundField DataField="ResponsibleUser" HeaderText="ResponsibleUser" SortExpression="ResponsibleUser" />
            <asp:BoundField DataField="AccRestOpen" HeaderText="AccRestOpen" SortExpression="AccRestOpen" />
            <asp:BoundField DataField="OperDate" HeaderText="OperDate" SortExpression="OperDate" />
            <asp:BoundField DataField="AccRestNow" HeaderText="AccRestNow" SortExpression="AccRestNow" />
            <asp:BoundField DataField="AccDebit" HeaderText="AccDebit" SortExpression="AccDebit" />
            <asp:BoundField DataField="AccCredit" HeaderText="AccCredit" SortExpression="AccCredit" />
        </Columns>
        <PagerStyle BackColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnection %>" SelectCommand="SELECT [APSing], [CurrencyISOCode], [IBAN], [Description], [AccounttypeId], [DateOpen], [DateClose], [AccountStateId], [ResponsibleUser], [AccRestOpen], [OperDate], [AccRestNow], [AccDebit], [AccCredit], [Id] FROM [Accounts]"></asp:SqlDataSource>
</p>
<p>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add account" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
</p>
</asp:Content>
