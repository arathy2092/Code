<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="citygrid.aspx.cs" Inherits="socialnetwork.citygrid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="city_grid" runat="server" AutoGenerateColumns="False" 
            OnRowCommand="citygrid_OnRowCommand">
            <Columns>
                <asp:BoundField HeaderText="stateid" DataField="stateid" />
                <asp:BoundField DataField="statename" HeaderText="statename" />
                <asp:BoundField DataField="cityid" HeaderText="cityid" />
                <asp:BoundField DataField="cityname" HeaderText="cityname" />
                <asp:TemplateField>
                <ItemTemplate>
                 <asp:Button ID="button1" Text="Edit" runat="server" CommandArgument='<%#Eval("cityid")%>' CommandName="Edit" />
                <asp:Button ID="button2" Text="Delete" runat="server" CommandArgument='<%#Eval("cityid")%>' CommandName="Delete" />
                </ItemTemplate></asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
