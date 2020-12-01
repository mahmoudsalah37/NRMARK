<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="NRMARKv1.Models.Admin" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text1 {
            height: 18px;
        }
        #Password1 {
            height: 21px;
            width: 169px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:Label ID="Label1" runat="server" Text="User name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <input id="userName" type="text" runat="server" /><br />
        <asp:Label ID="Label2" runat="server" Text="password:"></asp:Label>
&nbsp;<br />
        <input id="Password1" type="password" runat="server" /><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="SignIn" OnClick="Button1_Click" />
    </form>
</body>
</html>
