<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.master" AutoEventWireup="true" CodeFile="Akademik.aspx.cs" Inherits="Akademik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    Akademik
</p>
<p>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Dersid" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            Dersid:
            <asp:Label ID="DersidLabel" runat="server" Text='<%# Eval("Dersid") %>'></asp:Label>
            <br />
            Dersad:
            <asp:Label ID="DersadLabel" runat="server" Text='<%# Eval("Dersad") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_mvcConnectionString %>" SelectCommand="SELECT [Dersid], [Dersad] FROM [Tab_Dersler]"></asp:SqlDataSource>
</p>
</asp:Content>

