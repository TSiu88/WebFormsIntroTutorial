<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="WebFormsIntroTutorial.ErrorPage" %>

<%--This page was made as a custom error page which will redirect to if there is an exception and no try/catch block used--%>
<%--Used since yellow screen of death can show info that gives ideas of how to do bad things to site--%>
<%--Need to put custom error page redirect in Web.config file under system.web--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Something went wrong.</h2>
        </div>
    </form>
</body>
</html>
