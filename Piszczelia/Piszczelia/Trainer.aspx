<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Trainer.aspx.cs" Inherits="Trainer" %>
<%@ Register Assembly="EO.Web" Namespace="EO.Web" TagPrefix="eo" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class ="trainerRoom">
          <asp:Image ID="Image1" runat="server" src="images/Exercise_Dummy.gif" CssClass ="trainerInTrainerRoom"/>
        
               
                <eo:ProgressBar class= "progressTrainer" ID="ProgressBar1" runat="server" Width="70px" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ClientIDMode="AutoID" ControlSkinID="None" Height="8px" IndicatorColor="0, 192, 0" Value="30">

                </eo:ProgressBar>

        <asp:Button ID="Button1" runat="server" Text="Attack" OnClick="Atak" class="atakujButton"/>
    </div>

</asp:Content>

