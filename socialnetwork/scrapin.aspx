<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="scrapin.aspx.cs" Inherits="socialnetwork.scrapin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">

 <asp:GridView ID="scrapingrid" runat="server" Width="575px"  
        AutoGenerateColumns="False" Height="16px" 
        OnRowCommand="scrapingrid_OnRowCommand" HorizontalAlign="Center" style="margin-top:500px">
    <Columns>
        
        <asp:BoundField DataField="smsgfrom" HeaderText="friend" />
        <asp:BoundField DataField="sdetails" HeaderText="scrap" />
        <asp:TemplateField>
         <ItemTemplate>
         <asp:Button ID="btndelete" runat="server"  Text="Delete" CommandArgument='<%#Eval("sid")%>' CommandName="Delete" />
         </ItemTemplate>
         </asp:TemplateField>
         </Columns>
   
    </asp:GridView>
</asp:Content>
