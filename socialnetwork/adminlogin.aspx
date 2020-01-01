<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="socialnetwork.adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <link href="Styles/adminloginstyle.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
        .style3
        {
            height: 46px;
        }
        .style4
        {
            height: 48px;
        }
        .style5
        {
            height: 48px;
            width: 168px;
        }
        .style6
        {
            height: 46px;
            width: 168px;
        }
        .style7
        {
            width: 168px;
        }
        .style8
        {
            width: 123px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="adminmain" >
        
        <div class="adminheader">
        <img src="images/2.jpeg" />
        </div>
        <h1 style="color: #FFFFFF">Admin Login</h1>

    <table class="admintable">
    <tr>
    <td class="style4" style="color: #FFFFFF">
     <asp:Label  ID="lblauserid" runat="server" Text="AdminUserid:"></asp:Label>
    </td>
    <td class="style5">
     <asp:TextBox  ID="txtauserid" runat="server"></asp:TextBox>
     </td>
     <td>
     </td>
     
     <td> 
         <asp:Button ID="btnuserlogin" runat="server" ForeColor="Black" 
        Text="User Login" onclick="btnuserlogin_Click" style="margin-left: 89px"  />
    </td>
    </tr>
    <tr>
    <td class="style3" style="color: #FFFFFF" >
     <asp:Label ID="lblapassword" runat="server" Text="Password:"></asp:Label>
     </td>
     <td class="style6">
       <asp:TextBox  ID="txtapassword" runat="server" TextMode="Password"></asp:TextBox>
     </td>
     <td>
      <asp:Label ID="lbladmininvalid" runat="server" ></asp:Label>
     </td>
    </tr>
    
    <tr>
    <td style="color: #FFFFFF"></td>
    <td class="style7" >
     <asp:Button ID="btnalogin" runat="server" ForeColor="Black" 
        Text="Login" onclick="btnalogin_Click"  />
        
    &nbsp;&nbsp;
        
    </td>
    </tr>
    </table>
 
        
    </div>
    </form>
</body>
</html>
