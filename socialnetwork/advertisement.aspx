<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="advertisement.aspx.cs" Inherits="socialnetwork.advertisement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            height: 275px;
        }
        .style4
        {
            height: 49px;
            width: 72px;
        }
        .style5
        {
            height: 39px;
            width: 72px;
        }
        .style6
        {
            height: 57px;
            width: 72px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contentbody" runat="server">
    <table style="border-style: groove; border-color: #000000; height: 611px; width: 593px">
<tr>
<td style="height: 49px; width: 265px;" align="right">
 <asp:Label ID="lbladvertisment" runat="server" Text="Advertisement"></asp:Label>
</td>
<td class="style4"><asp:TextBox ID="txtadvertisements" runat="server" ></asp:TextBox></td>
</tr>
<tr>
  <td style="height: 49px; width: 265px;" align="right">
 <asp:Label ID="lbldescription" runat="server" Text="Description"></asp:Label>
</td>
<td class="style4"><asp:TextBox ID="txtdescription" runat="server"></asp:TextBox></td>
 </tr>
 <tr>
  <td style="height: 49px; width: 265px;" align="right">
 <asp:Label ID="lbladdtype" runat="server" Text="Addtype"></asp:Label>
</td>
<td class="style4"><asp:TextBox ID="txtaddtype" runat="server" 
        ></asp:TextBox></td>
 </tr>
 
 <tr>
  <td style="height: 39px; width: 265px;" align="right">
 <asp:Label ID="lblphoto" runat="server" Text="Upload Image"></asp:Label>
</td>
<td class="style5"><asp:FileUpload ID="flupphoto" runat="server" 
        ForeColor="#00CCFF" style="margin-left: 0px" /></td>
        <td><asp:Label ID="lblphotoerrormsg" runat="server" ></asp:Label></td>
 </tr>
 <tr>
 <td style="height: 57px; width: 265px;" align="right"></td>
 <td class="style6"><asp:Button runat="server" ID="btnsubmit" Text="Submit" 
         onclick="btnsubmit_Click" /></td>
</tr>
<tr><td colspan="2" class="style3">
    <asp:GridView ID="adgrid" runat="server" Width="251px"  
        AutoGenerateColumns="False" Height="204px" OnRowCommand="advertisementgrid_OnRowCommand">
    <Columns>
        <asp:TemplateField>
        <ItemTemplate>
        <asp:Image runat="server"  Height="80px" Width="80px" ID="img" ImageUrl='<%#Eval("photos")%>'/>
        </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="aid" HeaderText="Advertisement Id" />
        <asp:BoundField DataField="advertisement" HeaderText="Advertisement" />
        <asp:BoundField DataField="adec" HeaderText="Advertisement Description" />
        <asp:BoundField DataField="type" HeaderText="Advertisement Type" />

         <asp:TemplateField>
         <ItemTemplate>
         <asp:Button ID="btndelete" runat="server"  Text="Delete" CommandArgument='<%#Eval("aid")%>' CommandName="Delete" />
         </ItemTemplate>
         </asp:TemplateField>

         </Columns>
   
    </asp:GridView></td>
</tr></table>

</asp:Content>
