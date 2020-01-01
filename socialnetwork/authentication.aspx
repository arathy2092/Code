<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="authentication.aspx.cs" Inherits="socialnetwork.authentication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" runat="server">
<asp:GridView ID="authenticationgrid" runat="server"  AutoGenerateColumns="False" 
        Height="602px" Width="905px" OnRowCommand="authenticationgrid_OnRowCommand" >
    <Columns>
        <asp:BoundField DataField="userid" HeaderText="Userid" />
        <asp:BoundField DataField="status" HeaderText="Status" />
        <asp:TemplateField><ItemTemplate>
        
         <asp:Button ID="btnupdate" runat="server" Text="Update" CommandArgument='<%#Eval("userid")%>' CommandName="Update" />
          </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
</asp:Content>
