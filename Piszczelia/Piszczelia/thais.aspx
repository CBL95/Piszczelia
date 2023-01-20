<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="thais.aspx.cs" Inherits="thais" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div class="thais">
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="TrainerButton_Click">
        <asp:Image ID="Image1" runat="server" src="images/Exercise_Dummy.gif" CssClass ="trainer"/>      
    </asp:LinkButton>
   
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="GoToEqShopThais">
        <asp:Image ID="Image2" runat="server" src="images/items/magic_plate_armor.gif" CssClass="eqShopThais" />
    </asp:LinkButton>

    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="GoToManaShopThais">
        <asp:Image ID="Image3" runat="server" src="images/items/Great_Mana_Potion.gif" CssClass="ManaShopThais" />
    </asp:LinkButton>

    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="GoToCyclops">
        <asp:Image ID="Image4" runat="server" src="images/monsters/Cyclops.gif" CssClass="GoToCyclops" />
    </asp:LinkButton>

</div>
</asp:Content>

