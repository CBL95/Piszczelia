<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="logowanie.aspx.cs" Inherits="logowanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>





<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="logowanie">
        <div>
            <asp:TextBox ID="LoginTextBox" CssClass="tibiaInput1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
            <asp:TextBox ID="PasswordTextBox" CssClass="tibiaInput3" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>

            <asp:hyperlink id="HyperLink1" runat="server" href="poh.aspx" class="invisibleHyperLink" text="">Forgot account name and/or password</asp:hyperlink>
            <br />
            <asp:hyperlink id="HyperLink2" runat="server" href="rejestracja.aspx" class="invisibleHyperLink" text="">Create new account</asp:hyperlink>

            <asp:Button id="Button1" runat="server" text="Login" class="logowanieButton" OnClick="Button1_Click" />
        </div>
    </div>

    


</asp:Content>

