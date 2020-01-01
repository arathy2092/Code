<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="userad.aspx.cs" Inherits="socialnetwork.userad" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">
    <asp:GridView ID="adgrid" runat="server" Width="251px"  
        AutoGenerateColumns="False" Height="204px" HorizontalAlign="Center" style="margin-top:500px">
    <Columns>
        <asp:TemplateField>
        <ItemTemplate>
        <asp:Image runat="server"  Height="80px" Width="80px" ID="img" ImageUrl='<%#Eval("photos")%>'/>
        </ItemTemplate>
        </asp:TemplateField>
      
        <asp:BoundField DataField="advertisement" HeaderText="Advertisement" />
        <asp:BoundField DataField="adec" HeaderText="Advertisement Description" />
        <asp:BoundField DataField="type" HeaderText="Advertisement Type" />

        
         </Columns>
   
    </asp:GridView>

</asp:Content>
