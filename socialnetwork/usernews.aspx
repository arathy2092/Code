<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="usernews.aspx.cs" Inherits="socialnetwork.usernews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">
    <asp:GridView ID="newsgrid" runat="server"  
           AutoGenerateColumns="false" Width="706px" Height="319px" 
        HorizontalAlign="Center" style="margin-top:500px">
       <Columns>
       
           <asp:BoundField DataField="news" HeaderText="News" />
           <asp:BoundField DataField="newsdate" HeaderText="NewsDate" />
           <asp:BoundField DataField="newsdetails" HeaderText="Newsdetails" />
            </Columns>

   </asp:GridView>
</asp:Content>
