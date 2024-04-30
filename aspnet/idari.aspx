<%@ Page Title="" Language="C#" MasterPageFile="~/Anasayfa.master" AutoEventWireup="true" CodeFile="idari.aspx.cs" Inherits="idari" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style32 {
        width: 100%;
    }
    .auto-style33 {
        height: 40px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    İDARİ</p>
<table class="auto-style32">
    <tr>
        <td class="auto-style33">Prof .Dr. Murat Olgun</td>
        <td class="auto-style33">
            <asp:Image ID="Image2" runat="server" DescriptionUrl="~/resim/2" Height="47px" Width="67px" ImageUrl="~/resim/2.jpeg" />
        </td>
    </tr>
    <tr>
        <td>Ögr .Dr.Esra Sertel</td>
        <td>
            <asp:Image ID="Image3" runat="server" DescriptionUrl="~/resim/Crop.jpeg" Height="41px" Width="69px" ImageUrl="~/resim/Crop (1).jpeg" />
        </td>
    </tr>
    <tr>
        <td>İsmail Sinan Zavar</td>
        <td>
            <asp:Image ID="Image4" runat="server" DescriptionUrl="~/resim/Crop.png" Height="48px" Width="71px" ImageUrl="~/resim/3.png" />
        </td>
    </tr>
</table>
</asp:Content>

