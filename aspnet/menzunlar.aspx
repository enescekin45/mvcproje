<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.master" AutoEventWireup="true" CodeFile="menzunlar.aspx.cs" Inherits="menzunlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    Menzunlar</p>
<p>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            menzunisim:
            <asp:Label ID="menzunisimLabel" runat="server" Text='<%# Eval("menzunisim") %>'></asp:Label>
            <br />
            menzunbölüm:
            <asp:Label ID="menzunbölümLabel" runat="server" Text='<%# Eval("menzunbölüm") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_mvcConnectionString %>" SelectCommand="SELECT [menzunisim], [menzunbölüm] FROM [Tab_menzunlar]"></asp:SqlDataSource>
</p>
</asp:Content>

