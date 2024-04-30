<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.master" AutoEventWireup="true" CodeFile="Ogrenciler.aspx.cs" Inherits="Ogrenciler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style32 {
            width: 100%;
        }
        .auto-style33 {
            width: 197px;
        }
        .auto-style34 {
            width: 197px;
            height: 24px;
        }
        .auto-style35 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style32">
        <tr>
            <td>
                <table class="auto-style32">
                    <tr>
                        <td class="auto-style34">
                            <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                    ögrenciisim:
                                    <asp:Label ID="ögrenciisimLabel" runat="server" Text='<%# Eval("ögrenciisim") %>'></asp:Label>
                                    <br />
                                    ögrencibölüm:
                                    <asp:Label ID="ögrencibölümLabel" runat="server" Text='<%# Eval("ögrencibölüm") %>' />
                                    <br />
                                    ogrencimezun:
                                    <asp:Label ID="ogrencimezunLabel" runat="server" Text='<%# Eval("ogrencimezun") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_mvcConnectionString %>" SelectCommand="SELECT [ögrenciisim], [ögrencibölüm], [ogrencimezun] FROM [Tab_ögrenciisim]"></asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

