<%@ Page Title="ViewState Form" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ViewStateForm.aspx.cs" Inherits="WebFormsIntroTutorial.ViewStateForm" %>
<%--ViewStateMode in Page heading or individual items like textbox or ddl, can cause viewstate to be enabled or disabled or inherited--%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <div><asp:Literal ID="ltPostBack" runat="server"></asp:Literal></div>
    <div class="form-group">
        <label>Name</label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>State</label>
        <asp:DropDownList ID="ddlState" runat="server">
            <asp:ListItem Value="">Select state</asp:ListItem>
            <asp:ListItem Value="solid">Solid</asp:ListItem>
            <asp:ListItem Value="liquid">Liquid</asp:ListItem>
            <asp:ListItem Value="gas">Gas</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="form-group">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
</asp:Content>
