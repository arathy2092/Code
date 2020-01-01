<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminregister.aspx.cs" Inherits="socialnetwork.adminregister" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        #form1
        {
            height: 1006px;
        }
        .adminregtable
        {
            height: 261px;
            margin-right: 0px;
        }
        .style1
        {
            height: 104px;
        }
        .style2
        {
            height: 104px;
            width: 171px;
        }
        .style3
        {
            width: 114px;
        }
        .style4
        {
            width: 171px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" 
    style="background-image: url('images/bgimage.jpg')">
    
   <div class="adminregmain" >
        
       
        <h1 style="color: #FFFFFF" align="center">&nbsp;</h1>
        <h1 style="color: #FFFFFF" align="center">&nbsp;</h1>
        <h1 style="color: #FFFFFF" align="center">Admin Registration</h1>
        <p style="color: #FFFFFF" align="center">&nbsp;</p>
        <br />

    <table class="adminregtable" align="center">
    <tr>
    <td class="style2" style="color: #FFFFFF">
     <asp:Label  ID="lblauserid" runat="server" Text="AdminUserid:"></asp:Label>
    </td>
    <td class="style1">
     <asp:TextBox  ID="txtauserid" runat="server"></asp:TextBox>
     </td>
    </tr>
    <tr>
    <td class="style4" style="color: #FFFFFF" >
     <asp:Label ID="lblapassword" runat="server" Text="Password:"></asp:Label>
     </td>
     <td class="style3">
       <asp:TextBox  ID="txtapassword" runat="server" TextMode="Password"></asp:TextBox>
     </td>
    </tr>
    
    <tr>
    <td style="color: #FFFFFF" class="style4"></td>
    <td >
     <asp:Button ID="btnsignup" runat="server" ForeColor="Black" 
        Text="signup" onclick="btnsignup_Click"  />
        
    &nbsp;&nbsp;
        
    </td>
    </tr>
    </table>
 
    </div>
    </form>
</body>
</html>
