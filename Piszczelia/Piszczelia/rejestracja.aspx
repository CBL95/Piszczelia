<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="rejestracja.aspx.cs" Inherits="rejestracja" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="rejestracja">

        <asp:TextBox ID="LoginTextBox" CssClass="tibiaInput1" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:TextBox ID="PasswordTextBox" CssClass="tibiaInput2" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="RepeatTextBox" CssClass="tibiaInput2" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="EmailTextBox" CssClass="tibiaInput2" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:TextBox ID="NameTextBox" CssClass="tibiaInput2" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" class="radioRejestracja">
            <asp:ListItem Selected="True" Value="1">Knight</asp:ListItem>
            <asp:ListItem Value="2">Mage</asp:ListItem>
            <asp:ListItem Value="3">Hunter</asp:ListItem>
        </asp:RadioButtonList>

        <br />
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" class="invisibleHyperLink" href="logowanie.aspx">Back to login</asp:HyperLink>
        <asp:Button ID="Button1" runat="server" Text="Register" class="rejestracjaButton" OnClick="Button1_Click" />


    </div>

    <div class="napis" style="color: #fff;">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Account name field is required<br />" ControlToValidate="LoginTextBox"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password field is required<br />" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Repeat password field is required<br />" ControlToValidate="RepeatTextBox"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email field is required<br />" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Character name field is required<br />" ControlToValidate="NameTextBox"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="The passwords not match" ControlToValidate="PasswordTextBox" ControlToCompare="RepeatTextBox"></asp:CompareValidator>
    </div>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:piszczelConnectionString1 %>' InsertCommand="INSERT INTO konto (login, password, email) VALUES (@login, @password, @email);">
        <InsertParameters>
            <asp:ControlParameter ControlID="LoginTextBox" Name="login" PropertyName="Text" />
            <asp:ControlParameter ControlID="PasswordTextBox" Name="password" PropertyName="Text" />
            <asp:ControlParameter ControlID="EmailTextBox" Name="email" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:piszczelConnectionString1 %>' InsertCommand="INSERT INTO character (nickname, user_id, profession_id) VALUES (@nickname, (SELECT MAX(id) FROM konto), @proffession_id);">
        <InsertParameters>
            <asp:ControlParameter ControlID="NameTextBox" Name="nickname" PropertyName="Text" />
            <asp:ControlParameter ControlID="RadioButtonList1" Name="proffession_id" PropertyName="SelectedValue" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

