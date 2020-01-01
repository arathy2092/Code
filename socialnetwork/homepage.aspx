<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="socialnetwork.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">

<asp:GridView ID="newsgrid" runat="server"  
           AutoGenerateColumns="false" Width="917px">
       <Columns>
           <asp:BoundField DataField="anid" HeaderText="NewsId" />
           <asp:BoundField DataField="news" HeaderText="News" />
           <asp:BoundField DataField="newsdate" HeaderText="NewsDate" />
           <asp:BoundField DataField="newsdetails" HeaderText="Newsdetails" />
            </Columns>

   </asp:GridView>
</asp:Content>
