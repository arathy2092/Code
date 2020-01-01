<%@ Page Title="" Language="C#" MasterPageFile="~/home1.Master" AutoEventWireup="true" CodeBehind="scrap.aspx.cs" Inherits="socialnetwork.scrap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contentbody" runat="server">
    &nbsp;
    <table style="border-style: none; height: 248px; width: 577px">
 <tr>
 <td style="width: 128px; height: 127px;"></td><td style="height: 127px">
 <asp:Label ID="lblscrap" runat="server" Text="Scrap"></asp:Label>
 </td>
 <td style="height: 127px">
 <asp:DropDownList ID="ddlpeople" runat="server" ></asp:DropDownList>
     <br />
 <asp:TextBox ID="txtscrap" runat="server" TextMode="MultiLine"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td></td>
 <td style="width: 128px"></td>
 <td><asp:Button runat="server" ID="btnsend" Text="Send" onclick="btnsend_Click1"/></td>
 </tr>
 
</table>
 <asp:GridView ID="scrapgrid" runat="server" Width="575px"  
        AutoGenerateColumns="False" Height="16px" 
        OnRowCommand="scrapgrid_OnRowCommand" HorizontalAlign="Center">
    <Columns>
        
        <asp:BoundField DataField="smsgto" HeaderText="friend" />
        <asp:BoundField DataField="sdetails" HeaderText="scrap" />
        <asp:TemplateField>
         <ItemTemplate>
         <asp:Button ID="btndelete" runat="server"  Text="Delete" CommandArgument='<%#Eval("sid")%>' CommandName="Delete" />
         </ItemTemplate>
         </asp:TemplateField>
         </Columns>
   
    </asp:GridView>
</asp:Content>
