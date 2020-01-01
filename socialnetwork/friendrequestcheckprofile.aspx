<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="friendrequestcheckprofile.aspx.cs" Inherits="socialnetwork.friendrequestcheckprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">
<table style="border-style: groove; border-color: #000000; height: 248px; width: 577px">
<tr><td align="left" style="width: 236px">
<asp:Image  class="profileimg" runat="server" Height="134px" 
        Width="163px"/></td>
   

<td align="left">
Fistname:<asp:Label ID="lblfirstname" runat="server"></asp:Label><br />
    <br />
    
Middlename:<asp:Label ID="lblmiddlename" runat="server"></asp:Label><br />
    <br />
    
Lastname:<asp:Label ID="lbllastname" runat="server"></asp:Label><br />
    <br />
    
Email:<asp:Label ID="lblemail" runat="server"></asp:Label><br />
    <br />
    
City:<asp:Label ID="lblcity" runat="server"></asp:Label><br />
    <br />
    
State:<asp:Label ID="lblstate" runat="server"></asp:Label>
    <br />
    <br />
    <br />
   </td>
</tr>
<tr>
<td align="right">
 <asp:Button runat="server" ID="btnscrap1" Text="Scrap" /></td>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
</tr>
</table>
</asp:Content>
