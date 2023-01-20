<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EqShopThais.aspx.cs" Inherits="EqShopThais" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="EqShopThaisInside">

        <asp:Button ID="Button1" runat="server" Text="Upgrade amulet" class="upgButton"/>
        <asp:Button ID="Button2" runat="server" Text="Upgrade helmet" class="upgButton"/>
        <asp:Button ID="Button3" runat="server" Text="Upgrade weapon" class="upgButton"/>
        <asp:Button ID="Button4" runat="server" Text="Upgrade armor" class="upgButton"/>
        <asp:Button ID="Button5" runat="server" Text="Upgrade shield" class="upgButton"/>
        <asp:Button ID="Button6" runat="server" Text="Upgrade legs" class="upgButton"/>
        <asp:Button ID="Button7" runat="server" Text="Upgrade boots" class="upgButton"/>

    </div>
</asp:Content>

