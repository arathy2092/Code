<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stategrid.aspx.cs" Inherits="socialnetwork.stategrid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="state_grid" runat="server" AutoGenerateColumns="False" 
            OnRowCommand="stategrid_OnRowCommand">
            <Columns>
                <asp:BoundField DataField="stateid" HeaderText="stateid" />
                <asp:BoundField DataField="statename" HeaderText="statename" />
               
                <asp:TemplateField>
                <ItemTemplate>
                <asp:Button ID="button1" Text="Edit" runat="server" CommandArgument='<%#Eval("stateid")%>' CommandName="Edit" />
                <asp:Button ID="button2" Text="Delete" runat="server" CommandArgument='<%#Eval("stateid")%>' CommandName="Delete" />
                </ItemTemplate></asp:TemplateField>
               
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
