<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebFormsIntroTutorial.Contact" %>

<%--Validations here are all through javascript in client side code and don't need to take a round trip to server to check if input is valid--%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>

    <div runat="server" id="divMessage">Contact page message</div>
    <%--Added div to create HTML server control here that can use in code behind--%>
    <%--IDs has naming convention of lower camel case with type of element then purpose--%>
    <%--Add example textbox and dropdownlists with submit button and css class to be able to style--%>
    <p class="bg-primary">
        <asp:Literal ID="ltValMessage" runat="server"></asp:Literal>
        <asp:ValidationSummary ID="valSummaryForm" runat="server" ValidationGroup="valForm" DisplayMode="BulletList" HeaderText="Fix the following errors." Visible="false" />
    </p>
    <div>
        <label>Name</label>
        <%--Web server controls prefixed with "asp:"--%>
        <asp:TextBox ID="txtName" CssClass="text-box" runat="server" />
        <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" ValidationGroup="valForm" ErrorMessage="*" Display="Dynamic" />
        <%--Validation Form for required field with just text--%>
        <%--ValidationGroup used for grouping which fields in form should be validated together, esp important if multiple forms on same page w/ required fields in both--%>
    </div>
    <div>
        <label>Email</label>
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="txtEmail" ValidationGroup="valForm" ErrorMessage="Valid email required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" />
        <%--Validation Form for required field with specific regex to ensure it's an email--%>
        <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="txtEmail" ValidationGroup="valForm" ErrorMessage="*" Display="Dynamic" />
        <%--Dynamic ensures space isn't saved for error message when not there (from valid email required)--%>
    </div>
    <div>
        <label>Age</label>
        <asp:TextBox ID="txtAge" runat="server" />
        <asp:RequiredFieldValidator runat="server" ID="rfvAge" ControlToValidate="txtAge" ValidationGroup="valForm" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" ValidationGroup="valForm" Type="Integer" MinimumValue="0" MaximumValue="120" ErrorMessage="Please enter real age." Display="Dynamic"></asp:RangeValidator>
        <%--Range Validator ensures that entered input is within range specified--%>
    </div>
    <div>
        <label>Price</label>
        <asp:TextBox ID="txtPrice" runat="server" />
        <asp:RequiredFieldValidator runat="server" ID="rfvPrice" ControlToValidate="txtPrice" ValidationGroup="valForm" ErrorMessage="*" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="cvPrice" runat="server" ControlToValidate="txtPrice" ValidationGroup="valForm" Operator="DataTypeCheck" Type="Currency" ErrorMessage="Please enter valid price." Display="Dynamic"></asp:CompareValidator>
        <%--Compare Validator ensures that entered input is the correct--%>
    </div>
    <div>
        <label>Dropdown Color</label>
        <asp:DropDownList ID="ddlColor" runat="server">
            <asp:ListItem Text="Choose a Color" Value="" />
            <asp:ListItem Text="Purple" Value="Purple" />
            <asp:ListItem Text="Blue" Value="Blue" />
            <asp:ListItem Text="Red" Value="Red" />
            <asp:ListItem Text="Green" Value="Green" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ID="rfvColor" ControlToValidate="ddlColor" ValidationGroup="valForm" ErrorMessage="*" />
    </div>
    <div>
        <asp:Button ID="btnSubmit" runat="server" ValidationGroup="valForm" Text="Submit Info" OnClick="btnSubmit_Click"/>
    </div>
    <div class="message">
        <asp:Literal ID="ltMessage" runat="server" />
        <%--Gives placeholder to output whatever want to from code behind--%>
    </div>

    <h3>Your contact page.</h3>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>
