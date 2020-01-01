<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="adminfeedback.aspx.cs" Inherits="socialnetwork.adminfeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" runat="server">
<asp:GridView ID="adminfeedbackgrid" runat="server" AutoGenerateColumns="False" OnRowCommand="adminfeedback_OnRowCommand">
    <Columns>
        <asp:BoundField DataField="fid" HeaderText="FeedbackId" />
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="address" HeaderText="Address" />
        <asp:BoundField DataField="city" HeaderText="City" />
        <asp:BoundField DataField="state" HeaderText="State" />
        <asp:BoundField DataField="mobile" HeaderText="Mobile" />
        <asp:BoundField DataField="fdate" HeaderText="FeedbackDate" />
        <asp:BoundField DataField="feedback" HeaderText="Feedback" />
        <asp:TemplateField>
        <ItemTemplate>
          <asp:Button ID="btndelete" runat="server"  Text="Delete" CommandArgument='<%#Eval("fid")%>' CommandName="Delete" />
        </ItemTemplate></asp:TemplateField> 
    </Columns>
</asp:GridView>
</asp:Content>
