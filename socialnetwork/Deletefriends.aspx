<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="Deletefriends.aspx.cs" Inherits="socialnetwork.Deletefriends" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server"> 
<asp:GridView ID="friendsgrid" runat="server" AutoGenerateColumns="false" 
        Width="578px" OnRowCommand="friendsgrid_OnRowCommand" 
        style="margin-top:500px; margin-left:287px;" >
    <Columns>
        <%--<asp:BoundField DataField="firstname" HeaderText="Friends"/>--%>
        <asp:BoundField DataField="friend" HeaderText="profile"/>
        <asp:TemplateField>
        <ItemTemplate>
        <asp:Button ID="btndelete" runat="server" Text="Delete" CommandArgument='<%#Eval("friend")%>' CommandName="Delete" /></ItemTemplate></asp:TemplateField>
    </Columns>
    </asp:GridView>
</asp:Content>
