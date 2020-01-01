<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="photogallery.aspx.cs" Inherits="socialnetwork.photogallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">
<table style="border-style: none; height: 167px; width: 580px">
 <tr>
  <td style="height: 74px; width: 265px;" align="right">
 <asp:Label ID="lblphoto" runat="server" Text="Photo"></asp:Label>
</td>
<td style="height: 74px"><asp:FileUpload ID="flupphoto" runat="server" 
        ForeColor="#00CCFF" style="margin-left: 0px" /></td>
        
 </tr>
 <tr>
 <td></td>
 <td><asp:Label ID="lblphotoerrormsg" runat="server"></asp:Label></td></tr>
 <tr>
  <td style="height: 49px; width: 265px;" align="right">
 <asp:Label ID="lbldescription" runat="server" Text="Description"></asp:Label>
</td>
<td style="height: 49px"><asp:TextBox ID="txtdescription" runat="server"></asp:TextBox></td>
 </tr>
 <tr>
 <td style="height: 57px; width: 265px;" align="right"></td>
 <td style="height: 57px"><asp:Button runat="server" ID="btnsave" Text="Save" 
         onclick="btnsave_Click" /></td>
</tr>
    </table>
<asp:DataList ID="photodatalist" runat="server" RepeatColumns="2" 
        RepeatDirection="Horizontal" Width="580px" HorizontalAlign="Center">
<ItemTemplate>
<asp:Image ID="imgphoto" runat="server"  Height="80px" Width="80px" ImageUrl='<%#Eval("photopath")%>' />
<asp:Label ID="lbldescription" runat="server" Text='<%#Eval("comment")%>'></asp:Label>
</ItemTemplate>
</asp:DataList>
</asp:Content>
