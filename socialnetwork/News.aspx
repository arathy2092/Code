<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="socialnetwork.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            height: 26px;
            width: 343px;
        }
        .style4
        {
            width: 343px;
        }
        .style5
        {
            height: 26px;
            width: 162px;
        }
        .style6
        {
            width: 543px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" runat="server">
<table style="height: 449px; width: 960px;">
<tr>
<td style="color: #FFFFFF; " class="style5">
</td>
<td colspan="2" class="style3">
<h1 style="text-align:center; width: 97px; font-family: Georgia; color: #FFFFFF;">News</h1>
</td>
</tr>

<tr>
 <td class="style5" align="right" style="color: #FFFFFF; ">
 <asp:Label ID="lblnews" runat="server" Text="News"></asp:Label>
 </td>
 <td class="style4">
  <asp:TextBox ID="txtnews" runat="server"></asp:TextBox>
 </td>
 </tr>
  <tr> <td class="style5" align="right" style="color: #FFFFFF; ">
   &nbsp;
   <asp:Label CssClass="c1" ID="lbldate" runat="server" Text="Date"></asp:Label>
    
   </td>
   <td class="style4">
   <asp:TextBox  CssClass="c1" ID="txtdate" runat="server" TextMode="Date" dth="169px"></asp:TextBox>
   
   </td>
   </tr> 
   <tr> <td class="style5" align="right" style="color: #FFFFFF; ">
   <asp:Label CssClass="c1" ID="lblnewsdetail" runat="server" Text="News Detail:"></asp:Label>
    
   </td>
   <td class="style4">
   <asp:TextBox  CssClass="c1" ID="txtnewsdetail" runat="server" Width="169px" TextMode="MultiLine"></asp:TextBox>
   
   </td>
   </tr> 
   <tr>
   <td class="style5" align="right" style="color: #FFFFFF; ">
   </td>
   <td class="style4">
   <asp:Button CssClass="c1" ID="btnpsend" runat="server" 
           ForeColor="Black" Text="Send" onclick="btnpsend_Click" />
   </td></tr> 
   <tr>
   <td class="style6" colspan="2"><asp:GridView ID="newsgrid" runat="server"  
           AutoGenerateColumns="false" Width="917px" OnRowCommand="newsgrid_OnRowCommand">
       <Columns>
           <asp:BoundField DataField="anid" HeaderText="NewsId" />
           <asp:BoundField DataField="news" HeaderText="News" />
           <asp:BoundField DataField="newsdate" HeaderText="NewsDate" />
           <asp:BoundField DataField="newsdetails" HeaderText="Newsdetails" />
           <asp:TemplateField>
           <ItemTemplate>
            <asp:Button ID="btndelete" runat="server"  Text="Delete" CommandArgument='<%#Eval("anid")%>' CommandName="Delete" />
           </ItemTemplate></asp:TemplateField>
       </Columns>

   </asp:GridView>
   </td></tr>
</table>
</asp:Content>
