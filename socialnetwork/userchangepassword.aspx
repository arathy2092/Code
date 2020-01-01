<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="userchangepassword.aspx.cs" Inherits="socialnetwork.userchangepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">

<table style="height: 431px; width: 621px;">
<tr>
<td>
</td>
<td style="width: 464px">
<h1 style="color: #FFFFFF">Change Password</h1></td></tr>
<tr>
 <td class="style5" align="right" 
        style="color: #FFFFFF; width: 488px; height: 110px;">
 <asp:Label ID="lblcurrentpassword" runat="server" Text="CurrentPassword"></asp:Label>
 </td>
 <td class="style4" style="height: 110px; width: 464px;">
  <asp:TextBox ID="txtcurrentpassword" runat="server" TextMode="Password" 
         ontextchanged="txtcurrentpassword_TextChanged" AutoPostBack="true"></asp:TextBox>
 </td>
 <td style="height: 110px"> <asp:Label CssClass="c1" ID="lblwrongpassword" runat="server" ></asp:Label>
 </td>
 </tr>
  <tr> <td class="style5" align="right" 
          style="color: #FFFFFF; width: 488px; height: 74px;">
   <asp:Label CssClass="c1" ID="lblNewpassword" runat="server" Text="NewPassword"></asp:Label>
    
   </td>
   <td class="style4" style="width: 464px; height: 74px">
   <asp:TextBox  CssClass="c1" ID="txtNewpassword" runat="server"  TextMode="Password"></asp:TextBox>
   
   </td>
   </tr> 
   <tr> <td class="style5" align="right" 
           style="color: #FFFFFF; width: 488px; height: 82px;">
   <asp:Label CssClass="c1" ID="lblRepassword" runat="server" Text="Re-Password:"></asp:Label>
    
   </td>
   <td class="style4" style="width: 464px; height: 82px">
   <asp:TextBox  CssClass="c1" ID="txtrepassword" runat="server" TextMode="Password"></asp:TextBox>
   
   </td>
   <td style="height: 82px">
   <asp:CompareValidator ID="comparepassword" runat="server" 
              ControlToCompare="txtNewpassword" ControlToValidate="txtrepassword" 
              ErrorMessage="your passwords do not match up!" Display="Dynamic" Height="87px" 
              style="height: 0px" ForeColor="Red"></asp:CompareValidator>
   </td>
   </tr> 
   <tr>
   <td class="style5" align="right" style="color: #FFFFFF; width: 488px;">
   </td>
   <td class="style4" style="width: 464px">
   <asp:Button CssClass="c1" ID="btnsubmit" runat="server" 
           ForeColor="Black" Text="Submit" onclick="btnsubmit_Click" />
   </td></tr> 
   </table>

</asp:Content>
