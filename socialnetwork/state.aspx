<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="state.aspx.cs" Inherits="socialnetwork.state" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblstate" runat="server" Text="state"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="btnadd" runat="server" onclick="btnadd_Click" Text="Add" />
    
    </div>
    </form>
</body>
</html>
