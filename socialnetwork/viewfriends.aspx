<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="viewfriends.aspx.cs" Inherits="socialnetwork.viewfriends" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">
    <asp:GridView ID="friendsgrid" runat="server" AutoGenerateColumns="False" 
        Width="112px"  OnRowCommand="friendsgrid_OnRowCommand" 
        HorizontalAlign="Center" Height="300px" style="margin-top:500px;">
    <Columns>
        <%--<asp:BoundField DataField="firstname" HeaderText="Friends"/>--%>
        <asp:BoundField DataField="friend" HeaderText="friends" />
       
       
         </Columns>
    </asp:GridView>
 
</asp:Content>
