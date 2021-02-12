<%@ Page Title="Add new Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="accadd.aspx.cs" Inherits="bank1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="18pt" Text="Add new account"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    Active/Passive&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Height="17px"></asp:TextBox>
</p>
<p>
    Currency&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p>
    IBAN&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
<p>
    Description&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
</p>
<p>
    Account type id&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
</p>
<p>
    Account state id&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
</p>
<p>
    Responsible User&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Buttonadd" runat="server" OnClick="Buttonadd_Click" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
</p>
<p>
&nbsp;&nbsp;&nbsp;
</p>
</asp:Content>
