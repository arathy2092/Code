<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="requestuser.aspx.cs" Inherits="socialnetwork.requestuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">
<table style="border-style: none; height: 131px; width: 570px">
<tr>
<td></td>
<td style="height: 45px; color: #FFFFFF;" align="left" colspan="2">Request User From Here</td></tr>
<tr style="border-style: dotted; border-color: #000000">
<td colspan="2" style="width: 169px"></td>
<td style="height: 54px; width: 268435424px;" align="left">Your User Information Is Listed Below:</td>
</tr>
<tr>
<td colspan="2" style="width: 169px"></td>
<td align="left" style="width: 268435424px">
Firstname:<asp:Label ID="lblfirstname" runat="server" ForeColor="White"></asp:Label><br />
    <br />
Middlename:<asp:Label ID="lblmiddlename" runat="server" ForeColor="White"></asp:Label><br />
    <br />
Lastname:<asp:Label ID="lbllastname" runat="server" ForeColor="White"></asp:Label><br />
    <br />
Email:<asp:Label ID="lbluserid" runat="server" ForeColor="White"></asp:Label><br />
    <br />
City:<asp:Label ID="lblcity" runat="server" ForeColor="White"></asp:Label><br />
    <br />
State:<asp:Label ID="lblstate" runat="server" ForeColor="White"></asp:Label>
    <br />
</td>
</tr>
<tr>
<td align="left" colspan="2" style="width: 169px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    </td>

<td style="width: 268435424px">
<asp:Button ID="btnrequest" runat="server" Text="Request Now" 
        onclick="btnrequest_Click"  />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="Btnclose" runat="server" Text="Close" onclick="Btnclose_Click" />&nbsp;&nbsp;&nbsp;  
    </td>
</tr>
</table>

</asp:Content>
