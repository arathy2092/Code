<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="socialnetwork.changepassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            width: 763px;
        }
        .style6
        {
            width: 455px;
        }
        .style7
        {
            width: 763px;
            height: 108px;
        }
        .style8
        {
            width: 455px;
            height: 108px;
        }
        .style9
        {
            height: 108px;
        }
        .style10
        {
            width: 763px;
            height: 121px;
        }
        .style11
        {
            width: 455px;
            height: 121px;
        }
        .style12
        {
            height: 121px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" runat="server">
    <h1 style=" width: 979px; font-family: Georgia; color: #FFFFFF;" 
        align="center">Change Password</h1>
<table style="height: 449px; width: 833px;">

<tr>
 <td class="style7" align="right" style="color: #FFFFFF; ">
 <asp:Label ID="lblcurrentpassword" runat="server" Text="CurrentPassword"></asp:Label>
 </td>
 <td class="style8">
  <asp:TextBox ID="txtcurrentpassword" runat="server" TextMode="Password" ></asp:TextBox>
 </td>
 <td class="style9"> <asp:Label CssClass="c1" ID="lblwrongpassword" runat="server" ></asp:Label>
 </td>

 </tr>
  <tr> <td class="style5" align="right" style="color: #FFFFFF; ">
   <asp:Label CssClass="c1" ID="lblNewpassword" runat="server" Text="NewPassword"></asp:Label>
    
   </td>
   <td class="style6">
   <asp:TextBox  CssClass="c1" ID="txtNewpassword" runat="server"   TextMode="Password"></asp:TextBox>
   
   </td>
   </tr> 
   <tr> <td class="style10" align="right" style="color: #FFFFFF; ">
   <asp:Label CssClass="c1" ID="lblRepassword" runat="server" Text="Re-Password:"></asp:Label>
    
   </td>
   <td class="style11">
   <asp:TextBox  CssClass="c1" ID="txtrepassword" runat="server" TextMode="Password"></asp:TextBox>
   
   </td>
   <td class="style12">
   <asp:CompareValidator ID="comparepassword" runat="server" 
              ControlToCompare="txtNewpassword" ControlToValidate="txtrepassword" 
              ErrorMessage="your passwords do not match up!" Display="Dynamic" Height="87px" 
              style="height: 0px" ForeColor="Red"></asp:CompareValidator>
   </td>
   </tr> 
   <tr>
   <td class="style5" align="right" style="color: #FFFFFF; ">
   </td>
   <td class="style6">
   <asp:Button CssClass="c1" ID="btnsubmit" runat="server" 
           ForeColor="Black" Text="Submit" onclick="btnsubmit_Click" />
   </td></tr> 
   </table>
</asp:Content>
