<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManaShop.aspx.cs" Inherits="ManaShop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class ="ManaShopThaisInside">

        <asp:Button ID="Button1" runat="server" Text="Buy 1 Health Potion" class="upgButton2"/>
        <asp:Button ID="Button2" runat="server" Text="Buy 10 Health Potion" class="upgButton2"/>
        <asp:Button ID="Button3" runat="server" Text="Buy 1 Mana Potion" class="upgButton2"/>
        <asp:Button ID="Button4" runat="server" Text="Buy 10 Mana Potion" class="upgButton2"/>

        <asp:Button ID="Button5" runat="server" Text="Buy 1 Magic Rune" class="upgButton2"/>
        <asp:Button ID="Button6" runat="server" Text="Buy 10 Magic Rune" class="upgButton2"/>


    </div>
</asp:Content>

