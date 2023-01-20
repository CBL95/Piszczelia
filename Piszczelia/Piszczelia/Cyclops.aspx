<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cyclops.aspx.cs" Inherits="Cyclops" %>
<%@ Register Assembly="EO.Web" Namespace="EO.Web" TagPrefix="eo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="CyclopsInside">

  
     
        <progress id="health" value="100" max="100"></progress>
        
        <asp:Image ID="Image1" runat="server" src="images/monsters/Cyclops.gif" CssClass ="Cyclop"/>

         <eo:ProgressBar class= "CyclopsHpBar" ID="CyclopsHp" runat="server" Width="70px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ClientIDMode="AutoID" ControlSkinID="None" Height="8px" IndicatorColor="0, 192, 0" Value="100">
         </eo:ProgressBar>

         <eo:ProgressBar class= "PlayerHpBar" ID="ProgressBar1" runat="server" Width="70px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ClientIDMode="AutoID" ControlSkinID="None" Height="8px" IndicatorColor="0, 192, 0" Value="100">
         </eo:ProgressBar>

        <asp:Button ID="Button3" runat="server" Text="Attack" class="expButton" OnClick="Button3_Click"/>
        <asp:Button ID="Button1" runat="server" Text="Use Mana Potion" class="expButton"/>
        <asp:Button ID="Button2" runat="server" Text="Use Health Potion" class="expButton"/>
        <asp:Button ID="Button4" runat="server" Text="Use Rune" class="expButton" OnClick="Button4_Click"/><br />
        <br />
      

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" UpdateCommand="UPDATE character SET rune -= 1 WHERE id = @id" ConnectionString="Data Source=DESKTOP-JPO11JB\SQLEXPRESS;Initial Catalog=piszczel;Integrated Security=True">
                <UpdateParameters>
                    <asp:SessionParameter Name="id" SessionField="postac_id" />
                </UpdateParameters>
            </asp:SqlDataSource>


    </div>

</asp:Content>

